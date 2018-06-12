table 50100 "Just Some Table"
{

    fields
    {
        field(1; "No."; Code[20])
        {
        }
        field(2; "Description"; Text[30])
        {
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}