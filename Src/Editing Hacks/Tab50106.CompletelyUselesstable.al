table 50106 "Completely Useless table"
{

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Description"; Text[30])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    procedure EditingHack()
    var
        EditingHacks: Codeunit "Editing Hacks Meth";
    begin
        EditingHacks.EditingHacks();
    end;
}