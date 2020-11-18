codeunit 50145 "WLD Evaluation"
{
    local procedure Evaluate(var se: interface "WLD ISportsEvaluation")
    begin
        se.GetEvaluation();
    end;

    local procedure GetBallColor(var bc: interface "WLD IBallColorIdentifier")
    begin
        bc.GetBallColor();
    end;
}
