// codeunit 50142 "AddSomeRecords"
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