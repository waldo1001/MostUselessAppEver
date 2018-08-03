codeunit 50123 "DotNetWrappers"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure RunTheStuffBelow()
    begin
        //extDemo();
        //ListDemo();
        CountCharactersInCustomerName('Absys Cyborg');
    end;

    procedure TextDemo();
    var
        myText: Text;
        myTextBuilder: TextBuilder;
    begin
        myTextBuilder.AppendLine('We can append new lines');
        myTextBuilder.Append('... or just characters to the current line');
        myTextBuilder.Replace('Text can also be', 'replaced');
        myText := myTextBuilder.ToText();

        myText := myText.ToUpper();

        Message(myText);

    end;

    procedure ListDemo()
    var
        customerNames: List of [Text];
    begin
        customerNames.Add('Isabelle');
        customerNames.Add('waldo');
        customerNames.Add('Mats');
        customerNames.Add('Ben');
        customerNames.Add('Lex');

        if customerNames.Contains('waldo') then
            Message('waldo is in the list and has index %1', customerNames.IndexOf('waldo'));

        Message('Name at index 1: ' + customerNames.Get(1));
    end;

    procedure CountCharactersInCustomerName(customerName: Text)
    var
        i: Integer;
        c: Integer;
        counter: Dictionary of [Char, Integer];
        currChar: char;
        currValue: Integer;
        
    begin
        Clear(counter);

        for i := 1 to StrLen(customerName) do begin
            if counter.Get(customerName[i], c) then
                counter.Set(customerName[i], c + 1)
            else
                counter.Add(customerName[i], 1);
        end;

        foreach currChar in counter.Keys() do begin
            counter.Get(currChar, currValue);
            message('%1 - %2', currChar, currValue);
        end;
    end;

    procedure PrintCustomerNames(customerNames: List of [Text])
    var
        name: text;
    begin
        foreach name in customerNames do
            Message(name);
    end;
}