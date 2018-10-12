table 50115 "ALIssue"
{

    fields
    {
        field(1; id; Integer)
        {
            dataclassification = CustomerContent;
            Caption = 'ID';
        }
        field(2; number; Integer)
        {
            dataclassification = CustomerContent;
            Caption = 'Number';
        }
        field(3; title; Text[250])
        {
            dataclassification = CustomerContent;
            Caption = 'Title';
        }
        field(5; created_at; DateTime)
        {
            dataclassification = CustomerContent;
            Caption = 'Created at';
        }
        field(6; user; text[50])
        {
            dataclassification = CustomerContent;
            Caption = 'User';
        }
        field(7; state; text[30])
        {
            dataclassification = CustomerContent;
            Caption = 'State';
        }
        field(8; html_url; text[250])
        {
            dataclassification = CustomerContent;
            Caption = 'URL';
        }
    }

    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }

    procedure RefreshIssues()
    var
        RefreshALIssues: Codeunit RefreshALIssueCode;
    begin
        RefreshALIssues.Refresh();
    end;

    procedure GetRandomIssue()
    var
        RandomIssue: Integer;
    begin
        Randomize();
        RandomIssue := Random(Count());

        FindFirst();
        next(RandomIssue);
    end;

}