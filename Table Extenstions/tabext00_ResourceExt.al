tableextension 50100 "CSD ResourceExt" extends Resource
{
    // CSD1.00 - 2024-12-03 - MaldiGitWork

    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }

        field(50101; "CSD Resource Type"; Enum "CSD Resource Type")  // Changed enum name to match the enum object
        {
            Caption = 'Resource Type';
            DataClassification = CustomerContent;  // Added data classification
        }

        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = CustomerContent;
            MinValue = 0;  // Added validation to ensure positive values
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 5;  // Added decimal places specification
            MinValue = 0;  // Added validation to ensure positive values
        }
    }

    // Since you don't have any changes to keys and fieldgroups, 
    // you can remove these empty sections
}