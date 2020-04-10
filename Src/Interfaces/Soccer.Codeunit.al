codeunit 50143 "Soccer" implements ISportsEvaluation, IBallColorIdentifier
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