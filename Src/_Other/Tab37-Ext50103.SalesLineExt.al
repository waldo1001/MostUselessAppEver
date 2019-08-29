tableextension 50103 "SalesLineExt" extends "Sales Line" //37
{
    fields
    {
        field(50100; Gilbert; Boolean)
        {
            Caption = 'Gilbert';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
        }

        field(50101; "Grid"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(50102; "page"; Integer)
        {
            DataClassification = CustomerContent;
        }
    }

}