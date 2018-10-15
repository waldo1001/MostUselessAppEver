pageextension 50129 "BankAccReconciliationListExt" extends "Bank Acc. Reconciliation List" //388
{
    layout
    {
        addlast(Content)
        {
            field("Total Unposted Applied Amount"; "Total Unposted Applied Amount")
            {
                ApplicationArea = WaldoAppArea;
            }
        }
    }
}