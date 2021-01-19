codeunit 50148 "WLD LoadTestfields"
{
    Subtype = Test;

    [Test]
    procedure NoLoadFields()
    var
        GLEntry: Record "G/L Entry";
        i: Integer;
    begin
        for i := 0 to 100000 do begin
            SelectLatestVersion();

            GLEntry.FindSet();
        end;
    end;

    [Test]
    procedure LoadFieldsNoTableExtension()
    var
        GLEntry: Record "G/L Entry";
        i: Integer;
    begin

        for i := 0 to 100000 do begin
            SelectLatestVersion();

            GLEntry.SetLoadFields(Quantity);
            GLEntry.FindSet();
        end;
    end;

    [Test]
    procedure LoadFieldFromTableExtension()
    var
        GLEntry: Record "G/L Entry";
        i: Integer;
    begin
        GLEntry.SetLoadFields("WLD SomeBigTextField");

        for i := 0 to 100000 do begin
            SelectLatestVersion();

            GLEntry.FindSet();
        end;
    end;
}