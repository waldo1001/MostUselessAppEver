table 50104 "WLD SomeOtherTable"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; LookUpField; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = "WLD SomeTable".SomeField1;
        }
    }

    keys
    {
        key(PK; LookUpField)
        {
            Clustered = true;
        }
    }

}