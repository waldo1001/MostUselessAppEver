codeunit 50145 "Evaluation"
{
    local procedure Evaluate(var se: interface ISportsEvaluation)
    begin
        se.GetEvaluation();
    end;

    local procedure GetBallColor(var bc: interface IBallColorIdentifier)
    begin
        bc.GetBallColor();
    end;
}
