codeunit 50111 "MyServiceConnection"
{
    [EventSubscriber(ObjectType::Table, Database::"Service Connection", 'OnRegisterServiceConnection', '', false, false)]
    local procedure AddSetup_OnRegisterServiceConnection(var ServiceConnection: Record "Service Connection")
    var
        SetupRec: Record "Service Mgt. Setup";
        ServiceName: Label 'Some Service Name', locked = true;
        HostName: Label 'Some Host Name', locked = true;
    begin
        ServiceConnection.InsertServiceConnection(ServiceConnection,
                                                SetupRec.RecordId(),
                                                ServiceName,
                                                HostName,
                                                Page::"Service Mgt. Setup");
    end;
}

