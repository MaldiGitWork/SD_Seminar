page 50117 "CSD Seminar Details FactBox"
{
    // CSD1.00 - 2024-12-03 - MaldiGitWork
    //   Chapter 6 - Lab 2
    //     - Created new page

    Caption = 'Seminar Details';
    PageType = CardPart;
    SourceTable = "CSD Seminar";

    layout
    {
        area(content)
        {
            field("No."; rec."No.")
            {
            }
            field(Name; rec.Name)
            {
            }
            field("Seminar Duration"; rec."Seminar Duration")
            {
            }
            field("Minimum Participants"; rec."Minimum Participants")
            {
            }
            field("Maximum Participants"; rec."Maximum Participants")
            {
            }
            field("Seminar Price"; rec."Seminar Price")
            {
            }
        }
    }


}

