codeunit 50136 "WLD waldoMyCodeunit"
{
    local procedure MyProcedure()
    var
        MailManagement: Codeunit "Mail Management";
        DocumentMailing: Codeunit "Document-Mailing";
        OfficeAttachmentManager: Codeunit "Office Attachment Manager";
        OfficeManagement: Codeunit "Office Management";
    begin
        OfficeManagement.AttachAvailable()
    end;
}