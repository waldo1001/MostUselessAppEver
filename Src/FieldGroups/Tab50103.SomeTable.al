table 50103 "SomeTable"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;SomeField1; Integer)
        {
            Caption = 'SomeField1';
            DataClassification = ToBeClassified;
        }
        field(2; "SomeField2"; Blob)
        {
            Caption = 'SomeField2';
            DataClassification = ToBeClassified;
        }
        field(3; "SomeField3"; Code[10])
        {
            Caption = 'SomeField3';
            DataClassification = ToBeClassified;
        }
        field(4; "SomeField4"; Text[50])
        {
            Caption = 'SomeField4';
            DataClassification = ToBeClassified;
        }
        
    }
    
    keys
    {
        key(PK; SomeField1)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        fieldgroup(DropDown; SomeField3) { }
        fieldgroup(Brick; SomeField4,SomeField3,SomeField2,SomeField1) { }
    }
}