codeunit 50116 "WLD InstallDataPackage"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        JustSomeTable: Record "WLD Just Some Table";
    begin
        if JustSomeTable.IsEmpty() then
            navapp.LoadPackageData(Database::"WLD Just Some Table");

        DoSomethingWithModuleInfo();
    end;

    local procedure DoSomethingWithModuleInfo()
    var
        myModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(myModuleInfo);

    end;


}