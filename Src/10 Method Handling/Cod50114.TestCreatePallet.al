codeunit 50114 "TestCreatePallet"
{
    Subtype = Test;
    
    [Test]
    //[HandlerFunctions('myMessageHandler')]
    procedure TestCreatePalletWithHideDialog()
    var
        Item: Record Item;
    begin
        //Init data
        Item.init();

        //DoTest
        item.CreatePallet(true);

        //Assert

    end;    

    [Test]
    //[HandlerFunctions('myConfirmHandler')]
    procedure TestCreatePalletWithoutHideDialog()
    var
        Item: Record Item;
    begin
        //Init data
        Item.init();

        //DoTest
        item.CreatePallet(false);

        //Assert

    end;    

    [MessageHandler]
    local procedure myMessageHandler(Message: Text[1024])
    begin
        if not message.StartsWith('New method to handle cr') then error('wrong message');
    end;

    [ConfirmHandler]
    local procedure myConfirmHandler(Question : Text[1024]; VAR Reply : Boolean)
    begin
        if not Question.StartsWith('Are') then error('wrong message');
        Reply := true;
    end;
}