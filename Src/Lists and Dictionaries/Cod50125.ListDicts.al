codeunit 50125 "List & Dicts"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure MyProcedure()
    var
        GroupedGames: Dictionary of [Integer, Integer];

    begin
        GroupedGames.Add(1999, 5);
        GroupedGames.Add(1998, 3);
        GroupedGames.Add(1997, 6);
        GroupedGames.Add(1996, 8);

    end;





    local procedure DoSomething(Args: Dictionary of [Text, Text])
    var
        Command: Text;
    begin
        Args.Get('Command', Command);

        Case Command Of
            'Insert': //DoINsert
                begin

                end;
            'Modify': //DoModify
                begin

                end;
        End;
    end;

    local procedure LetItDoSomething()
    var
        Args: Dictionary of [Text, Text];
    begin
        Args.Add('Command', 'Insert');
        Args.Add('Codeunit', Format(CODEUNIT::"Acc. Sched. BarChart DrillDown"));

        DoSomething(Args);
    end;

    local procedure LetItDoSomethingElse()
    var
        Args: Dictionary of [Text, Text];
    begin
        Args.Add('Command', 'Modify');
        Args.Add('Codeunit', Format(CODEUNIT::"Add-in Manifest Management"));

        DoSomething(Args);
    end;

    local procedure LetItDoSomethingElseAgain()
    var
        Args: Dictionary of [Text, Text];
    begin
        Args.Add('Command', 'Modify');
        Args.Add('Codeunit', Format(CODEUNIT::"Add-in Manifest Management"));
        Args.Add('Report', Format(Report::"Account Schedule"));

        DoSomething(Args);
    end;

}