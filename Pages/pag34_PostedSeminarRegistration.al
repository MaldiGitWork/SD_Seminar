page 50134 "CSD Posted Seminar Reg."
{
    // CSD1.00 - 2025-01-09 - MaldiGitWork
    //   Chapter 7 - Lab 3
    //     - Created new page
    //   Chapter 8 - Lab 2 - 4 
    //   Added Action Navigate 

    Caption = 'Posted Seminar Registration';
    Editable = false;
    PageType = Document;
    SourceTable = 50118;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; rec."No.")
                {
                }
                field("Starting Date"; rec."Starting Date")
                {
                }
                field("Seminar No."; rec."Seminar No.")
                {
                }
                field("Seminar Name"; rec."Seminar Name")
                {
                }
                field("Instructor Resource No."; rec."Instructor Resource No.")
                {
                }
                field("Instructor Name"; rec."Instructor Name")
                {
                }
                field("Posting Date"; rec."Posting Date")
                {
                }
                field("Document Date"; rec."Document Date")
                {
                }
                field(Status; rec.Status)
                {
                }
                field(Duration; rec.Duration)
                {
                }
                field("Minimum Participants"; rec."Minimum Participants")
                {
                }
                field("Maximum Participants"; rec."Maximum Participants")
                {
                }
            }
            part("SeminarRegistrationLines"; 50135)
            {
                SubPageLink = "Document No." = Field("No.");
            }
            group("Seminar Room")
            {
                field("Room Resource No."; rec."Room Resource No.")
                {
                }
                field("Room Name"; rec."Room Name")
                {
                }
                field("Room Address"; rec."Room Address")
                {
                }
                field("Room Address 2"; rec."Room Address 2")
                {
                }
                field("Room Post Code"; rec."Room Post Code")
                {
                }
                field("Room City"; rec."Room City")
                {
                }
                field("Room Country/Reg. Code"; rec."Room Country/Reg. Code")
                {
                }
                field("Room County"; rec."Room County")
                {
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; rec."Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; rec."VAT Prod. Posting Group")
                {
                }
                field("Seminar Price"; rec."Seminar Price")
                {
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details FactBox"; 50117)
            {
                SubPageLink = "No." = Field("Seminar No.");
            }
            part("Customer Details Factbox"; 9084)
            {
                Provider = "SeminarRegistrationLines";
                SubPageLink = "No." = Field("Bill-to Customer No.");
            }
            systempart(Links; links)
            {
            }
            systempart(Notes; notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50106;
                    RunPageLink = "No." = Field("No.");
                    //RunPageView = where("Document Type" = const("Posted Seminar Registration"));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50139;
                    RunPageLink = "Document No." = Field("No.");
                }
            }
        }
        area(Processing)
        {
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction();
                var
                    Navigate: page Navigate;
                begin
                    Navigate.SetDoc(rec."Posting Date", rec."No.");
                    Navigate.RUN;
                end;
            }
        }
    }
}