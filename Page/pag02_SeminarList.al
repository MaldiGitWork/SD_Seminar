page 50102 "CSD Seminar List"
// CSD1.00 - 2018-01-01 - D. E. Veloper 
// Chapter 5 - Lab 2-6 
{
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = "CSD Seminar";
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; rec."No.")
                {
                }
                field(Name; rec.Name)
                {
                }
                field("Seminar Duration";
                rec."Seminar Duration")
                {
                }
                field("Seminar Price"; rec."Seminar Price")
                {
                }
                field("Minimum Participants";
                rec."Minimum Participants")
                {
                }
                field("Maximum Participants";
                rec."Maximum Participants")
                {
                }
            }
        }
        area(FactBoxes)
        {
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
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table  
                 Name"=const(Seminar),"No."=field("No."); 
                 Image = Comment;
                }
            }
        }
    }
}