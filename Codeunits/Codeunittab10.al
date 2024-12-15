/*codeunit 50100 "CSD Seminar-No. Series Mgt."
{
    trigger OnRun()
    begin
    end;

    procedure InitSeries(No: Code[20]; SeriesCode: Code[20]; PostingDate: Date; var NewNo: Code[20]; var NewNoSeries: Code[20])
    var
        SeminarSetup: Record "CSD Seminar Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        SeminarSetup.Get();
        SeminarSetup.TestField("Seminar Registration Nos.");

        if No = '' then begin
            TestNoSeries(SeminarSetup);
            NoSeriesMgt.InitSeries(SeriesCode, xRec."No. Series", PostingDate, NewNo, NewNoSeries);
        end else begin
            NewNo := No;
            NewNoSeries := SeriesCode;
        end;
    end;

    local procedure TestNoSeries(SeminarSetup: Record "CSD Seminar Setup")
    begin
        with SeminarSetup do begin
            TestField("Seminar Registration Nos.");
            TestField("Posted Seminar Reg. Nos.");
        end;
    end;

    procedure SetupNewNo(var SeminarRegHeader: Record "CSD Seminar Reg. Header"; PostingDate: Date)
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        SeminarSetup: Record "CSD Seminar Setup";
    begin
        with SeminarRegHeader do begin
            if "No." = '' then begin
                SeminarSetup.Get();
                TestNoSeries(SeminarSetup);
                NoSeriesMgt.InitSeries(SeminarSetup."Seminar Registration Nos.", xRec."No. Series", PostingDate, "No.", "No. Series");
            end;
        end;
    end;

    procedure AssistEdit(var SeminarRegHeader: Record "CSD Seminar Reg. Header"): Boolean
    var
        SeminarSetup: Record "CSD Seminar Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        with SeminarRegHeader do begin
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Registration Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Registration Nos.", xRec."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("No.");
                exit(true);
            end;
        end;
    end;

    procedure SetPostingSeriesNo(var SeminarRegHeader: Record "CSD Seminar Reg. Header"): Boolean
    var
        SeminarSetup: Record "CSD Seminar Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        with SeminarRegHeader do begin
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Registration Nos.");
            SeminarSetup.TestField("Posted Seminar Reg. Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Posted Seminar Reg. Nos.", "Posting No. Series", "Posting No. Series") then begin
                NoSeriesMgt.SetSeries("Posting No.");
                exit(true);
            end;
        end;
    end;

    procedure TestPostingSeriesNo(var SeminarRegHeader: Record "CSD Seminar Reg. Header")
    var
        SeminarSetup: Record "CSD Seminar Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        with SeminarRegHeader do begin
            if "Posting No. Series" <> '' then begin
                SeminarSetup.Get();
                SeminarSetup.TestField("Seminar Registration Nos.");
                SeminarSetup.TestField("Posted Seminar Reg. Nos.");
                NoSeriesMgt.TestSeries(SeminarSetup."Posted Seminar Reg. Nos.", "Posting No. Series");
                TestField("Posting No.", '');
            end;
        end;
    end;

    procedure SetDefaultPostingNoSeries(var SeminarRegHeader: Record "CSD Seminar Reg. Header")
    var
        SeminarSetup: Record "CSD Seminar Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        with SeminarRegHeader do begin
            SeminarSetup.Get();
            NoSeriesMgt.SetDefaultSeries("Posting No. Series", SeminarSetup."Posted Seminar Reg. Nos.");
        end;
    end;
}*/