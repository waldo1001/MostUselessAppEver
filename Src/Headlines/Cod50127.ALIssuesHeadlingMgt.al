codeunit 50127 "AL Issues Headling Mgt"
{
    procedure OnDrillDownIssue(ALIssue: record ALIssue)
    begin
        Hyperlink(ALIssue.html_url);
    end;

    procedure GetIssueHeadlineText(var ALIssue: Record ALIssue) Result: Text
    var
        HeadlineManagement: Codeunit "Headlines";
    begin
        HeadlineManagement.GetHeadlineText(format(ALIssue.id), ALIssue.user + ' - ' + HeadlineManagement.Emphasize(ALIssue.title), Result);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"RC Headlines Executor", 'OnComputeHeadlines', '', true, true)]
    local procedure RefreshIssues()
    var
        ALIssue: Record ALIssue;
    begin
        ALIssue.RefreshIssues();
    end;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"RC Headlines Page Common", 'OnIsAnyExtensionHeadlineVisible', '', true, true)]
    local procedure OnIsAnyExtensionHeadlineVisible(var ExtensionHeadlinesVisible: Boolean)
    var
        ALIssue: Record ALIssue;
    begin
        if not ALIssue.IsEmpty() then ExtensionHeadlinesVisible := true;
    end;

}