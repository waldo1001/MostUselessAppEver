codeunit 50135 "WLD TST Library - Sales"
{
    procedure CreateCustomer(var Customer: Record Customer);
    var
        CustContUpdate: Codeunit "CustCont-Update";
    begin
        CLEAR(Customer);
        Customer.Insert(true);
        Customer.Validate(Name, Customer."No.");  // Validating Name as No. because value is not important.
        Customer.Modify(true);
        CustContUpdate.OnModify(Customer);
    end;


}