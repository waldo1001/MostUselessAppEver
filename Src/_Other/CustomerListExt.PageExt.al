pageextension 50100 "WLD CustomerListExt" extends "Customer List" //22
{
    layout
    {
        addfirst(Control1)
        {
            field("WLD waldoTelex No."; "Telex No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Telex No. field';
            }
            field("WLD waldoBalance"; "Balance")
            {
                ToolTip = 'Specifies the value of the Balance field';
            }
            field("WLD waldoContact2"; "Contact")
            {
                ToolTip = 'Specifies the value of the Contact field';
            }
        }
    }

    actions
    {
        addfirst("&Customer")
        {
            action("WLD waldoSomeAction")
            {
                RunObject = page "Azure AD App Setup Wizard";
                ToolTip = 'Executes the waldoSomeAction action';
            }
        }
    }
}