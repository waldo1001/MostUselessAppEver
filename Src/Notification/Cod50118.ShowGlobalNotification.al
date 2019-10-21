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
        exit('0bb784d4-27f6-47b6-a0c9-773e40251a58');
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