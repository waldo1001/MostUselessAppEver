tableextension 50101 OverloadFunctionOnVendor extends Vendor //23
{
    procedure CreateAndShowNewInvoice(SomeMoreInfo: Text)
    begin
        rec.CreateAndShowNewInvoice();

        //Do something different
    end;
}

codeunit 50112 TestOverload
{
    local procedure TestOverload(SomeMoreInfo: Text)
    var
        Vendor: record Vendor;
    begin
        if (SomeMoreInfo <> '') then
            Vendor.CreateAndShowNewInvoice('Some More Info')
        else
            vendor.CreateAndShowNewInvoice();
    end;

}