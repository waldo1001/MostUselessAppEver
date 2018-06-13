codeunit 50105 "CreatePallet Meth"
{
    procedure CreatePallet(var Item: Record Item; HideDialog: Boolean);
    var
        Handled : Boolean;
    begin
        if not ConfirmCreatePallet(Item,HideDialog) then exit;

        OnBeforeCreatePallet(Item, Handled);

        DoCreatePallet(Item,Handled);

        OnAfterCreatePallet();

        AckCreatePallet(Item,HideDialog);
    end;

    local procedure DoCreatePallet(var Item: Record Item;var Handled: Boolean);
    var
        TheRecord: Record item;
    begin
        if Handled then
            exit;

        Initialize(TheRecord);
        DoCreate(TheRecord);
    end;

    local procedure Initialize(var TheRecord: Record Item)
    begin
        TheRecord.INIT();
    end;

    local procedure DoCreate(var TheRecord: Record Item)
    begin
        message('created');
    end;

    local procedure ConfirmCreatePallet(var Item: Record Item; HideDialog: Boolean): Boolean
    var
        AreYouSure: Label 'Are you sure?';
    begin
        if HideDialog then exit(true);

        exit(Confirm(AreYouSure));
    end;
    local procedure AckCreatePallet(var Item: Record Item; HideDialog: Boolean)
    var
        Success: Label 'Success!';
    begin
        if HideDialog then exit;

        message(Success);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCreatePallet(var Item: Record Item; var Handled : Boolean);
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterCreatePallet();
    begin
    end;
}