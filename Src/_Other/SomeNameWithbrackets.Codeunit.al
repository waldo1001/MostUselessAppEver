codeunit 50117 "WLD Some Name (With brackets)"
{

    procedure SomeProc()
    var
        myText: text;
    begin
        myText := 'Normal Text';
        if mytext.ToUpper().EndsWith('TEXT') then
            message('true');
    end;

    local procedure MyProcedure()
    var
        SalesLine: Record "Sales Line";
    begin
        //SalesLine.Gilbert := false;
    end;
}