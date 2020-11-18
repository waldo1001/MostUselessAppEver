pageextension 50120 "CustomerCardExt" extends "Customer Card" //22
{
    layout
    {

    }

    actions
    {
        addfirst(Processing)
        {
            action("WLD TriggerEvent")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                Caption = 'Trigger Event';
                ToolTip = 'Executes the Trigger Event action';

                trigger OnAction()
                var
                    SomeEventPublisher: Codeunit "WLD SomeEventPublisher";
                begin
                    SomeEventPublisher.SomePublisher(Rec);
                end;
            }
        }
    }
}