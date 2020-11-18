pageextension 50122 "HeadlineRCOrderProcessorExt" extends "Headline RC Order Processor"//1441
{
    layout
    {
        modify(GreetingText)
        {
            Visible = false;
        }
        addlast(Content)
        {
            group("WLD ALIssues")
            {
                Visible = ALIssueVisible;
                field("WLD ALIssue"; ALIssueTxt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ALIssueTxt field';

                    trigger OnDrillDown()
                    var
                        ALIssuesHeadlingMgt: Codeunit "WLD AL Issues Headling Mgt";
                    begin
                        ALIssuesHeadlingMgt.OnDrillDownIssue(ALIssue);
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        ALIssuesHeadlingMgt: Codeunit "WLD AL Issues Headling Mgt";
    begin
        if ALIssue.IsEmpty() then exit;

        ALIssueVisible := true;

        ALIssue.GetRandomIssue();
        ALIssueTxt := ALIssuesHeadlingMgt.GetIssueHeadlineText(ALIssue);
    end;

    var
        ALIssueTxt: Text;
        ALIssueVisible: Boolean;
        ALIssue: record "WLD ALIssue";
}