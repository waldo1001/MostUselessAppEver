table 50104 "SomeOtherTable"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; LookUpField; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = SomeTable.SomeField1;
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