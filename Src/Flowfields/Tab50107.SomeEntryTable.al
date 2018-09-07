table 50107 "Some Entry Table"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "Some Entry Table List";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; "Quantity"; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(3; "Number"; Integer)
        {
            Caption = 'Number';
            DataClassification = CustomerContent;
        }
        field(4; "SomeCode"; Code[50])
        {
            Caption = 'SomeCode';
            DataClassification = CustomerContent;
        }
        field(5; "MyField"; BigInteger)
        {
            Caption = 'MyField';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}