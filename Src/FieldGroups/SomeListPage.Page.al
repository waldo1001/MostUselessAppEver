page 50102 "WLD SomeListPage"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "WLD SomeTable";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(SomeField1; SomeField1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SomeField1 field';
                }
                field(SomeField2; SomeField2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SomeField2 field';
                }
                field(SomeField3; SomeField3)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SomeField3 field';
                }
                field(SomeField4; SomeField4)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SomeField4 field';
                }
            }
        }
        area(Factboxes)
        {

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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}