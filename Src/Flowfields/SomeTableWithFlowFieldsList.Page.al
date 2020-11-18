page 50106 "SomeTableWithFlowFields List"
{

    PageType = List;
    SourceTable = "WLD SomeTableWithFlowFields";
    Caption = 'SomeTableWithFlowFields List';
    ApplicationArea = "All";
    UsageCategory = "Lists";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field';
                }
                field(LookUpFlowField; "LookUpFlowField")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LookUpFlowField field';
                }
                field(CountFlowField; "CountFlowField")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CountFlowField field';
                }
                field(ExistFlowField; "ExistFlowField")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ExistFlowField field';
                }
                field(SumFlowField; "SumFlowField")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SumFlowField field';
                }
                field(SumFlowField2; SumFlowField2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SumFlowField2 field';
                }

            }
        }
    }

}
