tableextension 50100 "Just Some Table Extension" extends Customer //18
{
    fields
    {
        field(50100; "Just Some field"; Code[10])
        {
            TableRelation = "Just Some Table"."No.";
            caption = 'Just Some Field';
        }
        field(50101; "Just Some other field"; Code[10])
        {
            TableRelation = "Just Some Table"."No.";
            caption = 'Just Some other Field';
        }

        field(50102; "Just third field"; Code[10])
        {
            TableRelation = "Just Some Table"."No.";
            caption = 'Just a third field';
        }

        field(50103; "A Fourth field"; Blob)
        {
            Caption = 'Fourth field';
        }

        field(50104; "My Fifth field"; Blob)
        {
            Caption = 'My Fifth field';            
            DataClassification = ToBeClassified;
        }
    }

    procedure CreateAndShowNewInvoice(MyString: Text)
    begin
        rec.CreateAndShowNewInvoice();

    end;

    procedure OverloadedStandardMethod()
    begin
        rec.CreateAndShowNewInvoice('waldo');
    end;
}