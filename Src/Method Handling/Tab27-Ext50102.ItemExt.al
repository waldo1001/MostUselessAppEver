tableextension 50102 "ItemExt" extends Item //27
{

    procedure CreatePallet(HideDialog: Boolean)
    var 
        CreatePalletMeth: Codeunit "CreatePallet Meth";
    begin
        CreatePalletMeth.CreatePallet(Rec, HideDialog);
    end;
}