codeunit 50141 "WLD UsingObsoleteFuntion"
{
    local procedure TotallyUselessFunction()
    var
        MySystemTable: Record "WLD MySystemTable";
    begin
        MySystemTable.FormatDrive();
    end;
}