codeunit 50129 "InstallExampleExtension"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        WaldoAppAreaMgt: Codeunit "Waldo App Area Mgt";
    begin
        if (WaldoAppAreaMgt.IsExampleAppAreaEnabled()) then exit;

        WaldoAppAreaMgt.EnableExampleAppArea();
    end;
}