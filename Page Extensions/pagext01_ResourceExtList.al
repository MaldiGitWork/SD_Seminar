pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2024-12-03 - MaldiGitWork
// Chapter 5 - Lab 1-3 
// Changed property on the Type field 
// Added new fields: 
// - Internal/External 
// - Maximum Participants 
// Added code to OnOpenPage trigger 
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the resource type';
            }
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the maximum number of participants';
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowType := (Rec.GetFilter(Type) = '');
        ShowMaxField := (Rec.GetFilter(Type) = Format(Enum::"Type of Resource"::Room));
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}