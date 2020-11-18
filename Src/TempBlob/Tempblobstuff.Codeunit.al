codeunit 50140 "WLD Tempblobstuff"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterCompanyOpen', '', false, false)]
    local procedure MyProcedure()
    var
        CompanyInformation: Record "Company Information";
        TempBlob: Codeunit "Temp Blob";
        TempBlob2: Codeunit "Temp Blob";
        Instr: InStream;
        Outstr: OutStream;
    begin
        CompanyInformation.FindFirst();

        TempBlob.FromRecord(CompanyInformation, CompanyInformation.fieldno(Picture));

        TempBlob.CreateInStream(Instr);
        TempBlob2.CreateOutStream(Outstr);
        CopyStream(Outstr, instr);

        //message('%1', TempBlob2.Length());
    end;
}