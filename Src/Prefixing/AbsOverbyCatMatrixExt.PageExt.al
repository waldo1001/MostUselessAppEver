pageextension 50103 "WLD AbsOverbyCatMatrixExt" extends "Abs. Over. by Cat. Matrix"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Creation)
        {
            action("WLD CRS SomeNewAction")
            {
                ToolTip = 'Executes the CRS SomeNewAction action';

            }
        }
    }

}