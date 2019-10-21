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
        MyNotification.Id := '113418e2-be17-4c33-b5bb-2fd759831da2';
        MyNotification.Message('Just Some Message');
        MyNotification.send();
    end;

}