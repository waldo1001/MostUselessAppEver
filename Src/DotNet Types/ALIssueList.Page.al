page 50108 "WLD ALIssueList"
{
    PageType = List;
    SourceTable = "WLD ALIssue";
    Caption = 'AL Issues';
    SourceTableView = order(descending);
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Number; number)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number field';
                }
                field(Title; title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Title field';
                }
                field(CreatedAt; created_at)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created at field';
                }
                field(User; user)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User field';
                }
                field(State; state)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State field';
                }
                field(URL; html_url)
                {
                    ExtendedDatatype = URL;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the URL field';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(RefreshALIssueList)
            {
                Caption = 'Refresh Issues';
                Promoted = true;
                PromotedCategory = Process;
                Image = RefreshLines;
                ApplicationArea = All;
                ToolTip = 'Executes the Refresh Issues action';
                trigger OnAction();
                begin
                    RefreshIssues();
                    CurrPage.Update;
                    if FindFirst then;
                end;
            }
        }
    }
}