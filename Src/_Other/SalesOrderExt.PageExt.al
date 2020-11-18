pageextension 50104 "WLD SalesOrderExt" extends "Sales Order"
{
    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        SalesHeader: Record "Sales Header";
    begin
        If Confirm('Are you sure, dude?') then
            exit(true)
        else
            exit(false);

        rec.ConfirmCloseUnposted()
    end;
}