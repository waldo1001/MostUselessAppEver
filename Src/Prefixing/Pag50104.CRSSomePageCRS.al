page 50104 "CRS SomePage CRS"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Just Some Table";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                }
                
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action("ActionName")
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}