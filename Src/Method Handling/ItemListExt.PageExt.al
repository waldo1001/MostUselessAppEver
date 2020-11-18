pageextension 50101 "WLD ItemListExt" extends "Item List" //31
{
    layout
    {

    }

    actions
    {
        addlast(Processing)
        {
            action("WLD CreatePallet")
            {
                Caption = 'Create Pallet';
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                ToolTip = 'Executes the Create Pallet action';
                trigger OnAction()
                begin
                    rec.CreatePallet(false);
                end;
            }
        }
    }
}