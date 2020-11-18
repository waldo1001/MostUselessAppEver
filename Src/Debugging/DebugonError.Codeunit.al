codeunit 50120 "WLD Debug on Error"
{
    trigger OnRun();
    begin
    end;

    //[EventSubscriber(ObjectType::Page, 22, 'OnAfterActionEvent', 'NewReminder', false, false)]
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', false, false)]
    local procedure JustThrowAnError();
    begin
        //error('Some error for the debugger to break');
    end;
}
