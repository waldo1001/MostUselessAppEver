codeunit 50101 "Editing Hacks Meth"
{
    trigger OnRun();
    begin
    end;

    procedure EditingHacks();
    var
        Handled: Boolean;
    begin
        OnBeforeEditingHacks(Handled);

        DoEditingHacks(Handled);

        OnAfterEditingHacks;
    end;

    local procedure DoEditingHacks(var Handled: Boolean);
    begin
        IF Handled THEN
            EXIT;

    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeEditingHacks(var Handled: Boolean);
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterEditingHacks();
    begin
    end;
}