codeunit 50122 "SomeCodeunit"
{
    [EventSubscriber(ObjectType::Table, database::Customer, 'OnAfterModifyEvent', '', false, false)]
    local procedure MyProcedure(var Rec: Record Customer; RunTrigger: Boolean)
    begin
        if not RunTrigger then exit;

        message('Changed %1', Rec.Name);

        /* Rec."Address 2" := 'waldo';
        Rec.Modify(true); */
    end;
} 

