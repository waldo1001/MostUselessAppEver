table 50102 "waldoSales&Receivables"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; MyField; Integer)
        {
            ObsoleteState = Pending;
            DataClassification = CustomerContent;
        }
        field(114; "Grid"; Boolean)
        {
            Caption = 'Grid';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; "MyField")
        {
            Clustered = true;
        }
    }

}