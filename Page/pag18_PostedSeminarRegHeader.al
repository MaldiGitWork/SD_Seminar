page 50118 "CSD Posted Seminar Reg.Header"
{
    // CSD1.00 - 2025-01-08 - MaldiGitWork
    // Chapter 7 - Lab 3-1 
    //Created Page for - Created CSD Posted Seminar Reg.header

    Caption = 'Posted Seminar Reg.Header';
    SourceTable = "CSD Posted Seminar Reg. Header";
    PageType = Document;
    Editable = false;  // Posted documents should not be editable
    UsageCategory = History;  // Changed from tasks to History as this is for posted documents
    ApplicationArea = All;    // Added ApplicationArea

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field("Starting Date"; Rec."Starting Date") { ApplicationArea = All; }
                field("Seminar No."; Rec."Seminar No.") { ApplicationArea = All; }
                field("Seminar Name"; Rec."Seminar Name") { ApplicationArea = All; }
                field("Instructor Resource No."; Rec."Instructor Resource No.") { ApplicationArea = All; }
                field("Instructor Name"; Rec."Instructor Name") { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
                field(Duration; Rec.Duration) { ApplicationArea = All; }
                field("Maximum Participants"; Rec."Maximum Participants") { ApplicationArea = All; }
                field("Minimum Participants"; Rec."Minimum Participants") { ApplicationArea = All; }
            }
            group(Room)
            {
                field("Room Resource No."; Rec."Room Resource No.") { ApplicationArea = All; }
                field("Room Name"; Rec."Room Name") { ApplicationArea = All; }
                field("Room Address"; Rec."Room Address") { ApplicationArea = All; }
                field("Room Address 2"; Rec."Room Address 2") { ApplicationArea = All; }
                field("Room Post Code"; Rec."Room Post Code") { ApplicationArea = All; }
                field("Room City"; Rec."Room City") { ApplicationArea = All; }
                field("Room Country/Reg. Code"; Rec."Room Country/Reg. Code") { ApplicationArea = All; }
                field("Room County"; Rec."Room County") { ApplicationArea = All; }
            }
            group(Posting)
            {
                field("Seminar Price"; Rec."Seminar Price") { ApplicationArea = All; }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group") { ApplicationArea = All; }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group") { ApplicationArea = All; }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                    Caption = 'Comment';
                    Editable = false;
                }
                field("Posting Date"; Rec."Posting Date") { ApplicationArea = All; }
                field("Document Date"; Rec."Document Date") { ApplicationArea = All; }
                field("Reason Code"; Rec."Reason Code") { ApplicationArea = All; }
                field("No. Series"; Rec."No. Series") { ApplicationArea = All; }
                field("Posting No. Series"; Rec."Posting No. Series") { ApplicationArea = All; }
                field("User Id"; Rec."User Id")
                {
                    ApplicationArea = All;
                    Caption = 'User Id';
                    TableRelation = User;
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                    Caption = 'Source Code';
                    TableRelation = "Source Code";
                }
            }
        }
    }
}