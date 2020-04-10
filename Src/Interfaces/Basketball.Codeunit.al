codeunit 50146 "Basketball" implements ISportsEvaluation, IBallColorIdentifier
{
    procedure GetEvaluation(): Text;
    begin
        exit('Basketball is cool');
    end;

    procedure GetBallColor(): Text;
    begin
        exit('orange/brown');
    end;
}