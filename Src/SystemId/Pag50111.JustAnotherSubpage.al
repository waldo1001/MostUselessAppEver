page 50111 "Just Another Subpage"
{

    PageType = List;
    SourceTable = "Just Another SubTable";
    Caption = 'Just Another Subpage';
    ApplicationArea = All;
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
