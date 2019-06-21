codeunit 50510 "TST Assert"
{
    trigger OnRun();
    begin
    end;

    var
        IsTrueFailedMsg: Label 'Assert.IsTrue failed. %1';
        IsFalseFailedMsg: Label 'Assert.IsFalse failed. %1';
        AreEqualFailedMsg: Label 'Assert.AreEqual failed. Expected:<%1> (%2). Actual:<%3> (%4). %5.';
        AreNotEqualFailedMsg: Label 'Assert.AreNotEqual failed. Expected any Value except:<%1> (%2). Actual:<%3> (%4). %5.';
        AreNearlyEqualFailedMsg: Label 'Assert.AreNearlyEqual failed. Expected a difference no greater than <%1> between expected Value <%2> and actual Value <%3>. %4';
        AreNotNearlyEqualFailedMsg: Label 'Assert.AreNotNearlyEqual failed. Expected a difference greater than <%1> between expected Value <%2> and actual Value <%3>. %4';
        RecordsAreEqualExceptCertainFieldsErr: Label 'Assert.RecordsAreEqualExceptCertainFields failed. Expected the records to match. Difference found in <%1>. Left Value <%2>, Right Value <%3>. %4';
        FailFailedMsg: Label 'Assert.Fail failed. %1';
        TableIsEmptyErr: Label 'Assert.TableIsEmpty failed. Table <%1> with filter <%2> must not contain records.';
        TableIsNotEmptyErr: Label 'Assert.TableIsNotEmpty failed. Table <%1> with filter <%2> must contain records.';
        KnownFailureMsg: Label 'Known failure: see VSTF Bug #%1.';
        ExpectederrorFailed: Label 'Assert.Expectederror failed. Expected: %1. Actual: %2.';
        ExpectederrorCodeFailed: Label 'Assert.ExpectederrorCode failed. Expected: %1. Actual: %2. Actual error message: %3.';
        ExpectedMessageFailedErr: Label 'Assert.ExpectedMessage failed. Expected: %1. Actual: %2.';
        RecordCountErr: Label 'Assert.RecordCount failed. Expected Number of %1 entries: %2. Actual: %3.';
        UnsupportedTypeErr: Label 'Equality assertions only support Boolean, Option, Integer, BigInteger, Decimal, Code, Text, Date, DateFormula, Time, Duration, and DateTime Values. Current Value:%1.';
        RecordNotFounderrorCode: Label 'DB:RecordNotFound';
        RecordAlreadyExistserrorCode: Label 'DB:RecordExists';
        RecordNothingInsideFiltererrorCode: Label 'DB:NothingInsideFilter';
        AsserterrorMsg: Label 'Expected error %1 actual %2';
        PrimRecordNotFounderrorCode: Label 'DB:PrimRecordNotFound';
        NoFiltererrorCode: Label 'DB:NoFilter';
        errorHasNotBeenThrownErr: Label 'The error has not been thrown.';
        TextEndsWithErr: Label 'Assert.TextEndsWith failed. The text <%1> must end with <%2>';
        TextEndSubstringIsBlankErr: Label 'Substring must not be blank.';

    procedure IsTrue(Condition: Boolean; Msg: Text);
    begin
        if not Condition then
            error(IsTrueFailedMsg, Msg)
    end;

    procedure IsFalse(Condition: Boolean; Msg: Text);
    begin
        if Condition then
            error(IsFalseFailedMsg, Msg)
    end;

    procedure AreEqual(Expected: Variant; Actual: Variant; Msg: Text);
    begin
        if not Equal(Expected, Actual) then
            error(AreEqualFailedMsg, Expected, TypeNameOf(Expected), Actual, TypeNameOf(Actual), Msg)
    end;

    procedure AreNotEqual(Expected: Variant; Actual: Variant; Msg: Text);
    begin
        if Equal(Expected, Actual) then
            error(AreNotEqualFailedMsg, Expected, TypeNameOf(Expected), Actual, TypeNameOf(Actual), Msg)
    end;

    procedure AreNearlyEqual(Expected: Decimal; Actual: Decimal; Delta: Decimal; Msg: Text);
    begin
        if ABS(Expected - Actual) > ABS(Delta) then
            error(AreNearlyEqualFailedMsg, Delta, Expected, Actual, Msg)
    end;

    procedure AreNotNearlyEqual(Expected: Decimal; Actual: Decimal; Delta: Decimal; Msg: Text);
    begin
        if ABS(Expected - Actual) <= ABS(Delta) then
            error(AreNotNearlyEqualFailedMsg, Delta, Expected, Actual, Msg)
    end;

    procedure Fail(Msg: Text);
    begin
        error(FailFailedMsg, Msg)
    end;

    procedure RecordIsEmpty(RecVariant: Variant);
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(RecVariant);
        RecRefIsEmpty(RecRef);
    end;

    procedure RecordIsNotEmpty(RecVariant: Variant);
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(RecVariant);
        RecRefIsNotEmpty(RecRef);
    end;

    procedure TableIsEmpty(TableNo: Integer);
    var
        RecRef: RecordRef;
    begin
        RecRef.Open(TableNo);
        RecRefIsEmpty(RecRef);
        RecRef.Close();
    end;

    procedure TableIsNotEmpty(TableNo: Integer);
    var
        RecRef: RecordRef;
    begin
        RecRef.Open(TableNo);
        RecRefIsNotEmpty(RecRef);
        RecRef.Close();
    end;

    local procedure RecRefIsEmpty(var RecRef: RecordRef);
    begin
        if not RecRef.IsEmpty() then
            error(TableIsEmptyErr, RecRef.Caption(), RecRef.GetFilters());
    end;

    local procedure RecRefIsNotEmpty(var RecRef: RecordRef);
    begin
        if RecRef.IsEmpty() then
            error(TableIsNotEmptyErr, RecRef.Caption(), RecRef.GetFilters());
    end;

    procedure RecordCount(RecVariant: Variant; ExpectedCount: Integer);
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(RecVariant);
        if ExpectedCount <> RecRef.Count() then
            error(RecordCountErr, RecRef.Caption(), ExpectedCount, RecRef.Count());
        RecRef.Close();
    end;

    procedure KnownFailure(Expected: Text; WorkItemNo: Integer);
    begin
        Expectederror(Expected);
        error(KnownFailureMsg, WorkItemNo)
    end;

    procedure Expectederror(Expected: Text);
    begin
        if (GETLASTerrorTEXT() = '') and (Expected = '') then
            if GETLASTerrorCALLSTACK() = '' then
                error(errorHasNotBeenThrownErr);
        if Expected <> '' then
            if STRPOS(GETLASTerrorTEXT(), Expected) = 0 then
                error(ExpectederrorFailed, Expected, GETLASTerrorTEXT());
    end;

    procedure ExpectederrorCode(Expected: Text);
    begin
        if STRPOS(GetLastErrorCode(), Expected) = 0 then
            error(ExpectederrorCodeFailed, Expected, GetLastErrorCode(), GETLASTerrorTEXT());
    end;

    procedure ExpectedMessage(Expected: Text; Actual: Text);
    begin
        if STRPOS(Actual, Expected) = 0 then
            error(ExpectedMessageFailedErr, Expected, Actual);
    end;

    procedure IsDataTypeSupported(Value: Variant): Boolean;
    begin
        exit(Value.IsBoolean() or
          Value.IsOption() or
          Value.IsInteger() or
          Value.ISDECIMAL() or
          Value.ISTEXT() or
          Value.IsCode() or
          Value.ISDATE() or
          Value.IsDateTime() or
          Value.IsDateFormula() or
          Value.IsGuid() or
          Value.IsDuration() or
          Value.IsRecordID() or
          Value.IsBigInteger() or
          Value.IsChar() or
          Value.IsTime());
    end;

    procedure TextEndsWith(OriginalText: Text; Substring: Text);
    var
        errorMessage: Text;
    begin
        if Substring = '' then
            error(TextEndSubstringIsBlankErr);
        errorMessage := StrSubstNo(TextEndsWithErr, OriginalText, Substring);
        AreEqual(STRLEN(OriginalText) - STRLEN(Substring) + 1, STRPOS(OriginalText, Substring), errorMessage);
    end;

    local procedure TypeOf(Value: Variant): Integer;
    var
        "Field": Record "Field";
    begin
        case true of
            Value.IsBoolean():
                exit(Field.Type::Boolean);
            Value.IsOption() or Value.IsInteger() or Value.IsByte():
                exit(Field.Type::Integer);
            Value.IsBigInteger():
                exit(Field.Type::BigInteger);
            Value.ISDECIMAL():
                exit(Field.Type::Decimal);
            Value.ISTEXT() or Value.IsCode() or Value.IsChar() or Value.IsTextConstant():
                exit(Field.Type::Text);
            Value.ISDATE():
                exit(Field.Type::Date);
            Value.IsTime():
                exit(Field.Type::Time);
            Value.IsDuration():
                exit(Field.Type::Duration);
            Value.IsDateTime():
                exit(Field.Type::DateTime);
            Value.IsDateFormula():
                exit(Field.Type::DateFormula);
            Value.IsGuid():
                exit(Field.Type::GUID);
            Value.IsRecordID():
                exit(Field.Type::RecordID);
            else
                error(UnsupportedTypeErr, UnsupportedTypeName(Value))
        end
    end;

    local procedure TypeNameOf(Value: Variant): Text;
    var
        "Field": Record "Field";
    begin
        Field.Type := TypeOf(Value);
        exit(Format(Field.Type));
    end;

    local procedure UnsupportedTypeName(Value: Variant): Text;
    begin
        case true of
            Value.IsRecord():
                exit('Record');
            Value.IsRecordRef():
                exit('RecordRef');
            Value.ISFIELDREF():
                exit('FieldRef');
            Value.IsCodeunit():
                exit('Codeunit');
            Value.IsAutomation():
                exit('Automation');
            Value.ISFILE():
                exit('File');
        end;
        exit('Unsupported Type');
    end;

    procedure Compare(Left: Variant; Right: Variant): Boolean;
    begin
        exit(Equal(Left, Right))
    end;

    local procedure Equal(Left: Variant; Right: Variant): Boolean;
    begin
        if IsNumber(Left) and IsNumber(Right) then
            exit(EqualNumbers(Left, Right));

        exit((TypeOf(Left) = TypeOf(Right)) and (Format(Left, 0, 2) = Format(Right, 0, 2)))
    end;

    local procedure EqualNumbers(Left: Decimal; Right: Decimal): Boolean;
    begin
        exit(Left = Right)
    end;

    local procedure IsNumber(Value: Variant): Boolean;
    begin
        exit(Value.ISDECIMAL() or Value.IsInteger() or Value.IsChar())
    end;

    procedure VerifyFailure(expectederrorCode: Text; failureText: Text);
    var
        errorCode: Text;
    begin
        errorCode := GetLastErrorCode();

        IsTrue(errorCode = expectederrorCode, failureText);
        CLEARLASTerror();
    end;

    procedure AssertRecordNotFound();
    begin
        VerifyFailure(RecordNotFounderrorCode, StrSubstNo(AsserterrorMsg, RecordNotFounderrorCode, GetLastErrorCode()));
    end;

    procedure AssertRecordAlreadyExists();
    begin
        VerifyFailure(RecordAlreadyExistserrorCode, StrSubstNo(AsserterrorMsg, RecordAlreadyExistserrorCode, GetLastErrorCode()));
    end;

    procedure AssertNothingInsideFilter();
    begin
        VerifyFailure(RecordNothingInsideFiltererrorCode, StrSubstNo(AsserterrorMsg, RecordNothingInsideFiltererrorCode, GetLastErrorCode()));
    end;

    procedure AssertNoFilter();
    begin
        VerifyFailure(NoFiltererrorCode, StrSubstNo(AsserterrorMsg, NoFiltererrorCode, GetLastErrorCode()));
    end;

    procedure AssertPrimRecordNotFound();
    begin
        VerifyFailure(PrimRecordNotFounderrorCode, StrSubstNo(AsserterrorMsg, PrimRecordNotFounderrorCode, GetLastErrorCode()));
    end;

    procedure RecordsAreEqualExceptCertainFields(var RecordRefLeft: RecordRef; var RecordRefRight: RecordRef; var TempFieldToIgnore: Record "Field" temporary; Msg: Text): Boolean;
    var
        LeftFieldRef: FieldRef;
        RightFieldRef: FieldRef;
        i: Integer;
    begin
        // Records <Left> and <Right> are considered equal when each (Normal) <Left> field
        // has the same Value as the <Right> field with the same index.
        // Note that for performance reasons this function does not take into acCount,
        // whether the two records have the same Number of fields.
        // It assumes that the records belong to the same table.

        for i := 1 to RecordRefLeft.FieldCount() do begin
            LeftFieldRef := RecordRefLeft.FieldIndex(i);
            if Format(LeftFieldRef.Class()) = 'Normal' then begin
                RightFieldRef := RecordRefRight.FieldIndex(i);

                if not TempFieldToIgnore.GET(RecordRefLeft.Number(), LeftFieldRef.Number()) then
                    if LeftFieldRef.Value() <> RightFieldRef.Value() then
                        error(RecordsAreEqualExceptCertainFieldsErr, LeftFieldRef.NAME(), LeftFieldRef.Value(), RightFieldRef.Value(), Msg);
            end;
        end;
        exit(true);
    end;
}

