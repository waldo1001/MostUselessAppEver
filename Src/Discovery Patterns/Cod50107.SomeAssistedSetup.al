codeunit 50107 "Some AssistedSetup"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Assisted Setup", 'OnRegister', '', false, false)]
    local procedure AddExtensionAssistedSetup_OnRegisterAssistedSetup();
    var
        AssistedSetup: Codeunit "Assisted Setup";
        CurrentGlobalLanguage: Integer;
        WizardTxt: label 'Text in Assited Setup List';
    begin
        CurrentGlobalLanguage := GlobalLanguage();
        AssistedSetup.Add(GetAppId(), GetPageId(), WizardTxt, "Assisted Setup Group"::Extensions);
        GLOBALLANGUAGE(1033);
        AssistedSetup.AddTranslation(GetAppId(), GetPageId(), 1033, WizardTxt);

        UpdateStatus();
    end;

    //TODO: remove the following subscriber if not necessary to run
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Assisted Setup", 'OnReRunOfCompletedSetup', '', false, false)]
    local procedure OnReRunOfCompletedSetup(ExtensionId: Guid; PageID: Integer; var Handled: Boolean)
    var
        SetupAlreadyDoneQst: Label 'This setup is already done. Do you want to open the setup page instead?';
    begin
        if ExtensionId <> GetAppId() then exit;
        if PageID <> GetPageId() then exit;

        if Confirm(SetupAlreadyDoneQst, true) then
            Page.Run(GetPageId()); //TODO: Change this to the page to be changed

        Handled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Assisted Setup", 'OnAfterRun', '', false, false)]
    local procedure OnAfterRunOfSetup(ExtensionID: Guid; PageID: Integer)
    begin
        if ExtensionId <> GetAppId() then exit;
        if PageID <> GetPageId() then exit;

        //TODO: if not necessary, don't use it 
    end;

    procedure UpdateStatus()
    var
        Rec: Record "Just Some Table";
        AssistedSetup: Codeunit "Assisted Setup";
    begin
        if not Rec.Get() then exit;

        if Rec.Description.ToLower().EndsWith('waldo.be') then
            AssistedSetup.Complete(GetAppId(), GetPageId());
    end;

    local procedure GetAppId(): Guid
    var
        EmptyGuid: Guid;
        Info: ModuleInfo;
    begin
        if Info.Id() = EmptyGuid then
            NavApp.GetCurrentModuleInfo(Info);
        exit(Info.Id());
    end;

    local procedure GetPageId(): Integer
    begin
        exit(page::"SomeWizard Wizard");
    end;

    //TODO: Call "SomeAssistedSetup.UpdateStatus(); in case the wizard is run without the assisted setup.  It should call the "UpdateStatus" of this codeunit.
}

