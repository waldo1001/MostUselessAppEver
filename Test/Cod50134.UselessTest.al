codeunit 50134 "UselessTest"
{
    Subtype = Test;

    [Test]
    procedure "Customer.SomethingUselessHappens.SomethingElseShouldBeTrue"()
    var
        LibrarySales: Codeunit "TST Library - Sales";
        TSTAssert: Codeunit "TST Assert";
        Customer: Record Customer;
    begin
        // [SCENARIO 12345] Useless test to showcase the pattern 
        // [GIVEN] Customer 
        LibrarySales.CreateCustomer(Customer);
        // [WHEN] SomethingUselessHappens 
        CUstomer.Validate(Name, 'waldo');
        // [THEN] SomethingElseShouldBeTrue 
        TSTAssert.AreEqual(customer."Search Name", customer.Name, 'Search name should be the same as name');

    end;
    // [SCENARIO 12345] Useless test to showcase the pattern 


}