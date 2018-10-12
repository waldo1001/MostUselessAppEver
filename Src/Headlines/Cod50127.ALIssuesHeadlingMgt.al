codeunit 50127 "AL Issues Headling Mgt"
{
    procedure OnDrillDownIssue(ALIssue: record ALIssue)
    begin
        Hyperlink(ALIssue.html_url);
    end;

    procedure GetIssueHeadlineText(var ALIssue: Record ALIssue) Result: Text
    var
        HeadlineManagement: Codeunit "Headline Management";
    begin
        HeadlineManagement.GetHeadlineText(format(ALIssue.id), ALIssue.user + ' - ' + HeadlineManagement.Emphasize(ALIssue.title), Result);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Headline RC Business Manager", 'OnComputeHeadlines', '', true, true)]
    local procedure RefreshIssues()
    var
        ALIssue: Record ALIssue;
    begin
        ALIssue.RefreshIssues();
    end;

    [EventSubscriber(ObjectType::Page, Page::"Headline RC Business Manager", 'OnIsAnyExtensionHeadlineVisible', '', true, true)]
    local procedure OnIsAnyExtensionHeadlineVisible(var ExtensionHeadlinesVisible: Boolean)
    var
        ALIssue: Record ALIssue;
    begin
        if not ALIssue.IsEmpty() then ExtensionHeadlinesVisible := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Headline RC Order Processor", 'OnComputeHeadlines', '', true, true)]
    local procedure RefreshIssuesOrderProcessor()
    var
        ALIssue: Record ALIssue;
    begin
        ALIssue.RefreshIssues();
    end;

    [EventSubscriber(ObjectType::Page, Page::"Headline RC Order Processor", 'OnIsAnyExtensionHeadlineVisible', '', true, true)]
    local procedure OnIsAnyExtensionHeadlineVisibleOrderProcessor(var ExtensionHeadlinesVisible: Boolean)
    var
        ALIssue: Record ALIssue;
    begin
        if not ALIssue.IsEmpty() then ExtensionHeadlinesVisible := true;
    end;

}