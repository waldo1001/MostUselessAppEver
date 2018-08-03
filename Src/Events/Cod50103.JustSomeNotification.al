codeunit 50103 "Just Some Notification"
{
    trigger OnRun();
    begin
    end;

    [EventSubscriber(ObjectType::Table, 18, 'OnAfterInsertEvent', '', false, false)]
    local procedure ShowNotification();
    var
        MyNotification: Notification;
    begin
        //create guid
        MyNotification.Id := '';
        MyNotification.Message('Just Some Message');
        MyNotification.send();
    end;

}