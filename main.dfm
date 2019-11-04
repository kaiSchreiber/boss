object FormMain: TFormMain
  Left = 196
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Binocular Optics Simulation Software'
  ClientHeight = 410
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 8
    Top = 109
    Width = 7
    Height = 13
    Caption = 'Y'
    OnClick = Label5Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 297
    Height = 409
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Eye Position'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 96
        Width = 281
        Height = 81
        Caption = 'Vertical Eye Position'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 32
          Width = 35
          Height = 13
          Caption = 'Version'
          OnClick = Label1Click
        end
        object Label2: TLabel
          Left = 8
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Vergence'
          OnClick = Label2Click
        end
        object VerVer: TEdit
          Left = 64
          Top = 24
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = '0'
          OnChange = HorVerChange
        end
        object VerVrg: TEdit
          Left = 64
          Top = 48
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '0'
          OnChange = HorVerChange
        end
        object VGScroll: TScrollBar
          Left = 112
          Top = 48
          Width = 153
          Height = 16
          Hint = 'Set vertical vergence'
          LargeChange = 8
          Max = 80
          Min = -80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = VGScrollChange
        end
        object VVScroll: TScrollBar
          Left = 112
          Top = 24
          Width = 153
          Height = 16
          Hint = 'Set vertical version'
          LargeChange = 8
          Max = 80
          Min = -80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = VVScrollChange
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 8
        Width = 281
        Height = 81
        Caption = 'Horizontal Eye Position'
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 32
          Width = 35
          Height = 13
          Caption = 'Version'
          OnClick = Label4Click
        end
        object Label5: TLabel
          Left = 8
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Vergence'
          OnClick = Label5Click
        end
        object HorVer: TEdit
          Left = 64
          Top = 24
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = '0'
          OnChange = HorVerChange
        end
        object HorVrg: TEdit
          Left = 64
          Top = 48
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '0'
          OnChange = HorVerChange
        end
        object HVScroll: TScrollBar
          Left = 112
          Top = 24
          Width = 153
          Height = 16
          Hint = 'Set horizontal version'
          LargeChange = 8
          Max = 80
          Min = -80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = HVScrollChange
        end
        object HGScroll: TScrollBar
          Left = 112
          Top = 48
          Width = 153
          Height = 16
          Hint = 'Set horizontal vergence'
          LargeChange = 8
          Max = 80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = HGScrollChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 184
        Width = 281
        Height = 129
        Caption = 'Torsional Eye Position'
        TabOrder = 2
        object Label3: TLabel
          Left = 8
          Top = 32
          Width = 35
          Height = 13
          Caption = 'Version'
          OnClick = Label3Click
        end
        object Label6: TLabel
          Left = 8
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Vergence'
          OnClick = Label6Click
        end
        object Label24: TLabel
          Left = 112
          Top = 104
          Width = 30
          Height = 13
          Caption = 'Listing'
        end
        object Label26: TLabel
          Left = 248
          Top = 104
          Width = 12
          Height = 13
          Caption = 'L2'
        end
        object DondersAmount: TLabel
          Left = 172
          Top = 104
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = '0.00'
        end
        object UseDonders: TRadioButton
          Left = 8
          Top = 80
          Width = 97
          Height = 17
          Caption = 'Donder'#39's Law:'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = L2Click
        end
        object Custom: TRadioButton
          Left = 8
          Top = 104
          Width = 89
          Height = 17
          Caption = 'Free Torsion'
          TabOrder = 1
          OnClick = L2Click
        end
        object TorVer: TEdit
          Left = 64
          Top = 24
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          OnChange = HorVerChange
        end
        object TorVrg: TEdit
          Left = 64
          Top = 48
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 3
          Text = '0'
          OnChange = HorVerChange
        end
        object TGScroll: TScrollBar
          Left = 112
          Top = 48
          Width = 153
          Height = 17
          Hint = 'Set torsional vergence'
          Enabled = False
          LargeChange = 8
          Max = 180
          Min = -180
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnChange = TGScrollChange
        end
        object TVScroll: TScrollBar
          Left = 112
          Top = 24
          Width = 153
          Height = 16
          Hint = 'Set torsional version'
          Enabled = False
          LargeChange = 8
          Max = 180
          Min = -180
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnChange = TVScrollChange
        end
        object PickDonders: TScrollBar
          Left = 112
          Top = 80
          Width = 153
          Height = 16
          PageSize = 0
          TabOrder = 6
          OnChange = PickDondersChange
        end
      end
      object GroupBox14: TGroupBox
        Left = 0
        Top = 320
        Width = 281
        Height = 57
        Caption = 'Magnification'
        TabOrder = 3
        object Label35: TLabel
          Left = 96
          Top = 16
          Width = 39
          Height = 13
          Caption = 'Left Eye'
        end
        object Label36: TLabel
          Left = 144
          Top = 16
          Width = 7
          Height = 13
          Caption = 'X'
        end
        object Label37: TLabel
          Left = 208
          Top = 16
          Width = 7
          Height = 13
          Caption = 'Y'
        end
        object Label38: TLabel
          Left = 88
          Top = 32
          Width = 46
          Height = 13
          Caption = 'Right Eye'
        end
        object Label39: TLabel
          Left = 144
          Top = 32
          Width = 7
          Height = 13
          Caption = 'X'
        end
        object Label40: TLabel
          Left = 208
          Top = 32
          Width = 7
          Height = 13
          Caption = 'Y'
        end
        object MagLEX: TEdit
          Left = 160
          Top = 8
          Width = 41
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = '1'
          OnChange = HorVerChange
        end
        object MagLEY: TEdit
          Left = 224
          Top = 8
          Width = 41
          Height = 21
          Enabled = False
          TabOrder = 1
          Text = '1'
          OnChange = HorVerChange
        end
        object MagREX: TEdit
          Left = 160
          Top = 32
          Width = 41
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '1'
          OnChange = HorVerChange
        end
        object MagREY: TEdit
          Left = 224
          Top = 32
          Width = 41
          Height = 21
          Enabled = False
          TabOrder = 3
          Text = '1'
          OnChange = HorVerChange
        end
        object ActivateMag: TCheckBox
          Left = 8
          Top = 24
          Width = 65
          Height = 17
          Caption = 'Activate'
          TabOrder = 4
          OnClick = ActivateMagClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Reference'
      ImageIndex = 3
      object GroupBox11: TGroupBox
        Left = 0
        Top = 8
        Width = 281
        Height = 81
        Caption = 'Horizontal Eye Position'
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label27: TLabel
          Left = 8
          Top = 32
          Width = 35
          Height = 13
          Caption = 'Version'
          OnClick = Label27Click
        end
        object Label28: TLabel
          Left = 8
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Vergence'
          OnClick = Label28Click
        end
        object CSHorVer: TEdit
          Left = 64
          Top = 24
          Width = 41
          Height = 21
          Color = clWhite
          ReadOnly = True
          TabOrder = 0
          Text = '0'
          OnChange = CSHorVerChange
        end
        object CSHorVrg: TEdit
          Left = 64
          Top = 48
          Width = 41
          Height = 21
          Color = clWhite
          ReadOnly = True
          TabOrder = 1
          Text = '0'
          OnChange = CSHorVerChange
        end
        object CSHVScroll: TScrollBar
          Left = 112
          Top = 24
          Width = 153
          Height = 16
          Hint = 'Set horizontal version'
          LargeChange = 8
          Max = 80
          Min = -80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = CSHVScrollChange
        end
        object CSHGScroll: TScrollBar
          Left = 112
          Top = 48
          Width = 153
          Height = 16
          Hint = 'Set horizontal vergence'
          LargeChange = 8
          Max = 80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = CSHGScrollChange
        end
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 96
        Width = 281
        Height = 81
        Caption = 'Vertical Eye Position'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label29: TLabel
          Left = 8
          Top = 32
          Width = 35
          Height = 13
          Caption = 'Version'
          OnClick = Label29Click
        end
        object Label30: TLabel
          Left = 8
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Vergence'
          OnClick = Label30Click
        end
        object CSVerVer: TEdit
          Left = 64
          Top = 24
          Width = 41
          Height = 21
          Color = clWhite
          ReadOnly = True
          TabOrder = 0
          Text = '0'
          OnChange = CSHorVerChange
        end
        object CSVerVrg: TEdit
          Left = 64
          Top = 48
          Width = 41
          Height = 21
          Color = clWhite
          ReadOnly = True
          TabOrder = 1
          Text = '0'
          OnChange = CSHorVerChange
        end
        object CSVGScroll: TScrollBar
          Left = 112
          Top = 48
          Width = 153
          Height = 16
          Hint = 'Set vertical vergence'
          LargeChange = 8
          Max = 80
          Min = -80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = CSVGScrollChange
        end
        object CSVVScroll: TScrollBar
          Left = 112
          Top = 24
          Width = 153
          Height = 16
          Hint = 'Set vertical version'
          LargeChange = 8
          Max = 80
          Min = -80
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = CSVVScrollChange
        end
      end
      object GroupBox13: TGroupBox
        Left = 0
        Top = 184
        Width = 281
        Height = 129
        Caption = 'Torsional Eye Position'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label31: TLabel
          Left = 8
          Top = 32
          Width = 35
          Height = 13
          Caption = 'Version'
          OnClick = Label31Click
        end
        object Label32: TLabel
          Left = 8
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Vergence'
          OnClick = Label32Click
        end
        object Label33: TLabel
          Left = 112
          Top = 104
          Width = 30
          Height = 13
          Caption = 'Listing'
        end
        object Label34: TLabel
          Left = 248
          Top = 104
          Width = 12
          Height = 13
          Caption = 'L2'
        end
        object CSDondersAmount: TLabel
          Left = 172
          Top = 104
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = '0.00'
        end
        object CSUseDonders: TRadioButton
          Left = 8
          Top = 80
          Width = 97
          Height = 17
          Caption = 'Donder'#39's Law:'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = CSCustomClick
        end
        object CSCustom: TRadioButton
          Left = 8
          Top = 104
          Width = 89
          Height = 17
          Caption = 'Free Torsion'
          TabOrder = 1
          OnClick = CSCustomClick
        end
        object CSTorVer: TEdit
          Left = 64
          Top = 24
          Width = 41
          Height = 21
          Color = clWhite
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          OnChange = CSHorVerChange
        end
        object CSTorVrg: TEdit
          Left = 64
          Top = 48
          Width = 41
          Height = 21
          Color = clWhite
          ReadOnly = True
          TabOrder = 3
          Text = '0'
          OnChange = CSHorVerChange
        end
        object CSTGScroll: TScrollBar
          Left = 112
          Top = 48
          Width = 153
          Height = 17
          Hint = 'Set torsional vergence'
          Enabled = False
          LargeChange = 8
          Max = 180
          Min = -180
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnChange = CSTGScrollChange
        end
        object CSTVScroll: TScrollBar
          Left = 112
          Top = 24
          Width = 153
          Height = 16
          Hint = 'Set torsional version'
          Enabled = False
          LargeChange = 8
          Max = 180
          Min = -180
          PageSize = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnChange = CSTVScrollChange
        end
        object CSPickDonders: TScrollBar
          Left = 112
          Top = 80
          Width = 153
          Height = 16
          PageSize = 0
          TabOrder = 6
          OnChange = CSPickDondersChange
        end
      end
      object UnlockIt: TCheckBox
        Left = 72
        Top = 328
        Width = 201
        Height = 17
        Caption = 'Unlock Reference Coordinate System'
        TabOrder = 3
        OnClick = UnlockItClick
      end
      object UseCS: TCheckBox
        Left = 8
        Top = 328
        Width = 57
        Height = 17
        Caption = 'Use It'
        TabOrder = 4
        OnClick = UseCSClick
      end
      object CSEpipolar: TCheckBox
        Left = 8
        Top = 352
        Width = 273
        Height = 17
        Caption = 'Epipolar Coordinates (Change with eye position)'
        Enabled = False
        TabOrder = 5
        OnClick = CSEpipolarClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Target Plane'
      ImageIndex = 1
      object GroupBox7: TGroupBox
        Left = 0
        Top = 8
        Width = 281
        Height = 97
        Caption = 'Target Plane Position'
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 20
          Width = 7
          Height = 13
          Caption = 'X'
          OnClick = Label8Click
        end
        object Label9: TLabel
          Left = 8
          Top = 44
          Width = 7
          Height = 13
          Caption = 'Y'
          OnClick = Label9Click
        end
        object Label11: TLabel
          Left = 8
          Top = 68
          Width = 7
          Height = 13
          Caption = 'Z'
          OnClick = Label11Click
        end
        object PlaneX: TEdit
          Left = 64
          Top = 16
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = '11'
          OnChange = PlaneXChange
        end
        object PlaneXScroll: TScrollBar
          Left = 112
          Top = 16
          Width = 153
          Height = 16
          LargeChange = 8
          Max = 800
          PageSize = 0
          Position = 44
          TabOrder = 1
          OnChange = PlaneXScrollChange
        end
        object PlaneYScroll: TScrollBar
          Left = 112
          Top = 40
          Width = 153
          Height = 16
          LargeChange = 8
          Max = 800
          Min = -800
          PageSize = 0
          TabOrder = 2
          OnChange = PlaneYScrollChange
        end
        object PlaneY: TEdit
          Left = 64
          Top = 40
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 3
          Text = '0'
          OnChange = PlaneXChange
        end
        object PlaneZ: TEdit
          Left = 64
          Top = 64
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 4
          Text = '0'
          OnChange = PlaneXChange
        end
        object PlaneZScroll: TScrollBar
          Left = 112
          Top = 64
          Width = 153
          Height = 16
          LargeChange = 8
          Max = 800
          Min = -800
          PageSize = 0
          TabOrder = 5
          OnChange = PlaneZScrollChange
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 112
        Width = 281
        Height = 97
        Caption = 'Target Plane Orientation'
        TabOrder = 1
        object Label12: TLabel
          Left = 8
          Top = 20
          Width = 47
          Height = 13
          Caption = 'Horizontal'
          OnClick = Label12Click
        end
        object Label13: TLabel
          Left = 8
          Top = 68
          Width = 43
          Height = 13
          Caption = 'Torsional'
          OnClick = Label13Click
        end
        object Label14: TLabel
          Left = 8
          Top = 44
          Width = 35
          Height = 13
          Caption = 'Vertical'
          OnClick = Label14Click
        end
        object PlaneAH: TEdit
          Left = 64
          Top = 16
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = '0'
          OnChange = PlaneXChange
        end
        object PlaneAV: TEdit
          Left = 64
          Top = 40
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '0'
          OnChange = PlaneXChange
        end
        object PlaneAT: TEdit
          Left = 64
          Top = 64
          Width = 41
          Height = 21
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          OnChange = PlaneXChange
        end
        object PlaneATScroll: TScrollBar
          Left = 112
          Top = 64
          Width = 153
          Height = 16
          LargeChange = 8
          Max = 90
          Min = -90
          PageSize = 0
          TabOrder = 3
          OnChange = PlaneATScrollChange
        end
        object PlaneAVScroll: TScrollBar
          Left = 112
          Top = 40
          Width = 153
          Height = 16
          LargeChange = 8
          Max = 90
          Min = -90
          PageSize = 0
          TabOrder = 4
          OnChange = PlaneAVScrollChange
        end
        object PlaneAHScroll: TScrollBar
          Left = 112
          Top = 16
          Width = 153
          Height = 16
          LargeChange = 8
          Max = 90
          Min = -90
          PageSize = 0
          TabOrder = 5
          OnChange = PlaneAHScrollChange
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 216
        Width = 281
        Height = 73
        Caption = 'Target Plane Composition'
        TabOrder = 2
        object Label15: TLabel
          Left = 8
          Top = 20
          Width = 28
          Height = 13
          Caption = 'Width'
        end
        object Label16: TLabel
          Left = 8
          Top = 44
          Width = 31
          Height = 13
          Caption = 'Height'
        end
        object Label17: TLabel
          Left = 136
          Top = 20
          Width = 52
          Height = 13
          Caption = '# Dots Hor'
        end
        object Label18: TLabel
          Left = 136
          Top = 44
          Width = 51
          Height = 13
          Caption = '# Dots Ver'
        end
        object targetPlaneWidth: TEdit
          Left = 64
          Top = 16
          Width = 49
          Height = 21
          Hint = 'Horizontal size of plane in cm'
          TabOrder = 0
          Text = '5'
          OnChange = PlaneXChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object targetPlaneHeight: TEdit
          Left = 64
          Top = 40
          Width = 49
          Height = 21
          Hint = 'Vertical size of plane in cm'
          TabOrder = 1
          Text = '5'
          OnChange = PlaneXChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object targetPlaneNumX: TEdit
          Left = 200
          Top = 16
          Width = 49
          Height = 21
          Hint = 'Number of dots in horizontal direction'
          TabOrder = 2
          Text = '10'
          OnChange = PlaneXChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object targetPlaneNumY: TEdit
          Left = 200
          Top = 40
          Width = 49
          Height = 21
          Hint = 'Number of dots in vertical direction'
          TabOrder = 3
          Text = '10'
          OnChange = PlaneXChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 296
        Width = 281
        Height = 81
        Hint = 
          'Set automatic alignment and position change for the target plane' +
          ' here. If  the eyes have vertical vergence, the average vertical' +
          ' position (version value) is used for these computations.'
        Caption = 'Target Plane Alignment'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        object Label19: TLabel
          Left = 160
          Top = 37
          Width = 6
          Height = 13
          Caption = 'h'
        end
        object Label20: TLabel
          Left = 214
          Top = 37
          Width = 6
          Height = 13
          Caption = 'v'
        end
        object Label21: TLabel
          Left = 152
          Top = 56
          Width = 12
          Height = 13
          Caption = 'dh'
        end
        object Label22: TLabel
          Left = 208
          Top = 56
          Width = 12
          Height = 13
          Caption = 'dv'
        end
        object Label25: TLabel
          Left = 176
          Top = 18
          Width = 36
          Height = 13
          Caption = 'dFactor'
        end
        object FixationLock: TCheckBox
          Left = 16
          Top = 18
          Width = 145
          Height = 17
          Hint = 'Keep the center of the target plane at the fixation targett'
          Caption = 'Lock position to fixation'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = FixationLockClick
        end
        object SlantAdjust: TCheckBox
          Left = 16
          Top = 37
          Width = 129
          Height = 17
          Hint = 
            'Set the oriantation of the target plane to be orthogonal to cycl' +
            'opean gaze'
          Caption = 'Cyclopean gaze slant'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = SlantAdjustClick
        end
        object CyclSlantH: TEdit
          Left = 168
          Top = 36
          Width = 33
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '0'
          OnChange = CyclSlantVChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object CyclSlantV: TEdit
          Left = 224
          Top = 36
          Width = 33
          Height = 21
          Enabled = False
          TabOrder = 3
          Text = '0'
          OnChange = CyclSlantVChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object WidthAdjust: TCheckBox
          Left = 16
          Top = 56
          Width = 137
          Height = 17
          Hint = 
            'Keep angular width of target plane constant over different dista' +
            'nces'
          Caption = 'Adjust width to'
          TabOrder = 4
          OnClick = WidthAdjustClick
        end
        object PlaneDH: TEdit
          Left = 168
          Top = 56
          Width = 33
          Height = 21
          Enabled = False
          TabOrder = 5
          Text = '25'
          OnChange = CyclSlantVChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object PlaneDV: TEdit
          Left = 224
          Top = 56
          Width = 33
          Height = 21
          Enabled = False
          TabOrder = 6
          Text = '25'
          OnChange = CyclSlantVChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object dFactor: TEdit
          Left = 224
          Top = 15
          Width = 33
          Height = 21
          Enabled = False
          TabOrder = 7
          Text = '1'
          OnChange = dFactorChange
        end
      end
      object MakeCircles: TCheckBox
        Left = 192
        Top = 200
        Width = 57
        Height = 17
        Caption = 'Circles'
        TabOrder = 4
        Visible = False
        OnClick = MakeCirclesClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Options'
      ImageIndex = 2
      object Image1: TImage
        Left = 64
        Top = 272
        Width = 153
        Height = 105
        Picture.Data = {
          0A544A504547496D616765DA140000FFD8FFE000104A46494600010101004800
          480000FFDB00840007050506050507060606080707080A110B0A09090A140F0F
          0C1118151919171517171A1D25201A1C231C1717212C212327282A2A2A191F2E
          312D293125292A28010708080A090A130B0B13281B171B282828282828282828
          2828282828282828282828282828282828282828282828282828282828282828
          282828282828282828FFC401A200000105010101010101000000000000000001
          02030405060708090A0B01000301010101010101010100000000000001020304
          05060708090A0B100002010303020403050504040000017D0102030004110512
          2131410613516107227114328191A1082342B1C11552D1F02433627282090A16
          1718191A25262728292A3435363738393A434445464748494A53545556575859
          5A636465666768696A737475767778797A838485868788898A92939495969798
          999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4
          D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FA110002010204
          0403040705040400010277000102031104052131061241510761711322328108
          144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35
          363738393A434445464748494A535455565758595A636465666768696A737475
          767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AA
          B2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6
          E7E8E9EAF2F3F4F5F6F7F8F9FAFFC0001108009600C803012200021101031101
          FFDA000C03010002110311003F00F9B7069769A752D2B97CA336FBD285029D49
          FE78A0760C0F4A5A4FF3814BD3DBF1A430A3FCF149FA0FAD03DBF3A005A3B73C
          7B52703A7268E9C9FE5400BFA0A4EBD3814609F5C7D2824F419A00323A0A5FBA
          3DE803033CFE7498C9F6FAD002A8EE693A9A56E0638FCE9147D280F215BA50BD
          3FFAF4D6EBDAB434FD22EB5123C94013FBEC303FFAF405F533F3CF5FD69C7915
          DBE9FE06B7386B996495BD17E51FE35AD3F86F42D36DCCD716CBB7A005892C7D
          07354A2E4EC89E648F3153430FF38AEBAEADF4898910E96231D9BCE6CFF8564D
          C68E879B7761FECB9CFEB5D2F07592BD89538BD1990A73C73F95210474CD3A58
          2481F6BA3291EB4839ED5CAD34F5345AE800E78FEB4607F934854F65A4DA7D29
          06ABA0EE7D3F3349D7B67F1A38F424D18CF6C0A003EB8FA518F5C0A07B2D18C7
          2464D0003DB028E07704FD297E63DB1474E0014009F56A339E84E2976B1EB8A0
          93D062818990BDCD0067AE6942B7526862738045016EE2139E06694000670695
          508EF48D9E81A80B5B5634FCC7A5380C0FBB42A77DD4AFFEF500934AEC6724FD
          DA7E081D0522A83FC556ECAD7ED13853F75796A012B2B97347D1FED4C269D7F7
          7FC2BEBF5AEF34FB45555014002B26C23036802BA5B141C5518B772FDB42001C
          5727E2AB8697523067E4814003DC8C93FE7D2BB7817A570FE2985A1D66624712
          0571F963F9835E865E93ADAF6227B199146072DDFD6977DB39C6F5CD24E49B6E
          07D4FB7F9C550C56B88C4CE9D4E58892562C5E58A4B190E32BD88EA2B9ABAB56
          B497633707956F515D359CE770898E54F033DAA1D4EC84F1B26391CA9F7A538C
          7154F997C4869F2B39B1B48C6EA5DABEBFAD301553CA9A77989E95E434CEB4E2
          D6B6130470A7346C3FC4D4A542F00F34088B724D3B8B95F61393C29A5D98E4B5
          295541C1E690445BBD21F2BED762724E035288C0E49AE9B44F016ABABED7F2FE
          CD09FF0096928E4FD17AFF002AEFB49F84FA5C2035DF9B78FF00EDB155FC87F5
          CD3DC96D2DF73C68F2701A94440724D7D129E16D0349405ED6C6D47F79D5149F
          C4F5A63DDF85A31B5AE2D4FB2C65BF90AD6346A4FE14DFC88E78A7768F9E1B1D
          0352AC43A935EF72E97E0BD57E561A7331EEC8236FCC806B1B55F845A6DCC664
          D36792D89E570DE621FCF9FD6A654E70D249A1A9C5BBB478F305031BA9AA8A7B
          D6E6BBE0CD5BC3EE4DDC3BA0CE04F1F29F8FA7E3590B08159B76348C5CDDEDA0
          9B55475C54442E7AD492A281D6A20B9EF420A9BDAC4A889D6B6B4989523DC3F8
          CE6B0B15D169F810443FD914D6E4CDFBB6B1BF67C006BA2D3CF1CF35CCDABE31
          5BF612722A8C4E860ED58FE2FD2CDCDA477B18CBC1C381DD4F7FC0FF003AD481
          F2055F4DAEA55806523041E86B5A351D29A9AE826AE8E0344D19F572F0291C29
          3CB01D2B1750B27B298C6DCFA1EC6BA7D6B49B8D1256B9B3DC6D1CF6FF00967E
          C7DAB9F7BA3293E6FCD9F5E6BD8AD878E2A2AAD37FD7999DEDA333A305A450BD
          723157AE7A0A72BC49CA8504FA0A867937F4E946170D3A4DB9049DCE6B518921
          BA718FBDF30FC6AA657D2B735FB311DC40AC30FE42B1FC493FC88ACAFB32FAD7
          8756515524977676C694DC534860848E49A6B6F27033486576A9A0577748D50B
          3B9DAAA3A9359EBD46B925A2D10B69A75C5ECE904086491CE028AF5AF087C3D8
          2C025CDEA8B8BAEA323E54FA0FEB567C15E124D360596550D7320F9DBD3D87B5
          7A1471C3656EF713109144A5998F602AA29B32934B48954C769A5DAB5C5D48B0
          C483966FE43D4D717AC78E6EAE8B43A629B483A7987991BFC3F0ACEF10EBF3EB
          F785B252D6338862CF007A9F73599143BCFA57D5E0B2C8538A9D6577DBA23925
          3BE888E4796E1CC92BBC8E7AB3B649FCE93CB20F22B512CD4283D0F7A8EE1A38
          400EF1A647F1B05FE75DF3AF082B12A37338C67D3B66ACD8EA77DA5BEFB4B992
          2F5507E53F51D0D3ED648EE24750C84600015C37D7A53AEE14E02FDE3D054C6B
          52A8ACF540E2FA1D6E93E29B2D697EC3A9C51C3338DBB88FDDC9EC73D0FE95C6
          78E7E1C3D8AC9A868E87CA19692D873B47AAFB7B7E5E955990AF5AEF3C1FAF7F
          68C5FD957ADBA645FDCC8C79703F84FB8FE55E263F2E508FB5A4B4EA8DA9D469
          D8F9F583679A55535DFF00C4CF087F635DFF006A5A47B6D676C48A0711B9EFF4
          3FCFEB5C18606BC16744526F710838ADDD324DD6A9EAB906B0CB015774AB90B2
          344780FC8FAD3413B1D3DBBE315B5673E31CD7390BE2B4ADA7C114CC4EC6D66C
          81CD68C52F4AE62D2EC0039AD886E01039A066C6E5910A380CAC30411906B9CD
          4FC196F72C65B1945BB1E4C6DCA7E1DC56B24FEF5289FDEB5A55A749DE0EC26A
          E70D2784356462A218DC7F796418FD6AEE9DE1330389B5074214E4448739FA9A
          EA9EE38EB5CEF89F5E4D2F4F924DC3CD7F9631EE7BFE1D6BA6A63EB4E36DBD04
          A0AE701E25B96BED6EF2543F207D8BF4518FE9593E5C9EB532CAAFCE7934ECAF
          AD792E4CF6A34A1CAB52211A28E82BB3F00682B77727519572A876C43DFB9FE9
          F9D7068D2DC48912F2CEC1547A935EF7E13D312C6C60814711A819F5F535AC62
          D6ACE1AB5A325CB14753A6DA8555E2B07E226A660B7B7D2A238337EF6520FF00
          08E00FCF27F015D85944302BCB7C6939B9F135E939C46446A3D8003FC6BDACA2
          82AB894DF4D4E1A8ED130E34C902B56DE20A99C551B651BEB5642B15BC92601F
          2D0BE3A7419AFA9C54B9118C7539FD6B5C6B790DADAB61C0C3BFF77D87BD736C
          ECEC5989663D49392686677667639663924F7353430348702BE16B5595597348
          DC84120823208F4AD8D2F52325C24774C598FCA9213FA1A8DB499D63DE50E3E9
          54248CA37A114A954952973440EB2EE1CAEEFD2AA5B5C4B657315C42DB6489C3
          29F715A11169AD2391B197457381EA01ACD954072057DAE1A5ED21AECCC65A33
          D4B58B2B6F12E82432E61BC833FEEE47F307F957CE77DA6CBA7DCCD6D28F9E17
          28DF506BE89F06BB5C785E10DCF94EE83E99CFF5AF27F88F66B63E216940C2DC
          461FF11C1FE43F3AF88C543D954945746CF470CA337691C1325317729041C107
          8356667427E5E2A00DCD649BB0AA422A56B9BB637A27501B890751EB5A514D8A
          E551F1820E08EF5A106A6540128C8FEF0A13EE2953EB13ABB7BA2BDEB56DEFB1
          8E6B90875185BA4AB9F42706AEC77A31C30FCEA8C6D63B28AFC63AD4BF6E18EB
          5C6FF6BC69D65507EB50CDAF9C622CB1F53C0A9724B7348529D4768A3AAD435B
          86CE169657C01F99FA57996B5ABCFAC5D99A5CAA2F11A7F747F8D5CBAB892E9B
          7CCE5BD076159D288C1A8552ECEA9E0DC2376F52B22B1E9526C7F5A9A268F353
          663A4E4EFB1A53A11E5F88B9E19D3965D62D770CED6DFF00974FD6BDEB468F11
          AF15E2FE11653AD20CF2109FD457B66947E45AB836D5D9CD898C613E589D359A
          F02BC87C571795E25D4948393316E7DF9FEB5EBF687815E75F1274D6B6D663BE
          507CBBA8C64F60CBC63F2C57BD924D4713CAFAA38AA2F74E56DC80C335ABB165
          84A30CAB295240EC4563A36D39AD2B59C636B1AFA9C553E6898459C1CF0C96B3
          BC120C3C6C55AAFE992224CA5FA66BA1D67458F52DB24644770060363861FED7
          F8FF00F5B1CDB695A85AB60DAC8C07F146378FCC57C357C354A32B35A773A13B
          9E8FA96BBA3CBE1D86D62B655B95FBD27AD79C4A8D73722288659DB0055886C3
          53B9F945B4AA3FBD22ED1FAF5FC2B6F4DD2A3B005DD83DC1E0B7651DC0FF001A
          5430D3AD2492D3B8364D81042A9FC2AA154FB0181599290CC6B46F2518C0359E
          91BCD22C680B3BB05503B935F6B87A5C903093BB3D3FC0F098FC2E8C7A492BB0
          FA74FE95E6DF18A1FDFE9D22F5C48A7FF1DC7F5AF64B4B11A56916B643198620
          1B1DDBA9FD735E45F15DC4B71631F70246FF00D06BE1715554EACE6B66CEFC3C
          1CA6A2BFAD0F276C8EB482ADCB0734B15B66B9F9D58D7EAD372B2228D58F6CD4
          AD1103A1ABB1C01474A7B4408AC1D5D4F4A1836A366633820F34CAD19AD7D055
          3680838ADE334CF36B61E706351CAF4AB714EC454515B926AEC56F8ACE7289D3
          85A557A15E595B1551DC9AD67B60C2A9CD698E94A1389789C3D5DCA6188A5F31
          BD695A265ED4DDA6B7D0F31A92D0DEF08DCECD7A1DC7EFAB2FE99FE95EF1A34A
          0C6B5F3958CCD677B05C0FF966E1BEA3BD7BC787EF564891958104641A052BEE
          CEFAD1F814DF11E869E22D1E4B5C813AFCF0B1ECC3B7D0F4AAD6737039AD9B79
          781CD694EA4A9CD4E3BA21ABE87834D6F35A4CF05C46D1CB1B156561820D08E5
          0E6BD7BC57E0D83C469F68B76582FD40C39FBB201D9BFC6BCA751D32F348B936
          D7B03C5203DC707DC1EE2BEF3038FA58A859E92EC72CE0E24915DF6273532CD1
          95DB918ACACD3B737AD744B0D196A25266A79F1A263767E954A6B9CE71D7EB55
          B71F5A68CB30500924E001DEA561E31571F30D762DC935DB7C3DF0D34F38D66E
          9310444F90AC3EFB7F7BE83F9FD297C31F0F6E2F992F35846B7B5FBCB09E1E4F
          AFA0FD6BD0E568EDE258A25091A0DAAAA300015E1E65994541D0A2EEDEEFF434
          8435BB28EA3380ADCD7807C45D545C78824895B220409F8F53FCC57B0F89B588
          B4EB1B8BA95B0912163EFED5F35DF5E4B7D7735D4A72F33976FA935F29257D0E
          CA551D37CC81AE09356209FA0ACFA7A3906A5C1346D4F1328CAECDA46DD4FACF
          8273533DC60572B83B9EEC313170BB25924503154DE55CD452CE49AAC589ADE1
          4EC79988C5DDD91A70C8B5714822B09242A6AF4175EA6A274DEE8DF0B8C8ED23
          4714D6504734892861D69924A0573A4EE7AAE70E5B90CD1A543E5AFA53669B3D
          0D45E69F5AE98C5D8F1EAD5A7CDB16E780280C071D0D771E07D6B310B591BE78
          BA64F55FF3C5726CAAC855BA1AA905D4BA6DD2CD11C321E3D08F4A54A65E370E
          92BA3E8AD3AF03A839ADFB6B8E9CD795F867C4B0EA102488F82386527953E86B
          B8B2BF0C0735D478675D0CFD29F756B67A9C1E45E5BC77119FE191738FA7A562
          C177D39ABD1DD0F5A69B4EE80C2BEF861A3DD6E6B59E7B363D0021D47E079FD6
          B2A4F84CFBBF77ABA15FF6A1C1FE75DCADD0F5A77DAFDEBBE199E2E0ACA7F7EA
          47247B1C6DB7C29B34606EF539A51DD628C27EA735D1E99E19D1743C3DA59AF9
          ABD2593E67FCCF4FC2AE3DDFBD549AF401D6B2AB8DC456569CDDBFAEC3514B64
          5BB8B9C03CD625FDF045393515E6A210125ABCEFC59E2EF2C3DA5ABE666E1981
          FB9FFD7AE2949455D9BD1A33AD35082D4C2F889E203A8CBFD9D036628CE6520F
          53D87E1FE7A579C4B1953D2B7E552F924924F7359D3420935CF0AB77A9EBD7C0
          AA704919A17352C7096ED5623B7CB74ABD15B003A55CEAA473D0C14A6F52B436
          C69F2DB9C55F58C28E295A304735CCEABB9ED2C14542C73F2C454D42462B6A7B
          6CF6ACE9602A6BAA151491E1627092A6EE8AD4F4073C52AC449AB70DB93DAAE5
          2491CF468CA6F41620D8A594362AEC5074E2A47B704702B91D4499EF4709370B
          5CC1937679A6569DC59F522ABFD94FA574C6A45A3C7AB84A919589A5BBC700D5
          39662FD69B21E6A2A71824675B1139BB365CD3F53B9D32E04F6D26D61D41E8C3
          D0D7A5F873C716F7816391FC99FF00B8C7AFD0F7AF29C54B1C649EF56DD8E68C
          5C9D91F45D9EB28E07CE3F3AD58B53523EF57CF961AE6A7A78023B82E83F865E
          47F8D6E5BFC459A1C09ED89C778DFF00A1A4A499A4E8CE1AB47B82EA031F7A94
          EA23FBD5E3A9F142D40F9A2B907FDD1FE3514FF14A2C7EEADA663FED103FA9AA
          313D825D51547DEAC7D47C4705AC6CF2CCA8A3B938AF1EBDF88BAA5D644091DB
          83DFEF11FD3F4AC73A8DCDECBE65CCEF2B7AB1CE2A652B237A34954959BB23BB
          D6BC6935EEE8ACC9443C7987A9FA572ACD92493927A93DEA059302A19AE71DEB
          825CD37A9F534950C353F709A4980154A59C13D6A096E33DEAA9724D6F0A4795
          89C75DD91A503826B42223158314A4115A96D3671CD45581D582C4A7A32FE297
          1488C08A563815C87BCACD5C63A822A94E8A6AC4B2E05509A7F7ADE9C59E6E2E
          A412D41621BAAEC318ACD59F9EB57ADE7071CD69514AC72E16749CAC5E54C52E
          28460C29F8AE36CF7A2935A113C618547E40AB38A285260E8C5EB6399C4381BB
          7E73CE3148AB073CC99F4C0A6B522F535EB743E05B5CDB1621B78D95796DDDFD
          2AF25AC4172B9CFBD5583B56847F76B9AA499EDE0E9C2DB114B1C4A3F8AB3E71
          160ED2FBBDF18AD09FEED664DFD2AA91863ACB6435841B4E3CCCE38CE2908876
          8C6FDDC67A63DE987A51DABA4F239BC891561CA8CBF5E78156E1587D5FF4AA4B
          F787D6ADC3594F63AF0CD5F62D16418E5B6F39F5AA73347B8F2F8C7B7AD587E9
          54A6FBDF854416A7562A6D444C439392E4678E053544581BB7FE18A4FF001A4E
          C2B73CAE6D761E9E56CCB6FDD8E318C55A81A303ABEEC7A0C5511F76ACC15335
          A1D1879B52563560946D19CE6A49245C7F155683EEFE14F93A570B4B98FA68D4
          97B32BCB2A1CEE2F9F6AA6CD1927717C678C63A54D2F53F5AAAFD4D75C123C0C
          55590ECC01B8F3319F6CD4D049182725F83C631D2AA5491F7AB92BA39A9546A5
          A1B56F3AB0E3755C460477ACBB5AD28FA579D5524CFB0C15494A2AE48718A6E6
          97B525627A12DCFFD9}
        Stretch = True
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 12
        Width = 281
        Height = 85
        Caption = 'Items to Show'
        TabOrder = 0
        object DrEpiLin: TCheckBox
          Left = 16
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Epipolar Lines'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = DrEpiLinClick
        end
        object DrDots: TCheckBox
          Left = 16
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Epipolar Dots'
          TabOrder = 1
          OnClick = DrEpiLinClick
        end
        object DrDisp: TCheckBox
          Left = 144
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Disparity traces'
          TabOrder = 2
          OnClick = DrEpiLinClick
        end
        object ShowPlane: TCheckBox
          Left = 16
          Top = 56
          Width = 97
          Height = 17
          Caption = 'Target Plane'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = ShowPlaneClick
        end
        object ShowPlaneDisp: TCheckBox
          Left = 144
          Top = 56
          Width = 97
          Height = 17
          Caption = 'Disparity traces'
          TabOrder = 4
          OnClick = ShowPlaneClick
        end
        object WriteFile: TCheckBox
          Left = 144
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Write File'
          TabOrder = 5
          Visible = False
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 104
        Width = 281
        Height = 81
        Caption = 'Epipolar Options'
        TabOrder = 1
        object Label23: TLabel
          Left = 16
          Top = 56
          Width = 132
          Height = 13
          Caption = 'Vertical angle between lines'
        end
        object DrAlignY: TCheckBox
          Left = 16
          Top = 32
          Width = 193
          Height = 17
          Caption = 'Align with left eye'#39's vertical'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = DrAlignYClick
        end
        object DrAlignX: TCheckBox
          Left = 16
          Top = 16
          Width = 193
          Height = 17
          Caption = 'Align with left eye'#39's horizontal'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = DrAlignYClick
        end
        object dEpipolar: TEdit
          Left = 160
          Top = 53
          Width = 33
          Height = 21
          TabOrder = 2
          Text = '5'
          OnChange = dEpipolarChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 192
        Width = 281
        Height = 73
        Caption = 'Display'
        TabOrder = 2
        object Label7: TLabel
          Left = 64
          Top = 19
          Width = 27
          Height = 13
          Caption = 'Scale'
        end
        object UseHH: TRadioButton
          Left = 8
          Top = 42
          Width = 73
          Height = 17
          Caption = 'HH'
          TabOrder = 4
          OnClick = UseHHClick
        end
        object Magni: TEdit
          Left = 232
          Top = 16
          Width = 33
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = '5'
          OnChange = HorVerChange
        end
        object SetScale: TScrollBar
          Left = 96
          Top = 19
          Width = 129
          Height = 16
          Max = 600
          Min = 60
          PageSize = 0
          Position = 300
          TabOrder = 1
          OnChange = SetScaleChange
        end
        object DrSquares: TCheckBox
          Left = 64
          Top = 42
          Width = 145
          Height = 17
          Caption = 'Show coordinate squares'
          TabOrder = 2
          OnClick = DrEpiLinClick
        end
        object SquareDist: TEdit
          Left = 232
          Top = 42
          Width = 33
          Height = 21
          TabOrder = 3
          Text = '18'
          OnChange = SquareDistChange
          OnKeyPress = targetPlaneHeightKeyPress
        end
        object UseFick: TRadioButton
          Left = 8
          Top = 19
          Width = 49
          Height = 17
          Caption = 'Fick'
          TabOrder = 5
          OnClick = UseFickClick
        end
      end
    end
  end
  object SaveDialog: TSaveDialog
    Left = 28
    Top = 72
  end
end
