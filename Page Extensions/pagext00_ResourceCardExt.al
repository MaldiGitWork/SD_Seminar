pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2024-12-03 - MaldiGitWork
// Chapter 5 - Lab 1-2 
// Added new fields: 
// - Internal/External 
// - Maximum Participants 
// Added new FastTab  
// Added code to OnOpenPage trigger 
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the resource type';
            }
            field("CSD Quantity Per Day"; Rec."CSD Quantity Per Day")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the quantity per day';
            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the maximum number of participants';
                }
            }
        }
    }


    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (Rec.Type = Enum::"Type of Resource"::Room);
        CurrPage.Update(false);
    end;


    var
        [InDataSet]
        ShowMaxField: Boolean;
}