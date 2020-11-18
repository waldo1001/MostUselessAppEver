tableextension 50104 "WLD AccSchedCellValueExt" extends "Acc. Sched. Cell Value" //342
{
    fields
    {
        field(50100; "WLD CRS SomeField CRS"; Text[50])
        {
            Caption = 'SomeField';
            DataClassification = CustomerContent;
        }
        field(50101; "WLD CRS SomeOtherField CRS"; Text[50])
        {
            Caption = 'SomeOtherField';
            DataClassification = CustomerContent;
        }


    }

}