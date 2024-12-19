tableextension 50101 "CSD SourceCodeSetupExt" extends "Source Code Setup"
{
    // CSD1.00 - 2024-12-03 - MaldiGitWork
    // Chapter 7 - Lab 1-7 
    // -    Added new fields: 
    // -    Seminar 
    fields
    {
        field(50100; "CSD Seminar"; Code[10])
        {
            Caption = 'Seminar';
            TableRelation = "Source Code";
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

    var
        myInt: Integer;
}