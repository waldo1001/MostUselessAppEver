page 50106 "SomeTableWithFlowFields List"
{

    PageType = List;
    SourceTable = "SomeTableWithFlowFields";
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
                }
                field("LookUpFlowField"; "LookUpFlowField")
                {
                    ApplicationArea = All;
                }
                field("CountFlowField"; "CountFlowField")
                {
                    ApplicationArea = All;
                }
                field("ExistFlowField"; "ExistFlowField")
                {
                    ApplicationArea = All;
                }
                field("SumFlowField"; "SumFlowField")
                {
                    ApplicationArea = All;
                }
                field(SumFlowField2; SumFlowField2)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

}
