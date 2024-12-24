page 50121 "CSD Seminar Ledger Entries"
{
    // CSD1.00 - 2024-12-20 - MaldiGitWork
    // Chapter 7 - Lab 2-9 

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Ledger Entry";
    Editable = false;
    Caption = 'Seminar Ledger Entries';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Posting Date"; rec."Posting Date")
                {

                }
                field("Document No."; rec."Document No.")
                {

                }
                field("Document Date"; rec."Document Date")
                {
                    Visible = false;
                }
                field("Entry Type"; rec."Entry Type")
                {

                }
                field("Seminar No."; rec."Seminar No.")
                {

                }
                field(Description; rec.Description)
                {

                }
                field("Bill-to Customer No."; rec."Bill-to Customer No.")
                {

                }
                field("Charge Type"; rec."Charge Type")
                {

                }
                field(Type; rec.Type)
                {

                }
                field(Quantity; rec.Quantity)
                {

                }
                field("Unit Price"; rec."Unit Price")
                {

                }
                field("Total Price"; rec."Total Price")
                {

                }
                field(Chargeable; rec.Chargeable)
                {

                }
                field("Participant Contact No."; rec."Participant Contact No.")
                {

                }
                field("Participant Name"; rec."Participant Name")
                {

                }
                field("Instructor Resource No."; rec."Instructor Resource No.")
                {

                }
                field("Room Resource No."; rec."Room Resource No.")
                {

                }
                field("Starting Date"; rec."Starting Date")
                {

                }
                field("Seminar Registration No."; rec."Seminar Registration No.")
                {

                }
            }
        }


        area(Factboxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = Notes;
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}