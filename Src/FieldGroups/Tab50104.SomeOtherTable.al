table 50104 "SomeOtherTable"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;LookUpField; Integer)
        {
            DataClassification = ToBeClassified;
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