table 50102 "Sales&Receivables"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "MyField"; Integer)
        {
            ObsoleteState = Pending;
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