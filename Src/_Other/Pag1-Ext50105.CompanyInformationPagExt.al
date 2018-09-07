pageextension 50105 "CompanyInformation.PagExt" extends "Company Information" //1
{
    layout
    {
        modify("Home Page")
        {
            Visible = false;
        }
        addafter("Home Page")
        {
            field("Home Page 2"; "Home Page")
            {
                ApplicationArea = All;
                ExtendedDatatype = URL;
            }

        }

    }

    actions
    {
    }
}