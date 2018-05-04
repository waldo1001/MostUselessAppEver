tableextension 50100 "Just Some Table Extension" extends Customer //18
{
    fields
    {
        // Add changes to table fields here
        field(50100; "Just Some field"; Code[10])
        {
            TableRelation = "Just Some Table"."No.";
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