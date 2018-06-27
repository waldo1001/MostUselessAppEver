pageextension 50101 "ItemListExt" extends "Item List" //31
{
    layout
    {
        
    }
    
    actions
    {
        addlast(Processing)
        {
            action(CreatePallet)
            {
                Caption = 'Create Pallet';
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    rec.CreatePallet(false);
                end;
            }
        }
    }
}