tableextension 50107 "ItemLedgerEntryExt" extends "Item Ledger Entry" //32
{
    fields
    {
        field(50101; "JustAField"; Boolean)
        {
            Caption = 'JustAField';
            DataClassification = SystemMetadata;
        }

    }

}

table 50109 SomeTableThatUsesFlowfield
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }

        field(10; JustAField; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum ("Item Ledger Entry"."Sales Amount (Actual)" where (JustAField = const (false)));
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