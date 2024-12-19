codeunit 50131 "CSD Seminar Jnl.-Check Line"
{
    // Chapter 7 - Lab 2-1 
    TableNo = "CSD Seminar Journal Line";

    var
        GLSetup: Record "General Ledger Setup";
        UserSetup: Record "User Setup";
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        ClosingDateTxt: Label 'cannot be a closing date.';
        PostingDateTxt: Label 'is not within your range of allowed posting dates.';

    trigger OnRun()
    begin
        if EmptyLine() then
            exit;
        RunCheck(Rec);
    end;

    procedure RunCheck(var SemJnlLine: Record "CSD Seminar Journal Line")
    begin
        if SemJnlLine."Posting Date" = ClosingDate(SemJnlLine."Posting Date") then
            SemJnlLine.FieldError("Posting Date", ClosingDateTxt);

        if SemJnlLine.Chargeable then
            SemJnlLine.TestField("Bill-to Customer No.");

        case SemJnlLine."Charge Type" of
            SemJnlLine."Charge Type"::Instructor:
                SemJnlLine.TestField("Instructor Resource No.");
            SemJnlLine."Charge Type"::Room:
                SemJnlLine.TestField("Room Resource No.");
            SemJnlLine."Charge Type"::Participant:
                SemJnlLine.TestField("Participant Contact No.");
        end;

        if SemJnlLine."Document Date" <> 0D then
            if SemJnlLine."Document Date" = ClosingDate(SemJnlLine."Document Date") then
                SemJnlLine.FieldError("Document Date", ClosingDateTxt);

        CheckPostingDate(SemJnlLine);
    end;

    local procedure CheckPostingDate(var SemJnlLine: Record "CSD Seminar Journal Line")
    begin
        if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
            if UserId <> '' then
                if UserSetup.Get(UserId) then begin
                    AllowPostingFrom := UserSetup."Allow Posting From";
                    AllowPostingTo := UserSetup."Allow Posting To";
                end;

            if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                GLSetup.Get();
                AllowPostingFrom := GLSetup."Allow Posting From";
                AllowPostingTo := GLSetup."Allow Posting To";
            end;

            if AllowPostingTo = 0D then
                AllowPostingTo := DMY2Date(31, 12, 9999);
        end;
        if (SemJnlLine."Posting Date" < AllowPostingFrom) or (SemJnlLine."Posting Date" > AllowPostingTo) then
            SemJnlLine.FieldError("Posting Date", PostingDateTxt);
    end;

    local procedure EmptyLine(): Boolean
    begin
        exit(false); // Implementation needed based on your requirements
    end;
}