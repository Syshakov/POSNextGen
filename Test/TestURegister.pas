unit TestURegister;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, URegister, UProductDescription, USale, UProductCatalog, UMoney, UItemID;

type
  // Test methods for class TRegister

  TestTRegister = class(TTestCase)
  strict private
    FRegister: TRegister;
    FProductCatalog: TProductCatalog;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

implementation

procedure TestTRegister.SetUp;
begin
  FProductCatalog := TProductCatalog.Create;
  FRegister := TRegister.Create(FProductCatalog);
end;

procedure TestTRegister.TearDown;
begin
  FProductCatalog.Free;
  FProductCatalog := nil;
  FRegister.Free;
  FRegister := nil;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTRegister.Suite);
end.

