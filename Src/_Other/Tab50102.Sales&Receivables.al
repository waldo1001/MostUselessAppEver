table 50102 "Sales&Receivables"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"MyField"; Integer)
        {
            
            DataClassification = ToBeClassified;
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