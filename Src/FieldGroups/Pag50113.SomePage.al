page 50113 "Some Page"
{
    
    PageType = List;
    SourceTable = "Just Some Table";
    Caption = 'Some Page';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; "No.")
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
