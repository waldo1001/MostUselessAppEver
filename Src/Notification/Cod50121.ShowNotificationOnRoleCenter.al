codeunit 50121 "ShowNotificationOnRoleCenter"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Conf./Personalization Mgt.", 'OnRoleCenterOpen', '', true, true)]
    local procedure ShowJustSomeNotification()
    var
        myNotification: Notification;
        JustSomeTable: Record "Just Some Table";
        MyNotifications: Record "My Notifications";
    begin
        IF NOT MyNotifications.IsEnabledForRecord(GetNotificationId(), JustSomeTable) THEN EXIT;

        myNotification.Id := GetNotificationId();
        myNotification.Message := 'Just Some Notification';
        myNotification.AddAction('Some Action', Codeunit::ShowNotificationOnRoleCenter, 'SomeAction');
        myNotification.Send();
    end;

    procedure SomeAction(theNotification: Notification)
    begin
        Message('you pressed "Some Action"');
    end;

    local procedure GetNotificationId(): Guid
    begin
        exit('f8c7b763-fde2-4a2c-92d7-176ba69d9dcb');
    end;

    [EventSubscriber(ObjectType::Page, Page::"My Notifications", 'OnInitializingNotificationWithDefaultState', '', false, false)]
    local procedure "MyNotifications.OnInitializingNotificationWithDefaultState"()
    var
        MyNotifications: Record "My Notifications";
        NotificationName: label 'Just Some Notification', maxlength = 128, locked = true;
        DescriptionText: label 'Just Some Notification', locked = true;
    begin
        MyNotifications.InsertDefaultWithTableNum(GetNotificationId(),
                                                NotificationName,
                                                DescriptionText,
                                                Database::"Just Some Table");
    end;
}