/*codeunit 50100 "CSD Seminar-Post"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 5-2
    //     - Created new codeunit

    TableNo = 50110;

    trigger OnRun();
    begin
    end;

    var
        SeminarRegHeader : Record "CSD Seminar Reg. Header";
        SeminarRegLine : Record "CSD Seminar Registration Line";
        PstdSeminarRegHeader : Record "CSD Posted Seminar Reg. Header";
        PstdSeminarRegLine : Record "CSD Posted Seminar Reg. Line";
        SeminarCommentLine : Record "CSD Seminar Comment Line";
        SeminarCommentLine2 : Record "CSD Seminar Comment Line";
        SeminarCharge : Record "CSD Seminar Charge";
        PstdSeminarCharge : Record "CSD Posted Seminar Charge";
        Room : Record Resource;
        Instructor : Record Resource;
        Customer : Record Customer;
        ResLedgEntry : Record "Res. Ledger Entry";
        SeminarJnlLine : Record "CSD Seminar Journal Line";
        SourceCodeSetup : Record "Source Code Setup";
        ResJnlLine : Record "Res. Journal Line";
        SeminarJnlPostLine : Codeunit "CSD Seminar Jnl.-Post Line";
        ResJnlPostLine : Codeunit "Res. Jnl.-Post Line";
        NoSeriesMgt : Codeunit NoSeriesManagement;
        DimMgt : Codeunit DimensionManagement;
        Window : Dialog;
        SourceCode : Code[10];
        LineCount : Integer;
        Text001 : Label 'There is no participant to post.';
        Text002 : Label 'Posting lines              #2######\';
        Text003 : Label 'Registration';
        Text004 : Label 'Registration %1  -> Posted Reg. %2';
        Text005 : Label 'The combination of dimensions used in %1 is blocked. %2';
        Text006 : Label 'The combination of dimensions used in %1,  line no. %2 is blocked. %3';
        Text007 : Label 'The dimensions used in %1 are invalid. %2';
        Text008 : Label 'The dimensions used in %1, line no. %2 are invalid. %3';

    local procedure CopyCommentLines(FromDocumentType : Integer;ToDocumentType : Integer;FromNumber : Code[20];ToNumber : Code[20]);
    begin
    end;

    local procedure CopyCharges(FromNumber : Code[20];ToNumber : Code[20]);
    begin
    end;

    local procedure PostResJnlLine(Resource : Record Resource) : Integer;
    begin
    end;

    local procedure PostSeminarJnlLine(ChargeType : Option Instructor,Room,Participant,Charge);
    begin
    end;

    local procedure PostCharges();
    begin
    end;
}

*/