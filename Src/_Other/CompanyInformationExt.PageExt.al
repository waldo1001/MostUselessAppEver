pageextension 50105 "CompanyInformationExt" extends "Company Information" //1
{
    layout
    {
        modify("Home Page")
        {
            Visible = false;
        }
        addafter("Home Page")
        {
            field("WLD Home Page 2"; "Home Page")
            {
                ApplicationArea = All;
                ExtendedDatatype = URL;
                ToolTip = 'Specifies the value of the Home Page field';
            }

            field("WLD County2"; "County")
            {
                ToolTip = 'Specifies the value of the County field';
            }

        }

    }

    actions
    {
    }

    trigger OnAfterGetCurrRecord()
    begin

    end;
}