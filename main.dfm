object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'HTTP Request Contrusctor'
  ClientHeight = 624
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 241
    Align = alTop
    TabOrder = 0
    object pcRequest: TPageControl
      Left = 1
      Top = 50
      Width = 1033
      Height = 190
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Auth Info'
        object Label1: TLabel
          Left = 17
          Top = 32
          Width = 57
          Height = 25
          Caption = #30331#24405#21517
        end
        object Label2: TLabel
          Left = 30
          Top = 107
          Width = 44
          Height = 25
          Caption = #23494#30721' '
        end
        object leUsernameVarname: TLabeledEdit
          Left = 80
          Top = 32
          Width = 177
          Height = 33
          EditLabel.Width = 57
          EditLabel.Height = 25
          EditLabel.Caption = #21464#37327#21517
          TabOrder = 0
          Text = 'os_username'
        end
        object leUsernameValue: TLabeledEdit
          Left = 272
          Top = 32
          Width = 161
          Height = 33
          EditLabel.Width = 19
          EditLabel.Height = 25
          EditLabel.Caption = #20540
          TabOrder = 1
          Text = 'tull'
        end
        object lePasswordValue: TLabeledEdit
          Left = 272
          Top = 99
          Width = 161
          Height = 33
          EditLabel.Width = 19
          EditLabel.Height = 25
          EditLabel.Caption = #20540
          TabOrder = 2
          Text = '112345'
        end
        object lePasswordVarname: TLabeledEdit
          Left = 80
          Top = 99
          Width = 177
          Height = 33
          EditLabel.Width = 57
          EditLabel.Height = 25
          EditLabel.Caption = #21464#37327#21517
          TabOrder = 3
          Text = 'os_password'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Headers'
        ImageIndex = 1
        object leHost: TLabeledEdit
          Left = 85
          Top = 19
          Width = 185
          Height = 33
          EditLabel.Width = 49
          EditLabel.Height = 25
          EditLabel.Caption = 'Host '
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object leReferer: TLabeledEdit
          Left = 85
          Top = 58
          Width = 340
          Height = 33
          EditLabel.Width = 72
          EditLabel.Height = 25
          EditLabel.Caption = 'Referer '
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object leUserAgent: TLabeledEdit
          Left = 133
          Top = 97
          Width = 292
          Height = 33
          EditLabel.Width = 110
          EditLabel.Height = 25
          EditLabel.Caption = 'User-Agent '
          LabelPosition = lpLeft
          TabOrder = 2
          Text = 
            'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101' +
            ' Firefox/66.0'
        end
        object leContentType: TLabeledEdit
          Left = 541
          Top = 19
          Width = 292
          Height = 33
          EditLabel.Width = 132
          EditLabel.Height = 25
          EditLabel.Caption = 'Content-Type '
          LabelPosition = lpLeft
          TabOrder = 3
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1033
      Height = 49
      Align = alTop
      TabOrder = 1
      DesignSize = (
        1033
        49)
      object cbbMethod: TComboBox
        Left = 4
        Top = 7
        Width = 81
        Height = 33
        ItemIndex = 0
        TabOrder = 0
        Text = 'GET'
        Items.Strings = (
          'GET'
          'POST'
          'DELETE')
      end
      object edtURL: TEdit
        Left = 89
        Top = 7
        Width = 944
        Height = 33
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        Text = 'http://www.google.com'
        OnChange = edtURLChange
      end
      object Button1: TButton
        Left = 985
        Top = 7
        Width = 48
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Go'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  object PC: TPageControl
    Left = 0
    Top = 241
    Width = 1035
    Height = 364
    ActivePage = tsHeards
    Align = alClient
    TabOrder = 1
    object tsHeards: TTabSheet
      Caption = 'Request'
      ImageIndex = 2
      object Splitter1: TSplitter
        Left = 0
        Top = 130
        Width = 1027
        Height = 7
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 914
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'Extra Request Headers (e.g. cookies    abc: blablabla )'
        TabOrder = 0
      end
      object mmRequest: TMemo
        Left = 0
        Top = 41
        Width = 1027
        Height = 89
        Align = alTop
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 0
        Top = 137
        Width = 1027
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'Data'
        TabOrder = 2
      end
      object mmData: TMemo
        Left = 0
        Top = 178
        Width = 1027
        Height = 146
        Align = alClient
        TabOrder = 3
        ExplicitTop = 176
      end
    end
    object tsHTTPSource: TTabSheet
      Caption = 'Response'
      object mmResponse: TMemo
        Left = 0
        Top = 0
        Width = 1027
        Height = 324
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tsWebPage: TTabSheet
      Caption = 'Web Page'
      ImageIndex = 1
      object wb: TWebBrowser
        Left = 0
        Top = 0
        Width = 1027
        Height = 324
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = -2
        ControlData = {
          4C000000256A00007D2100000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 605
    Width = 1035
    Height = 19
    Panels = <>
  end
  object HTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 853
    Top = 110
  end
end
