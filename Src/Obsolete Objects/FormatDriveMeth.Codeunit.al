codeunit 50138 "WLD FormatDrive Meth"
{
    ObsoleteState = Pending;
    ObsoleteReason = 'Well, you shoudn''t be able to format a drive for al';

    procedure FormateDrive(var Cust: Record Customer);
    var
        Handled: Boolean;
    begin
        OnBeforeFormateDrive(Cust, Handled);

        DoFormateDrive(Cust, Handled);

        OnAfterFormateDrive(Cust);
    end;

    local procedure DoFormateDrive(var Cust: Record Customer; var Handled: Boolean);
    begin
        if Handled then
            exit;

    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeFormateDrive(var Cust: Record Customer; var Handled: Boolean);
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterFormateDrive(var Cust: Record Customer);
    begin
    end;
}