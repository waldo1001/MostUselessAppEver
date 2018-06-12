codeunit 50109 "DebuggingForeach"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure LoopList()
    var
        Names: list of [Text];
        Name: Text;
        SomeIndex: Integer;
    begin
        Names.Add('Isabelle');
        Names.add('Mats');
        Names.Add('Ben');
        names.add('Lex');
        Names.Add('waldo');

        foreach Name in Names do
            SomeIndex := Names.IndexOf(Name);

    end;

    [EventSubscriber(ObjectType::Codeunit, codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure LoopSplitList();
    var
        myText: Text;
        myOtherText: text;
        myTextArray: list of [Text];
    begin
        myText := 'Jos,Dirk,Yurii,Sergii,Alex,Bart,waldo';

        myTextArray := myText.Split(',');
        foreach myText in MyTextArray do
            myOtherText := MyText;

    end;
}
