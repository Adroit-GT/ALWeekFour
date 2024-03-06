codeunit 50122 ErrorHandlingCU
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    procedure BuildError(ErrorTitle: Text[50]; ErrorMessage: Text[100]; ErrorDetailedMessage: Text[200]): ErrorInfo
    var
        myErrorInfo: ErrorInfo;
    begin
        myErrorInfo.Title(ErrorTitle);
        myErrorInfo.Message(ErrorMessage);
        myErrorInfo.DetailedMessage(ErrorDetailedMessage);
        exit(myErrorInfo);
    end;

    procedure FixTheError()
    var
        myInt: Integer;
    begin
        Message('Food is Served');
    end;
}