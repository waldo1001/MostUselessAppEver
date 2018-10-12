pageextension 50123 "HeadlineRCBusinessManagerExt" extends "Headline RC Business Manager" //1440
{
    layout
    {
        modify(GreetingText)
        {
            Visible = false;
        }
        addlast(Content)
        {
            group(ALIssues)
            {
                Visible = ALIssueVisible;
                field(ALIssue; ALIssueTxt)
                {
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    var
                        ALIssuesHeadlingMgt: Codeunit "AL Issues Headling Mgt";
                    begin
                        ALIssuesHeadlingMgt.OnDrillDownIssue(ALIssue);
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        ALIssuesHeadlingMgt: Codeunit "AL Issues Headling Mgt";
    begin
        if ALIssue.IsEmpty() then exit;

        ALIssueVisible := true;

        ALIssue.GetRandomIssue();
        ALIssueTxt := ALIssuesHeadlingMgt.GetIssueHeadlineText(ALIssue);
    end;

    var
        ALIssueTxt: Text;
        ALIssueVisible: Boolean;
        ALIssue: Record ALIssue;
}