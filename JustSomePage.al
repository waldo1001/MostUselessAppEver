page 50100 "Just Some Page"
{
    PageType = List;
    SourceTable = "Just Some Table";

    layout
    {
        area(content)
        {
            repeater(JustSomeTableRecords)
            {
                field(Name;"No.")
                {
                    ApplicationArea=All;
                }
                field(Description;Description)
                {
                    ApplicationArea=All;
                }
            }
        }
    }

}