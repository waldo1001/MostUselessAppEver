// codeunit 50139 "UpgradeCode"
// {
//     Subtype = Upgrade;

//     trigger OnUpgradePerCompany()
//     var
//         myTable: Record TableThatNeedsUpgrade;
//         MyInfo: ModuleInfo;
//     begin
//         //This trigger is being executed for every company

//         //We need to move the data from our table from one field to the other.
//         //but only when we upgrade from a specific version to the other.

//         NavApp.GetCurrentModuleInfo(MyInfo); //I need to know the current version of the data in the system.

//         // first check the dataversion, which is the version of the app that was previously installed
//         if MyInfo.DataVersion().Major() > 1 then exit; //I'll skip any higher version than my own (you should make sure to execute this code only once)
//         if MyInfo.DataVersion().Minor() >= 1 then exit;

//         //Now, I know I need to move the data
//         if myTable.FindSet() then
//             repeat
//                 myTable.Code2 := copystr(myTable.Name, 1, MaxStrLen(myTable.Code2));
//                 myTable.Modify(true);
//             until myTable.Next() < 1;
//     end;
// }