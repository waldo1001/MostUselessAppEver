codeunit 50119 "WLD DebugDefaultObject"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', false, false)]
    local procedure DebugAddressStuff()
    var
        VendorMgt: Codeunit "Vendor Mgt.";
        recCount: Integer;
    begin
        VendorMgt.CalcAmountsOnPostedOrders('10000',recCount);
    end;
}