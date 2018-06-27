codeunit 50120 "Debug on Error"
{
    trigger OnRun();
    begin
    end;
    
    [EventSubscriber(ObjectType::Codeunit, 40, 'OnAfterLogInStart', '', false, false)]
    local procedure JustThrowAnError();
    begin
        //error('Some error for the debugger to break');
    end;
}
