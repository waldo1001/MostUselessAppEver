table 50101 JustATestTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
        {

            DataClassification = ToBeClassified;
        }
        field(10; MyField2; Integer)
        {

            DataClassification = ToBeClassified;
        }
        field(200; "My Field with a weird / Name"; Integer)
        {

            DataClassification = ToBeClassified;
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