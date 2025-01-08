page 50107 "CSD Seminar Comment List"
{
    Caption = 'Seminar Comment List';
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