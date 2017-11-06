codeunit 50102 MyCodeunitWebService {
    procedure TheMethod ();
    begin
        Error('Success.');
    end;
    procedure TheMethodWithParameter (MyParam: Text);
    begin
        Error('Success. %1', MyParam);
    end;
    procedure TheMethodWithXMLPort (var MyXMLPort: XmlPort MyWebServiceXMLPort);
    begin
        MyXMLPort.Export();
    end;

}