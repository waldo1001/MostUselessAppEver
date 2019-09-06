codeunit 50107 "CompanyInfoAssistedSetup2"
{
    var
        WizardTxt: label 'Text in Assited Setup List';

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Assisted Setup", 'OnRegister', '', false, false)]
    local procedure AddExtensionAssistedSetup_OnRegisterAssistedSetup();
    var
        AssistedSetup: Codeunit "Assisted Setup";
        CurrentGlobalLanguage: Integer;

    begin
        CurrentGlobalLanguage := GlobalLanguage();
        AssistedSetup.Add(GetAppId(), GetPageId(), WizardTxt, "Assisted Setup Group"::Extensions);
        GLOBALLANGUAGE(1033);
        AssistedSetup.AddTranslation(GetAppId(), GetPageId(), 1033, WizardTxt);

        UpdateStatus();
    end;

    local procedure UpdateStatus()
    var
        CompanyInformation: Record "Company Information";
        AssistedSetup: Codeunit "Assisted Setup";
    begin
        if not CompanyInformation.get() then exit;

        if CompanyInformation."Home Page".ToLower().EndsWith('waldo.be') then
            AssistedSetup.Complete(GetAppId(), GetPageId());
    end;

    //TODO: OnAfterRun / Find out where "IsComplete" is used / OnWizard: Complete On Finish Button


    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Assisted Setup", 'OnAfterRun', '', false, false)]
    // local procedure AggregatedAssistedSetup_OnUpdateAssistedSetupStatus(PageID: Integer);
    // var
    //     AssistedSetup: Codeunit "Assisted Setup";
    // begin
    //     if PageId = PAGE::"SomeWizard Wizard" then
    //         AssistedSetup.IsComplete(GetAppId(), page::"SomeWizard Wizard");
    // end;

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
}

