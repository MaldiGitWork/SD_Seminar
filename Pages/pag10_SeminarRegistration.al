page 50110 "CSD Seminar Registration"
{
    // CSD1.00 - 2024-12-03 - MaldiGitWork
    //   Chapter 6 - Lab 3-1
    //     - Created new page

    Caption = 'Seminar Registration';
    PageType = Document;
    SourceTable = "CSD Seminar Reg. Header";
    UsageCategory = tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; rec."No.")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.UPDATE;
                    end;
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
            part(SeminarRegistrationLines; "CSD Seminar Reg. Subpage")
            {
                Caption = 'Lines';
                SubPageLink = "Document No." = field("No.");
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
            part("Seminar Details FactBox"; "CSD Seminar Details FactBox")
            {
                SubPageLink = "No." = field("Seminar No.");
            }
            part("Customer Details FactBox"; "Customer Details FactBox")
            {
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = field("Bill-to Customer No.");
            }
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
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
                    //RunPageView = where("Table Name"= const(" "));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                }
            }
        }
    }
}

