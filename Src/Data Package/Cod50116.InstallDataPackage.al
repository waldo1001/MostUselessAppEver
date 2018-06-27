codeunit 50116 "InstallDataPackage"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        navapp.LoadPackageData(Database::"Just Some Table");
    end;
}