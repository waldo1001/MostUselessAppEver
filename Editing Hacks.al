//USEFULL FUNCTIONS
//Navigation
//  F12: Go To Definition
//  ALT+F12: Peek Definition
//  SHIFT+f12: find references
//  ALT+Left/Right: Back/Forward

//ALT+SHIFT+Up: Copy Line (also on multiple lines)
//ALT+SHIFT+left/right: Shrink/Expand selection
//CTRL+SHIFT+o: Go To Symbol IN FILE - Group by kind by adding ':'
//CTRL+t: Go To Symbol IN WORKSPACE

//ALT+Up/Down: Move line up/down

//Ctrl+k CTRL+x: Trim trailing whitespace
//CTRL+SHIFT+)/^: Code folding
//CTRL+SHIFT+v: Open Markdown Preview

//NOT SO USEFULL FUNCTIONS
//Join lines
//CTRL+j: Toggle Panel
//CTRL+g: navigate to line
//CTRL+i: select line
//CTRL+u: Undo cursor position (only in one file)

codeunit 50100 "Editing Hacks"{
    local procedure One();
    begin
        Two();
        Three();
    end;
    
    local procedure Two();
    var
        cust: record Customer;
        EditingHacksMeth: Codeunit "Editing Hacks Meth";
    begin
        EditingHacksMeth.EditingHacks();
    end;


    local procedure Three();
    begin

    end;

}