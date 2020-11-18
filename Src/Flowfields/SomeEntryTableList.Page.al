page 50105 "WLD Some Entry Table List"
{

    PageType = List;
    SourceTable = "WLD Some Entry Table";
    Caption = 'Some Entry Table List';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field';
                }
                field(Quantity; "Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field';
                }
                field(Number; "Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number field';
                }
                field(SomeCode; "SomeCode")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SomeCode field';
                }
                field(MyField; "MyField")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MyField field';
                }
            }
        }
    }

}
