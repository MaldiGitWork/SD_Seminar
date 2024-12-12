page 50106 "CSD Seminar Comment Sheet"
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";

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
}