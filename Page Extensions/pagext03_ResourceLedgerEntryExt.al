pageextension 50103 " CSD ResourceLedgerEntryExt" extends "Resource Ledger Entries"
{
    // CSD1.00 - 2024-01-10 - MaldiGitWork
    // Chapter 7 - Lab 4-3
    layout
    {
        addlast(Content)
        {
            field("Seminar No."; rec."CSD Seminar No.")
            {
            }
            field("Seminar Registration No."; rec."CSD Seminar Registration No.")
            {
            }
        }
    }
}