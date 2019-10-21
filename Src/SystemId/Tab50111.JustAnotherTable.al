table 50111 "Just Another Table"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }

        field(2; "Description"; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }

        field(3; "LinkToSubtable"; Guid)
        {
            Caption = 'Link To Subtable';
            DataClassification = CustomerContent;
            TableRelation = "Just Another SubTable".SystemId;
        }


    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

    procedure ShowSystemIdInIntellisense()
    begin
        message('%1', Rec.SystemId);
    end;

}