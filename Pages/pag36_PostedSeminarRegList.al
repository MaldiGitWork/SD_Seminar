page 50136 "CSD Posted Seminar Reg. List"
{
    // CSD1.00 - 2024-01-10 - MaldiGitWork
    //   Chapter 7 - Lab 3
    //     - Created new page

    Caption = 'Seminar Registration List';
    CardPageID = "CSD Posted Seminar Reg.";
    Editable = false;
    PageType = List;
    SourceTable = 50118;

    layout
    {
        area(content)
        {
            repeater(Group)
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
                field(Status; rec.Status)
                {
                }
                field(Duration; rec.Duration)
                {
                }
                field("Maximum Participants"; rec."Maximum Participants")
                {
                }
                field("Room Resource No."; rec."Room Resource No.")
                {
                }
            }
        }
        area(factboxes)
        {
            part("CSD Seminar Details FactBox"; 50117)
            {
                SubPageLink = "No." = Field("Seminar No.");
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
                    //RunPageView = where("Document Type"=const("Posted Seminar Registration"));
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
    }
}
