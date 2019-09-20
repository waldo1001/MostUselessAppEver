page 50112 "Record Link List"
{

    PageType = List;
    SourceTable = "Record link";
    Caption = 'Record Link List';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Link ID"; "Link ID")
                {
                    ApplicationArea = All;
                }
                field("Record ID"; "Record ID")
                {
                    ApplicationArea = All;
                }
                field("To User ID"; "To User ID")
                {
                    ApplicationArea = All;
                }
                field("User ID"; "User ID")
                {
                    ApplicationArea = All;
                }
                field(Company; Company)
                {
                    ApplicationArea = All;
                }
                field(Created; Created)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Note; Note)
                {
                    ApplicationArea = All;
                }
                field(Notify; Notify)
                {
                    ApplicationArea = All;
                }
                // field(SystemId;SystemId)
                // {
                //     ApplicationArea = All;
                // }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field(URL1; URL1)
                {
                    ApplicationArea = All;
                }
                field(URL2; URL2)
                {
                    ApplicationArea = All;
                }
                field(URL3; URL3)
                {
                    ApplicationArea = All;
                }
                field(URL4; URL4)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
