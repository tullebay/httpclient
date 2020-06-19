unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, activex,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.ValEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PC: TPageControl;
    tsHTTPSource: TTabSheet;
    mmResponse: TMemo;
    StatusBar1: TStatusBar;
    tsWebPage: TTabSheet;
    wb: TWebBrowser;
    tsHeards: TTabSheet;
    Panel2: TPanel;
    mmRequest: TMemo;
    Splitter1: TSplitter;
    Panel3: TPanel;
    mmData: TMemo;
    pcRequest: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    leUsernameVarname: TLabeledEdit;
    leUsernameValue: TLabeledEdit;
    lePasswordValue: TLabeledEdit;
    lePasswordVarname: TLabeledEdit;
    Label2: TLabel;
    Panel4: TPanel;
    cbbMethod: TComboBox;
    edtURL: TEdit;
    Button1: TButton;
    leHost: TLabeledEdit;
    leReferer: TLabeledEdit;
    leUserAgent: TLabeledEdit;
    leContentType: TLabeledEdit;
    HTTP: TIdHTTP;
    procedure Button1Click(Sender: TObject);
    procedure edtURLChange(Sender: TObject);
  private
    { Private declarations }
    procedure FillRequestHeader;
    procedure AddHead(var AHeaders:TNetHeaders; const AName,AValue:string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AddHead(var AHeaders: TNetHeaders; const AName, AValue: string);
begin
  SetLength(AHeaders, length(AHeaders)+1);
  AHeaders[High(AHeaders)] := TNameValuePair.Create(AName,Avalue);

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  postdata: TStrings;


  ResponseData: TStringStream;
  i: integer;
  aHeaders :TNetHeaders;


begin



     HTTP.Request.UserAgent := leUserAgent.Text;
     HTTP.Request.ContentType := leContentType.text;

   PostData := TStringlist.Create;

   PostData.AddPair(leUsernameVarName.Text,leUsernameValue.text);
   PostData.AddPair(lePasswordVarName.Text , lePasswordValue.text);



  case cbbMethod.ItemIndex of
    0:
      begin
        // GET
        ResponseData := TStringStream.Create('', TEncoding.UTF8);
        ResponseData.Clear;

        Http.get(edtURL.Text, ResponseData);

      end;
    1:
      begin
        // POST

        ResponseData := TStringStream.Create('', TEncoding.UTF8);
        ResponseData.Clear;
//        ir := HttpClient.Post(edtURL.Text,
//                              postData,
//                              ResponseData,
//                              TEncoding.UTF8,
//                              AHeaders);

      end;
    2:
      begin

      end;
  end;

  mmResponse.lines.Add('==Status============================');


  mmResponse.lines.Add('==header============================');


  mmResponse.lines.Add('');


  mmResponse.lines.Add('==Cookies============================');

  mmResponse.lines.Add('');

  i := length(ResponseData.DataString);

  mmResponse.lines.Add('==Response===(length: '+ inttostr(i) +')================');
  mmResponse.lines.Add(ResponseData.DataString);
  mmResponse.lines.Add('');

//  wb.Navigate('about:blank');
//  if Assigned(wb.Document) then
//  begin
//    ResponseData.Seek(0, 0);
//
//    (wb.Document as IPersistStreamInit)
//      .Load(TStreamAdapter.Create(ResponseData));
//
//  end;
//  wb.Stop;

  freeandnil(ResponseData);


end;



procedure TForm1.edtURLChange(Sender: TObject);
var
  s,e:integer;
  mid:string;
begin

  s:= pos('://',edtURL.Text)+3;

  mid := copy(edtURL.Text,s, length(edtURL.Text));
  e:= pos('/',mid);

  if e=0 then

    leHost.Text := mid
  else
    leHost.Text := copy(mid,1,e-1);

end;

procedure TForm1.FillRequestHeader;


begin




end;

end.
