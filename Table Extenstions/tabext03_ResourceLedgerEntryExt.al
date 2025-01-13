tableextension 50103 "CSD ResourceLedgerEntryExt" extends "Res. Ledger Entry"
{
    // CSD1.00 - 2024-01-10 - MaldiGitWork
    // Chapter 7 - Lab 4-1 
    fields
    {
        field(50100; "CSD Seminar No."; code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
        }
        field(50101; "CSD Seminar Registration No."; code[20])
        {
            Caption = 'Seminar Registration No.';
            TableRelation = "CSD Seminar Reg. Header";
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }
}