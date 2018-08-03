tableextension 50104 "CRS Some Name CRS" extends "Acc. Sched. Cell Value" //342
{
    fields
    {
        field(50100; "CRS SomeField CRS"; Text[50])
        {
            Caption = 'SomeField';
            DataClassification = ToBeClassified;
        }
        field(50101; "CRS SomeOtherField CRS"; Text[50]){
            Caption = 'SomeOtherField';
            DataClassification = ToBeClassified;
        }
        
        
    }
    
}