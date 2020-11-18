query 50100 "WLD MyQueryWebService" {
    elements{
        dataitem(Customer;Customer){
            Description='Customers';
            column(No_;"No."){}

            column(Name;Name){}

        }
    }
}