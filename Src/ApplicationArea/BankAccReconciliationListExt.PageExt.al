pageextension 50129 "BankAccReconciliationListExt" extends "Bank Acc. Reconciliation List" //388
{
    layout
    {
        addlast(Content)
        {
            field("WLD Total Unposted Applied Amount"; "Total Unposted Applied Amount")
            {
                ApplicationArea = WaldoAppArea;
                ToolTip = 'Specifies the value of the Total Unposted Applied Amount field';
            }
        }
    }
}