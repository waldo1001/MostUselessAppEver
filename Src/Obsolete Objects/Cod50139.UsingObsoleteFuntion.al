codeunit 50139 "UsingObsoleteFuntion"
{
    local procedure TotallyUselessFunction()
    var
        MySystemTable: Record MySystemTable;
    begin
        MySystemTable.FormatDrive();
    end;
}