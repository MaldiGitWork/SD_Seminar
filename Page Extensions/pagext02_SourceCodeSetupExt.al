pageextension 50102 "CSD SourceCodeSetupExt" extends "Source Code Setup"
{
    // CSD1.00 - 2024-12-03 - MaldiGitWork
    // Chapter 7 - Lab 1-8
    layout
    {
        addafter("Cost Accounting")
        {
            group("CSD SeminarGroup")
            {
                Caption = 'Seminar';
                field(Seminar; rec."CSD Seminar")
                {
                }
            }
        }
    }
    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}