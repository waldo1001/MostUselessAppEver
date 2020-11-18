codeunit 50137 "WLD waldoControlPrognoses Meth"
{
    procedure ControlPrognoses(var Cust: Record Customer);
    var
        Handled: Boolean;
    begin
        OnBeforeControlPrognoses(Cust, Handled);

        DoControlPrognoses(Cust, Handled);

        OnAfterControlPrognoses(Cust);
    end;

    local procedure DoControlPrognoses(var Cust: Record Customer; var Handled: Boolean);
    begin
        if Handled then
            exit;



    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeControlPrognoses(var Cust: Record Customer; var Handled: Boolean);
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterControlPrognoses(var Cust: Record Customer);
    begin
    end;
}