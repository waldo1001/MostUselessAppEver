tableextension 50103 "WLD SalesLineExt" extends "Sales Line" //37
{
    fields
    {
        field(50100; "WLD Gilbert"; Boolean)
        {
            Caption = 'Gilbert';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
        }

        field(50101; "WLD Grid"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(50102; "WLD page"; Integer)
        {
            DataClassification = CustomerContent;
        }
    }

}