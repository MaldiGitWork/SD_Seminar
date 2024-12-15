page 50101 "CSD Seminar Card"
// CSD1.00 - 2024-12-03 - MaldiGitWork
// Chapter 5 - Lab 2-4 & Lab 2-5 
{
    PageType = Card;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar Card';
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; rec."No.")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if rec.AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name; rec.Name)
                {
                }
                field("Search Name"; rec."Search Name")
                { }
                field("Seminar Duration"; rec."Seminar Duration")
                {
                }
                field("Minimum Participants"; rec."Minimum Participants")
                {
                }
                field("Maximum Participants"; rec."Maximum Participants")
                {
                }
                field(Blocked; rec.Blocked)
                {
                }
                field("Last Date Modified"; rec."Last Date Modified")
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


                field("Seminar Price"; rec."Seminar Price") { }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes) { }
        }
    }
    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar), "No." = field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }
}