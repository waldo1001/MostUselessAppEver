xmlport 50100 "MyWebServiceXMLPort"
{
    schema
    {
        textelement(Customers)
        {
            tableelement(Customer;Customer)
            {
                fieldattribute("No.";Customer."No."){}
                fieldattribute(Name;customer.Name){}
            }
        }
    }    
}