codeunit 50143 "WLD Soccer" implements "WLD ISportsEvaluation", "WLD IBallColorIdentifier"
{
    procedure GetEvaluation(): Text;
    begin
        exit('Soccer sucks');
    end;

    procedure GetBallColor(): Text;
    begin
        exit('black/white');
    end;
}