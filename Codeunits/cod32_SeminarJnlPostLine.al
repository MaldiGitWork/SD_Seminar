codeunit 50132 "CSD Seminar Jnl.-Post Line"
// CSD1.00 - 2024-12-20 - MaldiGitWork
// Chapter 7 - Lab 2-8 
{
    TableNo = "CSD Seminar Journal Line";

    trigger OnRun()
    begin
        RunWithCheck(Rec);
    end;

    var
        SeminarJnlLine: Record "CSD Seminar Journal Line";
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
        SeminarRegister: Record "CSD Seminar Register";
        SeminarJnlCheckLine: Codeunit "CSD Seminar Jnl.-Check Line";
        NextEntryNo: Integer;

    procedure RunWithCheck(var SeminarJnLine2: Record "CSD Seminar Journal Line")
    begin
        SeminarJnlLine := SeminarJnLine2;
        PostLine();
        SeminarJnLine2 := SeminarJnlLine;
    end;

    local procedure PostLine()
    begin
        // Initialize NextEntryNo
        if NextEntryNo = 0 then begin
            SeminarLedgerEntry.LockTable();
            if SeminarLedgerEntry.FindLast() then
                NextEntryNo := SeminarLedgerEntry."Entry No." + 1
            else
                NextEntryNo := 1;
        end;

        // Handle Seminar Register
        if SeminarRegister."No." = 0 then begin
            SeminarRegister.LockTable();
            if (not SeminarRegister.FindLast()) or
               (SeminarRegister."To Entry No." <> 0) then begin
                SeminarRegister.Init();
                SeminarRegister."No." := SeminarRegister."No." + 1;
                SeminarRegister."From Entry No." := NextEntryNo;
                SeminarRegister."To Entry No." := NextEntryNo;
                SeminarRegister."Creation Date" := Today;
                SeminarRegister."Source Code" := SeminarJnlLine."Source Code";
                SeminarRegister."Journal Batch Name" := SeminarJnlLine."Journal Batch Name";
                SeminarRegister."User ID" := UserId;
                SeminarRegister.Insert();
            end;
        end;

        SeminarRegister."To Entry No." := NextEntryNo;
        SeminarRegister.Modify();

        // Create Seminar Ledger Entry
        SeminarLedgerEntry.Init();
        SeminarLedgerEntry.TransferFields(SeminarJnlLine); // Transfer matching fields
        SeminarLedgerEntry."Entry No." := NextEntryNo;
        NextEntryNo += 1;
        SeminarLedgerEntry.Insert();
    end;
}