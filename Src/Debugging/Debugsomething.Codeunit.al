// F5: Run with debugger
// CTRL+F5: Run Without Debugger

codeunit 50106 "WLD Debug something"
{
    trigger OnRun();
    begin
    end;
    
    [EventSubscriber(ObjectType::Codeunit, codeunit::LogInManagement, 'OnAfterLogInStart', '', false, false)]
    local procedure StartSillyLoop();
    var
        i: Integer;
        sillyvar: Integer;
    begin
        for i := 0 to 100 do begin
            SillyAssign(sillyvar, i);
        end;
    end;
    local procedure SillyAssign(var variable:Integer;value:Integer);
    begin
        variable := value;
    end;
}