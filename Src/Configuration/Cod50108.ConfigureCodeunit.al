codeunit 50108 "Configure Codeunit"{
    
    local procedure One();
    begin
        Two();
        Three();
        Three();
        Two();
    end;
    
    local procedure Two();
    var
        EditingHacksMeth: Codeunit "Editing Hacks Meth";
    begin
        EditingHacksMeth.EditingHacks();
        MyPublisher();
    end;

    [IntegrationEvent(false,false)]
    local procedure MyPublisher(); 
    begin 

    end;

    local procedure Three();
    begin

    end;

}