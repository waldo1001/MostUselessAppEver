pageextension 50100 "CustomerListExt" extends "Customer List" //22
{
    layout
    {
        addfirst(Control1)
        {
            field("waldoTelex No."; "Telex No.")
            {
                ApplicationArea = All;
            }
            field(waldoBalance; "Balance") { }
            field(waldoContact2; "Contact") { }
        }
    }

    actions
    {
        addfirst("&Customer")
        {
            action(waldoSomeAction)
            {
                RunObject = page "Azure AD App Setup Wizard";
            }
        }
    }
}