codeunit 50118 "ShowGlobalNotification"
{

    //[EventSubscriber(ObjectType::Codeunit, Codeunit::"Conf./Personalization Mgt.", 'OnRoleCenterOpen', '', true, true)]
    local procedure ShowJustSomeNotification()
    var
        JustSomeTable: Record "Just Some Table";
        MyNotifications: Record "My Notifications";
        myNotification: Notification;
    begin
        IF NOT MyNotifications.IsEnabledForRecord(GetNotificationId(), JustSomeTable) THEN EXIT;

        myNotification.Id := GetNotificationId();
        myNotification.Scope(NotificationScope::GlobalScope);
        myNotification.Message := 'Just Some Global Notification';
        myNotification.AddAction('Some Global Action', Codeunit::ShowNotificationOnRoleCenter, 'SomeAction');
        myNotification.Send();
    end;

    procedure SomeAction(theNotification: Notification)
    begin
        Message('you pressed "Some Action"');
    end;

    local procedure GetNotificationId(): Guid
    begin
        exit('5c0976a1-ae31-4e69-b50f-a648f6c92bfa');
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