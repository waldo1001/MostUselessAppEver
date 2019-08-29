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
            field("Home Page 2"; "Home Page")
            {
                ApplicationArea = All;
                ExtendedDatatype = URL;
            }

            field("County2"; "County") { }

        }

    }

    actions
    {
    }
}