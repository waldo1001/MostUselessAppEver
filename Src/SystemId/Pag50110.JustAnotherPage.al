page 50110 "Just Another Page"
{
    
    PageType = List;
    SourceTable = "Just Another Table";
    Caption = 'Just Another Page';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code;Code)
                {
                    ApplicationArea = All;
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                }
                field(LinkToSubtable;LinkToSubtable)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
