tableextension 50107 "WLD ItemLedgerEntryExt" extends "Item Ledger Entry" //32
{
    fields
    {
        field(50101; "WLD JustAField"; Boolean)
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
        field(1; "WLD Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }

        field(10; "WLD JustAField"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Sales Amount (Actual)" where("WLD JustAField" = const(false)));
        }
    }

    keys
    {
        key(PK; "WLD Entry No.")
        {
            Clustered = true;
        }
    }
}