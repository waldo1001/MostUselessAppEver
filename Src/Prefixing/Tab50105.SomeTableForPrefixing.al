table 50105 "CRS SomeTableForPrefixing CRS"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "MyField"; Integer)
        {
            Caption = 'MyField';
            DataClassification = ToBeClassified;
        }
        field(2; "OtherrField"; Text[50])
        {
            Caption = 'OtherrField';
            DataClassification = ToBeClassified;
        }
        
        
    }
    
    keys
    {
        key(PK; MyField)
        {
            Clustered = true;
        }
    }
    
}