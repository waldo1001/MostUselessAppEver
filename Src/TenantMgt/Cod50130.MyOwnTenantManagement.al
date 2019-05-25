codeunit 50130 "MyOwnTenantManagement"
{
    //[EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure ShowTenantInformation()
    begin
        DoShowTenantInformation();
    end;

    local procedure DoShowTenantInformation()
    var
        TenantMgt: codeunit "Tenant Management";
        PermissionManager: codeunit "Permission Manager";
        CompleteMessage: TextBuilder;
    begin
        CompleteMessage.Clear();
        //CompleteMessage.AppendLine(StrSubstNo('GetAadTenantDomainName - %1', TenantMgt.GetAadTenantDomainName()));
        CompleteMessage.AppendLine(StrSubstNo('GetAadTenantId - %1', TenantMgt.GetAadTenantId()));
        CompleteMessage.AppendLine(StrSubstNo('GetApplicationFamily - %1', TenantMgt.GetApplicationFamily()));
        CompleteMessage.AppendLine(StrSubstNo('GetApplicationVersion - %1', TenantMgt.GetApplicationVersion()));
        CompleteMessage.AppendLine(StrSubstNo('GetEnvironmentName - %1', TenantMgt.GetEnvironmentName()));
        CompleteMessage.AppendLine(StrSubstNo('GetPlatformVersion - %1', TenantMgt.GetPlatformVersion()));
        CompleteMessage.AppendLine(StrSubstNo('GetTenantDisplayName - %1', TenantMgt.GetTenantDisplayName()));
        CompleteMessage.AppendLine(StrSubstNo('GetTenantId - %1', TenantMgt.GetTenantId()));
        CompleteMessage.AppendLine(StrSubstNo('IsProduction - %1', TenantMgt.IsProduction()));
        CompleteMessage.AppendLine(StrSubstNo('IsSandbox - %1', TenantMgt.IsSandbox()));

        CompleteMessage.AppendLine(StrSubstNo('Is SaaS - %1', PermissionManager.SoftwareAsAService()));
        CompleteMessage.AppendLine(StrSubstNo('Is Sandbox (CU9002) - %1', PermissionManager.IsSandboxConfiguration()));

        Message(CompleteMessage.ToText());
    end;

}