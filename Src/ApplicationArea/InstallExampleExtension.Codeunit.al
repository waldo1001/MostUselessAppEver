codeunit 50129 "WLD InstallExampleExtension"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        WaldoAppAreaMgt: Codeunit "WLD Waldo App Area Mgt";
    begin
        if (WaldoAppAreaMgt.IsExampleAppAreaEnabled()) then exit;

        WaldoAppAreaMgt.EnableExampleAppArea();
    end;
}