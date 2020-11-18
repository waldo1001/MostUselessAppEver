codeunit 50146 "WLD Basketball" implements "WLD ISportsEvaluation", "WLD IBallColorIdentifier"
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