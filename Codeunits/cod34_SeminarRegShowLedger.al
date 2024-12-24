codeunit 50134 "CSD Seminar Reg.-Show Ledger"
{
    // Chapter 7 - Lab 2-10 
    // CSD1.00 - 2024-12-24 - MaldiGitWork
    //Created Registration Show Ledger Table
    TableNo = "CSD Seminar Register";

    trigger OnRun();
    begin
        SeminarLedgerEntry.SETRANGE("Entry No.", rec."From Entry No.", rec."To Entry No.");
        page.Run(Page::"CSD Seminar Ledger Entries", SeminarLedgerEntry);

    end;

    var
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
}