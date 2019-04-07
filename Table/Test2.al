table 50000 GITTestingTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; TestCode; Code[10]) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(PK; TestCode)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Data Inserted');
    end;

    trigger OnModify()
    begin
        Message('data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data Rename');
    end;

}