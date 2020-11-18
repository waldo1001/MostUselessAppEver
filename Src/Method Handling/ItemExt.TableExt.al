tableextension 50102 "WLD ItemExt" extends Item //27
{

    procedure CreatePallet(HideDialog: Boolean)
    var
        CreatePalletMeth: Codeunit "WLD CreatePallet Meth";
    begin
        CreatePalletMeth.CreatePallet(Rec, HideDialog);
    end;
}