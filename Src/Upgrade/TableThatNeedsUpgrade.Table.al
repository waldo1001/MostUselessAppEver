table 50110 "WLD TableThatNeedsUpgrade"
{

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
            ObsoleteReason = 'Needed to be Code[20]';
            ObsoleteState = Removed;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; Code2; Code[20])
        {
            Caption = 'Code2';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Code2")
        {
            Clustered = true;
        }
    }

}