table 50105 "CRS SomeTableForPrefixing CRS"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "MyField"; Integer)
        {
            Caption = 'MyField';
            DataClassification = CustomerContent;
        }
        field(2; "OtherrField"; Text[50])
        {
            Caption = 'OtherrField';
            DataClassification = CustomerContent;
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