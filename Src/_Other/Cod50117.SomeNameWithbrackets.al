codeunit 50117 "Some Name (With brackets)"
{
    procedure SomeProc()
    var
        myText: text;
    begin
        myText := 'Normal Text';
        if mytext.ToUpper().EndsWith('TEXT') then
            message('true');
    end;
}