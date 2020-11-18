codeunit 50127 "WLD AL Issues Headling Mgt"
{
    procedure OnDrillDownIssue(ALIssue: record "WLD ALIssue")
    begin
        Hyperlink(ALIssue.html_url);
    end;

    procedure GetIssueHeadlineText(var ALIssue: record "WLD ALIssue") Result: Text
    var
        HeadlineManagement: Codeunit "Headlines";
    begin
        HeadlineManagement.GetHeadlineText(format(ALIssue.id), ALIssue.user + ' - ' + HeadlineManagement.Emphasize(ALIssue.title), Result);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"RC Headlines Executor", 'OnComputeHeadlines', '', true, true)]
    local procedure RefreshIssues()
    var
        ALIssue: record "WLD ALIssue";
    begin
        ALIssue.RefreshIssues();
    end;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"RC Headlines Page Common", 'OnIsAnyExtensionHeadlineVisible', '', true, true)]
    local procedure OnIsAnyExtensionHeadlineVisible(var ExtensionHeadlinesVisible: Boolean)
    var
        ALIssue: record "WLD ALIssue";
    begin
        if not ALIssue.IsEmpty() then ExtensionHeadlinesVisible := true;
    end;

}