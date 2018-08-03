page 50102 "SomeListPage"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = SomeTable;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(SomeField1; SomeField1)
                {
                    ApplicationArea = All;
                }
                field(SomeField2; SomeField2)
                {
                    ApplicationArea = All;
                }
                field(SomeField3; SomeField3)
                {
                    ApplicationArea = All;
                }
                field(SomeField4; SomeField4)
                {
                    ApplicationArea = All;
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}