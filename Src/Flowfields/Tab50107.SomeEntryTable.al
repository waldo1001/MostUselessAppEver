table 50107 "Some Entry Table"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Some Entry Table List";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Quantity"; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(3; "Number"; Integer)
        {
            Caption = 'Number';
            DataClassification = ToBeClassified;
        }
        field(4; "SomeCode"; Code[50])
        {
            Caption = 'SomeCode';
            DataClassification = ToBeClassified;
        }
        field(5; "MyField"; BigInteger)
        {
            Caption = 'MyField';
            DataClassification = ToBeClassified;
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