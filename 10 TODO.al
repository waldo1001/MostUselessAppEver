table 50101 JustATestTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
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