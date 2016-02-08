program empiremodeler;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unitmain, unitobjectwizardform, unitsegmentwizardform
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormObjectWizard, FormObjectWizard);
  Application.CreateForm(TFormSegmentWizard, FormSegmentWizard);
  Application.Run;
end.
