table 50101 "JustATestTable"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; MyField; Integer)
        {

            DataClassification = CustomerContent;
        }
        field(10; MyField2; Integer)
        {

            DataClassification = CustomerContent;
        }
        field(200; "My Field with a weird / Name"; Integer)
        {

            DataClassification = CustomerContent;
        }

    }
    //TODO: Define Keys
    keys
    {
        key(PK; MyField)
        {
            Clustered = true;
        }
    }

}