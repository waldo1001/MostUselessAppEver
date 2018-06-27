codeunit 50107 "CompanyInfoAssistedSetup2"
{
    [EventSubscriber(ObjectType::Table, Database::"Aggregated Assisted Setup", 'OnRegisterAssistedSetup', '', false, false)]
    local procedure AddExtensionAssistedSetup_OnRegisterAssistedSetup(var TempAggregatedAssistedSetup: Record "Aggregated Assisted Setup" TEMPORARY);
    var
        AssistedSetupRecord: Record "Company Information";
    begin
        TempAggregatedAssistedSetup.AddExtensionAssistedSetup(Page::"SomeWizard Wizard",
                                                              'Text in Assisted Setup List',
                                                              True,
                                                              AssistedSetupRecord.RecordId(),
                                                              GetAssistedSetupStatus(TempAggregatedAssistedSetup),
                                                              '');
    end;

    [EventSubscriber(ObjectType::Table, Database::"Aggregated Assisted Setup", 'OnUpdateAssistedSetupStatus', '', false, false)]
    local procedure AggregatedAssistedSetup_OnUpdateAssistedSetupStatus(var TempAggregatedAssistedSetup: Record "Aggregated Assisted Setup" TEMPORARY);
    begin
        TempAggregatedAssistedSetup.SetStatus(TempAggregatedAssistedSetup, PAGE::"SomeWizard Wizard", GetAssistedSetupStatus(TempAggregatedAssistedSetup));
    end;

    local procedure GetAssistedSetupStatus(AggregatedAssistedSetup: Record "Aggregated Assisted Setup"): Integer;
    var
        AssistedSetupRecord: Record "Company Information";
    begin
        WITH AggregatedAssistedSetup DO BEGIN
            IF AssistedSetupRecord.Get() THEN
                Status := Status::Completed
            ELSE
                Status := Status::"Not Completed";

            EXIT(Status);
        END;
    end;
}

