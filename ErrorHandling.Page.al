page 50120 ErrorHandling
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MyFixItError := ErrorHandlingCU.BuildError('The resulting number is overflowing'
                    , 'It Would appear you have your Integers and Decimal data types mixed up'
                    , 'Lemme explain for you. An int takes only whole numbers such as 0, 1, 2 while Decimals have numbers after . period separtor and as such can record remainders such as 4.2, 360.45');
                    // Actionable Errors are available from Release 2023, Wave 2. Currently we running on Version: W1 23.0
                    // MyFixItError.AddAction('Set value to Decimal', Codeunit::ErrorHandlingCU, 'FixTheError');
                    Error(MyFixItError);
                end;
            }
        }
    }

    var
        dimension, vendorCode : Text[30];
        MyFixItError: ErrorInfo;
        ErrorHandlingCU: Codeunit ErrorHandlingCU;

}
