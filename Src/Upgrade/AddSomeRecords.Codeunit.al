// codeunit 50142 "WLD AddSomeRecords"
// {
//     Subtype = Install;

//     trigger OnInstallAppPerCompany()
//     var
//         myTable: Record TableThatNeedsUpgrade;
//     begin
//         myTable.Code := 'waldo';
//         myTable.Insert();
//     end;
// }