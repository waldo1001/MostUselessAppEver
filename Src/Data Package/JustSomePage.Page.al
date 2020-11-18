page 50100 "WLD Just Some Page"
{
    PageType = List;
    SourceTable = "WLD Just Some Table";

    layout
    {
        area(content)
        {
            repeater(JustSomeTableRecords)
            {
                field(Name; "No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field';
                }
            }
        }
    }

}