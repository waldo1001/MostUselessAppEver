codeunit 50144 "WLD Tennis" implements "WLD ISportsEvaluation", "WLD IBallColorIdentifier"
{
    procedure GetEvaluation(): Text;
    begin
        exit('Tennis is fun');
    end;

    procedure GetBallColor(): Text;
    begin
        exit('yellow');
    end;
}