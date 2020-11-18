page 50103 "WLD SomeOtherPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "WLD SomeOtherTable";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(LookUpField; LookUpField)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LookUpField field';
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
                ToolTip = 'Executes the ActionName action';

                trigger OnAction()
                begin

                end;
            }
        }
    }
}