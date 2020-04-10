codeunit 50144 "Tennis" implements ISportsEvaluation, IBallColorIdentifier
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