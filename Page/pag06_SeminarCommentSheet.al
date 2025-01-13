page 50106 "CSD Seminar Comment Sheet"
{
    // CSD1.00 - 2024-01-10 - MaldiGitWork

    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    UsageCategory = Lists;
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; rec.Date)
                {
                }
                field(Code; rec.Code)
                {
                    Visible = false;
                }
                field(Comment; rec.Comment)
                {
                }
            }
        }
    }
    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        rec.SetupNewLine;
    end;
}