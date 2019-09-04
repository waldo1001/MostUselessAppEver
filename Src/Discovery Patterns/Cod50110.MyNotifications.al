codeunit 50110 MyNotifications
{


    [EventSubscriber(ObjectType::Page, Page::"Sales Order", 'OnOpenPageEvent', '', false, false)]
    local procedure CreditLimitNotificationOnOpenSalesOrder(var Rec: Record "Sales Header")
    var
        Customer: Record Customer;
        MyNotification: Notification;
        MyNotifications: Record "My Notifications";
    begin
        IF Rec."Sell-to Customer No." = '' THEN
            EXIT;

        Customer.GET(Rec."Sell-to Customer No.");
        IF Customer."Credit Limit (LCY)" = 0 THEN
            EXIT;

        IF NOT MyNotifications.IsEnabledForRecord(GetMyNotificationID(), Customer) THEN
            EXIT;

        Customer.CalcFields("Balance (LCY)");
        IF Customer."Balance (LCY)" > Customer."Credit Limit (LCY)" THEN BEGIN
            MyNotification.Id := GetMyNotificationID();
            MyNotification.Message := 'The balance of this customer is larger than the credit limit';
            MyNotification.Scope := NotificationScope::LocalScope;
            MyNotification.SetData('CustNo', Customer."No.");
            MyNotification.AddAction('Open Customer Card', Codeunit::MyNotifications, 'OpenCustomer');
            MyNotification.Send();
        END;
    end;

    procedure OpenCustomer(MyNotification: Notification)
    var
        Customer: Record 18;
    begin
        Customer.GET(MyNotification.GETDATA('CustNo'));
        PAGE.RUN(PAGE::"Customer Card", Customer);
    end;

    local procedure GetMyNotificationID(): Guid
    begin
        EXIT('f8551282-55a9-4624-8880-df89589c4a9f');
    end;

    [EventSubscriber(ObjectType::Page, Page::"My Notifications", 'OnInitializingNotificationWithDefaultState', '', false, false)]
    local procedure "MyNotifications.OnInitializingNotificationWithDefaultState"()
    var
        MyNotifications: Record "My Notifications";
        NotificationName: label 'Notification Name', maxlength = 128, locked = true;
        DescriptionText: label 'Description Text', locked = true;
    begin
        MyNotifications.InsertDefaultWithTableNum(GetMyNotificationID(),
                                                  NotificationName,
                                                  DescriptionText,
                                                  Database::Customer);
    end;

    //Do the following to check whether the notification needs to be sent:
    //declare a local variable: "MyNotifications" 
    //IF NOT MyNotifications.IsEnabledForRecord(GetMyNotificationID,Customer) THEN EXIT;

}