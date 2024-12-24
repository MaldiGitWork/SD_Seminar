page 50122 "CSD Seminar Registers"
{
    // Chapter 7 - Lab 2-11 
    // CSD1.00 - 2024-12-24 - MaldiGitWork

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Register";
    Caption = 'Seminar Registers';
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(RegisterPageGroup)
            {
                field("No."; rec."No.")
                {

                }
                field("Creation Date"; rec."Creation Date")
                {

                }
                field("User ID"; rec."User ID")
                {

                }
                field("Source Code"; rec."Source Code")
                {

                }
                field("Journal Batch Name"; rec."Journal Batch Name")
                {

                }
            }
        }
        area(Factboxes)
        {
            systempart(Links; links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Notes; notes)
            {
                ApplicationArea = Notes;
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                Image = WarrantyLedger;
                RunObject = codeunit "CSD Seminar Reg.-Show Ledger";
            }
        }
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