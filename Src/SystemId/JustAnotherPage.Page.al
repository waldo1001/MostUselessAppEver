page 50110 "WLD Just Another Page"
{

    PageType = List;
    SourceTable = "WLD Just Another Table";
    Caption = 'Just Another Page';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field';
                }
                field(LinkToSubtable; LinkToSubtable)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Link To Subtable field';
                }
            }
        }
    }

}
