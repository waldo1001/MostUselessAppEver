codeunit 50102 "WLD MyCodeunitWebService"
{
    procedure TheMethod();
    begin
        Error('Success.');
    end;

    procedure TheMethodWithParameter(MyParam: Text);
    begin
        Error('Success. %1', MyParam);
    end;

    procedure TheMethodWithXMLPort(var MyXMLPort: XmlPort "WLD MyWebServiceXMLPort");
    begin
        MyXMLPort.Export();
    end;

}