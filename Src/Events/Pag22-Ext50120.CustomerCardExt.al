pageextension 50120 "CustomerCardExt" extends "Customer Card" //22
{
    layout
    {

    }

    actions
    {
        addfirst(Processing)
        {
            action(TriggerEvent)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                Caption = 'Trigger Event';

                trigger OnAction()
                var
                    SomeEventPublisher: Codeunit SomeEventPublisher;
                begin
                    SomeEventPublisher.SomePublisher(Rec);
                end;
            }
        }
    }
}