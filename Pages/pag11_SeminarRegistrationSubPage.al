page 50111 "CSD Seminar Reg. Subpage"
{
    // CSD1.00 - 2024-12-03 - MaldiGitWork
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Lines';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "CSD Seminar Registration Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; rec."Bill-to Customer No.")
                {
                }
                field("Participant Contact No."; rec."Participant Contact No.")
                {
                }
                field("Participant Name"; rec."Participant Name")
                {
                }
                field(Participated; rec.Participated)
                {
                }
                field("Registration Date"; rec."Registration Date")
                {
                }
                field("Confirmation Date"; rec."Confirmation Date")
                {
                }
                field("To Invoice"; rec."To Invoice")
                {
                }
                field(Registered; rec.Registered)
                {
                }
                field("Seminar Price"; rec."Seminar Price")
                {
                }
                field("Line Discount %"; rec."Line Discount %")
                {
                }
                field("Line Discount Amount"; rec."Line Discount Amount")
                {
                }
                field(Amount; rec.Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

