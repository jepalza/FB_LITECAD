#Include "windows.bi"
#Inclib "litecad"

'Extern "C" ' necesario para tratar la DLL como Cdecl
  #Include "litecad.bi"
'End extern

Dim As MSG msg     ' Message variable (stores massages)
Dim As HWND Wnd   ' Window variable

    Dim Wfrm As Integer, Hfrm As Integer, Himenu As Integer
    Wfrm=1024
    Hfrm=768
    himenu=0 
    
' Create window
Wnd = CreateWindowEx( 0, "#32770", "LiteCAD FreeBasic", WS_OVERLAPPEDWINDOW Or WS_VISIBLE, 0, 0, Wfrm, Hfrm, 0, 0, 0, 0 )






' ------------------------------------------------------------------------------------------------
' menus
Dim As HWND edt1
Dim As HMENU hMenu, hMessages, hEdit  ' Menu variables
edt1 = CreateWindowEx( WS_EX_CLIENTEDGE, "", "", WS_VISIBLE Or WS_CHILD, 0, 0, 300, 30, Wnd, 0, 0, 0 )

' Create menus
hMenu = CreateMenu( )
hMessages = CreateMenu( )
hEdit = CreateMenu( )

' Create menus
InsertMenu( hMenu, 0, MF_POPUP, CInt( hMessages ), "&Principal" )
InsertMenu( hMenu, 0, MF_POPUP, CInt( hEdit     ), "&Dibujar" )

' Create Messages submenus
AppendMenu( hMessages, 0, 1, "&Cargar" )
AppendMenu( hMessages, 0, 2, "&Guardar" )
AppendMenu( hMessages, 0, 0, 0 )
AppendMenu( hMessages, 0, 199, "&Salir" )

' Create Edit submenus
AppendMenu( hEdit, 0, 3, "Linea" )
AppendMenu( hEdit, 0, 4, "Circulo" )
AppendMenu( hEdit, 0, 5, "Caja" )
AppendMenu( hEdit, 0, 6, "Paralela" )
AppendMenu( hEdit, 0, 7, "Punto" )

' Set hMenu to hWnd window
SetMenu( Wnd, hMenu )

' Draw menu bar
DrawMenuBar( Wnd )


' ------------------------------------------------------------------------------------------------

    Dim hLcWnd As Integer
    Dim hLcDrw As Integer
    Dim hLcProp As Integer
    Dim hLcCmd As Integer
    Dim hView As Integer
    
    Const PROP_WIDTH = 200
               

lcInitialize()

lcPropPutStr(0, LC_PROP_G_REGCODE, "12345")

hLcWnd=lcCreateWindow(wnd,LC_WS_DEFAULT,0,0,100,100)
lcWndResize(hLcWnd,0,0,100,100)

hLcDrw=lcCreateDrawing()
lcDrwNew(hLcDrw,"",hLcWnd)

hLcProp=lcCreatePropwin(Wnd,0,0,100,100)
lcWndSetPropwin(hLcWnd,hLcProp)

hLcCmd=lcCreateCmdwin(Wnd,8,8,200,200)
lcWndSetCmdwin(hLcWnd,hLcCmd)

hView = LcPropGetHandle(hLcDrw, LC_PROP_DRW_VIEW_MODEL)
LcPropPutBool(hView, LC_PROP_VIEW_GRID, TRUE)


' ajustes para centrar las tres ventanas, la grafica, la de comandos y la de propiedades
LcPropwinResize(hLcProp, 0, Himenu, PROP_WIDTH, Hfrm - Himenu-60)
LcWndResize    (hLcWnd, PROP_WIDTH, Himenu, Wfrm - PROP_WIDTH-30, Hfrm - Himenu - 170)
LcCmdwinResize (hLcCmd, PROP_WIDTH, Hfrm - Himenu - 165, Wfrm - PROP_WIDTH-30,100)


         Dim Id As Integer
        Dim hPline As Integer, bDraw As Integer

        Id = LcPropGetInt(hLcCmd, LC_PROP_CMD_ID)
            bDraw = LcPropGetInt(hLcCmd, LC_PROP_CMD_INT0)
            If bDraw = 1 Then
                hPline = LcPropGetHandle(hLcCmd, LC_PROP_CMD_HAND0)
                LcPlineAddVer(hPline, 0, 100, 100)
                LcCmdRegen(hLcCmd, hPline)
                LcCmdRedraw(hLcCmd)
            End If

               
While GetMessage( @msg, 0, 0, 0 )
  TranslateMessage( @msg )
  DispatchMessage( @msg )
 
 
  Select Case msg.HWnd
  	Case Wnd
      Select Case msg.message
        Case 161
          If msg.wParam = 20 Then
            Dim As Integer res
            res = MessageBox( Wnd, "¿Seguro que quieres Salir?", "Exit", MB_YESNO Or MB_ICONQUESTION )
              If res = 6 Then 
              	lcDeleteWindow(hLcWnd)
              	End
              EndIf
          EndIf
         
        Case 273 ' Menu commands
          Select Case msg.wParam
            ' Messages menu
            Case 1 ' Message hello
              MessageBox( Wnd, "Hello, World!", "Hello", MB_OK )
             
            Case 2 ' Message error
              MessageBox( Wnd, "This is error message!", "Error", MB_OK Or MB_ICONERROR )
             
          	Case 3 ' linea
			   LcWndExeCommand(hLcWnd, LC_CMD_LINE, 0)
             
          	Case 4 ' circulo
               LcWndExeCommand(hLcWnd, LC_CMD_CIRCLE, 0)

          	Case 5 ' caja, rectangulo, cuadrado
               LcWndExeCommand(hLcWnd, LC_CMD_RECT, 0)	
               		
            Case 6 ' curva paralela
               LcWndExeCommand(hLcWnd, LC_CMD_OFFSET, 0)
            
          	Case 7 ' punto
               LcWndExeCommand(hLcWnd, LC_CMD_POINT, 0)
             
          	Case 199 ' Salir
             Dim As Integer res
             res = MessageBox( Wnd, "¿Seguro que quieres Salir?", "Exit", MB_YESNO Or MB_ICONQUESTION )
              If res = 6 Then 
              	lcDeleteWindow(hLcWnd)
              	End
              EndIf
              
              
          End Select
      End Select
  End Select
  
Wend

