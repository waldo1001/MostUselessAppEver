codeunit 50128 "WLD Waldo App Area Mgt"
{
    [EventSubscriber(ObjectType::Codeunit, codeunit::"Application Area Mgmt.", 'OnGetEssentialExperienceAppAreas', '', false, false)]
    procedure RegisterExampleExtension_OnGetSuiteExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup");
    begin
        TempApplicationAreaSetup."WLD Waldo App Area" := true;

        //Modify other app areas here
        //TempApplicationAreaSetup."Fixed Assets" := false;
    end;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"Application Area Mgmt.", 'OnValidateApplicationAreas', '', false, false)]
    procedure VerifyAppAreas_OnValidateAppAreas(ExperienceTierSetup: Record "Experience Tier Setup"; TempApplicationAreaSetup: Record "Application Area Setup");
    begin
        if ExperienceTierSetup.Essential then
            if not TempApplicationAreaSetup."WLD Waldo App Area" then
                error('Waldo App Area should be part of "Essential" in order for the Example Extension to work.')
    end;

    procedure IsExampleAppAreaEnabled(): Boolean;
    var
        AppAreaSetup: record "Application Area Setup";
    begin
        if AppAreaSetup.FindFirst() then
            exit(AppAreaSetup."WLD Waldo App Area");
    end;

    procedure EnableExampleAppArea();
    var
        AppAreaSetup: record "Application Area Setup";
    begin
        if Session.GetCurrentModuleExecutionContext() <> ExecutionContext::Install then exit;

        if AppAreaSetup.FindFirst() then begin
            AppAreaSetup."WLD Waldo App Area" := true;
            AppAreaSetup.Modify();
        end;
    end;
}