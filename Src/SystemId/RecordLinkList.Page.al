page 50112 "WLD Record Link List"
{

    PageType = List;
    SourceTable = "Record link";
    Caption = 'Record Link List';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Link ID"; "Link ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Link ID field';
                }
                field("Record ID"; "Record ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Record ID field';
                }
                field("To User ID"; "To User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the To User ID field';
                }
                field("User ID"; "User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field';
                }
                field(Company; Company)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Company field';
                }
                field(Created; Created)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created field';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field';
                }
                field(Note; Note)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Note field';
                }
                field(Notify; Notify)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Notify field';
                }
                // field(SystemId; SystemId)
                // {
                //     ApplicationArea = All;
                // }
                field(Type; Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field';
                }
                field(URL1; URL1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the URL1 field';
                }
            }
        }
    }

}
