page 50100 "CSD Seminar Setup"
// CSD1.00 - 2024-12-03 - MaldiGitWork
// Chapter 5 - Lab 2-3 
{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; rec."Seminar Nos.")
                {
                }
                field("Seminar Registration Nos.";
                rec."Seminar Registration Nos.")
                {
                }
                field("Posted Seminar Reg. Nos.";
                rec."Posted Seminar Reg. Nos.")
                {
                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;
    end;
}
