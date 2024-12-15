page 50124 "CSD Seminar Charges"
{
    // CSD1.00 - 2024-12-03 - MaldiGitWork
    //   Chapter 6 - Lab 1
    //     - Created new page

    AutoSplitKey = true;
    Caption = 'Seminar Charges';
    PageType = List;
    SourceTable = "CSD Seminar Charge";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; rec."No.")
                {
                }
                field(Description; rec.Description)
                {
                }
                field(Quantity; rec.Quantity)
                {
                }
                field("Unit of Measure Code"; rec."Unit of Measure Code")
                {
                }
                field("Bill-to Customer No."; rec."Bill-to Customer No.")
                {
                }
                field("Gen. Prod. Posting Group"; rec."Gen. Prod. Posting Group")
                {
                }
                field("Unit Price"; rec."Unit Price")
                {
                }
                field("Total Price"; rec."Total Price")
                {
                }
                field("To Invoice"; rec."To Invoice")
                {
                }
            }
        }
    }

    actions
    {
    }
}

