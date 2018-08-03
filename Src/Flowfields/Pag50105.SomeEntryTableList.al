page 50105 "Some Entry Table List"
{

    PageType = List;
    SourceTable = "Some Entry Table";
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
                }
                field("Quantity"; "Quantity")
                {
                    ApplicationArea = All;
                }
                field("Number"; "Number")
                {
                    ApplicationArea = All;
                }
                field("SomeCode"; "SomeCode")
                {
                    ApplicationArea = All;
                }
                field("MyField"; "MyField")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
