tableextension 50100 "CSD ResourceExt" extends Resource
{
// CSD1.00 - 2024-12-03 - MaldiGitWork
    // Enum for Type
    enum 50100 "ResourceType"
{
    value(0; "Instructor")
    {
        Caption = 'Instructor';
    }
    value(1; "Room")
    {
        Caption = 'Room';
    }
}

// Enum for Resource Type
enum 50101 "CSD Resource Type Enum"
{
    value(0; Internal)
    {
        Caption = 'Internal';
    }
    value(1; External)
    {
        Caption = 'External';
    }
}

    fields
    { 
        modify("Profit %") 
        { 
            trigger OnAfterValidate() 
            begin 
                Rec.TestField("Unit Cost"); 
            end; 
        }

        modify(Type) 
        { 
            DataClassification = ToBeClassified; //Data classification
            // Change to reference the enum
            FieldClass = Enum;
                             EnumType = "ResourceType";
        }

        field(50101; "CSD Resource Type"; Enum "CSD Resource Type Enum")
        { 
            Caption = 'Resource Type';
        }

        field(50102; "CSD Maximum Participants"; Integer) 
        { 
            Caption = 'Maximum Participants'; 
        }

        field(50103; "CSD Quantity Per Day"; Decimal) 
        { 
            Caption = 'Quantity Per Day'; 
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }
}