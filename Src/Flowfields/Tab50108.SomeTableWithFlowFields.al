table 50108 "SomeTableWithFlowFields"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(2; "LookUpFlowField"; Code[50])
        {
            Caption = 'LookUpFlowField';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup ("Some Entry Table".SomeCode where ("Entry No." = field ("Entry No.")));
        }
        field(3; "CountFlowField"; Integer)
        {
            Caption = 'CountFlowField';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count ("Some Entry Table" where (SomeCode = filter ('*waldo')));
        }

        field(4; "ExistFlowField"; Boolean)
        {
            Caption = 'ExistFlowField';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = exist ("Some Entry Table" where (SomeCode = filter ('*waldo')));
        }

        field(5; "SumFlowField"; Decimal)
        {
            Caption = 'SumFlowField';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum ("Some Entry Table".Quantity where (SomeCode = const ('bleh')));
        }
        field(6; "SumFlowField2"; BigInteger)
        {
            Caption = 'SumFlowField2';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum ("Some Entry Table".MyField where ("Entry No." = filter ('>1')));
        }

    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

}