table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';
    // CSD1.00 - 2024-12-03 - MaldiGitWork
    // Chapter 5 - Lab 2-1 

    fields

    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }

        field(20; "Seminar Nos."; Code[20])
        {
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";

        }
        field(30; "Seminar Registration Nos."; code[20])
        {
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
        }
        field(40; "Posted Seminar Reg. Nos."; code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}
