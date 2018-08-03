page 50103 "SomeOtherPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SomeOtherTable;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(LookUpField;LookUpField)
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
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}