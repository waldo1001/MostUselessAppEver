page 50109 "SomePageActionsWithShortcuts"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            repeater(Customers)
            {
                field(Name; Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PostCustomer)
            {
                Caption = 'Post Customer';
                ApplicationArea = All;
                Image = ContactPerson;
                ShortcutKey = 'F9';
                ToolTip = 'Executes the Post Customer action';

                trigger OnAction()
                begin
                    message('Posting %1', Name);
                end;
            }
        }
    }

    var
        myInt: Integer;
}