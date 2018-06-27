dotnet
{
    assembly(mscorlib)
    {
        type("System.DateTime"; DotNetDateTime) { }
    }
}

codeunit 50118 "TestDotNetInterop"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure MyProcedure()
    var
        myDate: DotNet DotNetDateTime;
    begin
        //message('Current Date: %1', myDate.Now().ToString());
    end;
}