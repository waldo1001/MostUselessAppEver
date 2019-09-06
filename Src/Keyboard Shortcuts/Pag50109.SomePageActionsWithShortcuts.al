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