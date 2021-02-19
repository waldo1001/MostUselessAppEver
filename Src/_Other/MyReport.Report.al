report 50100 "WLD MyReport"
{
    Caption = 'My Report';
    UsageCategory = Administration;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {

            }

            trigger OnAfterGetRecord()
            begin
                message(customer.Name);
            end;
        }
    }


}