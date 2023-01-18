#Include "litecad_const.bi"

 Declare Function lcInitialize Alias "lcInitialize" () As Long
 Declare Function lcUninitialize Alias "lcUninitialize" (ByVal bSaveConfig As Long) As Long
 Declare Function lcAddFontRes Alias "lcAddFontRes" (ByVal hModule As Long, ByVal idResource As Long, ByVal szFontName As String) As Long
 Declare Function lcAddFontFile Alias "lcAddFontFile" (ByVal szFilename As String, ByVal szFontName As String) As Long
 Declare Function lcAddFontBin Alias "lcAddFontBin" (ByVal hData As Long, ByVal szFontName As String) As Long
 Declare Function lcStrAdd Alias "lcStrAdd" (ByVal szTag As String, ByVal szText As String) As Long
 Declare Function lcStrSet Alias "lcStrSet" (ByVal szTag As String, ByVal szText As String) As Long
 Declare Function lcStrGet Alias "lcStrGet" (ByVal szTag As String) As String
 Declare Function lcStrFileLoad Alias "lcStrFileLoad" (ByVal szFileName As String) As Long
 Declare Function lcStrFileSave Alias "lcStrFileSave" (ByVal szFileName As String, ByVal szLanguage As String, ByVal bInit As Long) As Long
 Declare Function lcPropGetBool Alias "lcPropGetBool" (ByVal hObject As Long, ByVal idProp As Long) As Long
 Declare Function lcPropGetInt Alias "lcPropGetInt" (ByVal hObject As Long, ByVal idProp As Long) As Long
 Declare Function lcPropGetFloat Alias "lcPropGetFloat" (ByVal hObject As Long, ByVal idProp As Long) As Double
 Declare Function lcPropGetStr Alias "lcPropGetStr" (ByVal hObject As Long, ByVal idProp As Long) As String
 Declare Function lcPropGetStrA Alias "lcPropGetStrA" (ByVal hObject As Long, ByVal idProp As Long, ByVal szBuf As Any Ptr, ByVal BufSize As Long) As Long
 Declare Function lcPropGetHandle Alias "lcPropGetHandle" (ByVal hObject As Long, ByVal idProp As Long) As Long
 Declare Function lcPropPutBool Alias "lcPropPutBool" (ByVal hObject As Long, ByVal idProp As Long, ByVal bValue As Long) As Long
 Declare Function lcPropPutInt Alias "lcPropPutInt" (ByVal hObject As Long, ByVal idProp As Long, ByVal Value As Long) As Long
 Declare Function lcPropPutFloat Alias "lcPropPutFloat" (ByVal hObject As Long, ByVal idProp As Long, ByVal Value As Double) As Long
 Declare Function lcPropPutStr Alias "lcPropPutStr" (ByVal hObject As Long, ByVal idProp As Long, ByVal szValue As String) As Long
 Declare Function lcPropPutHandle Alias "lcPropPutHandle" (ByVal hObject As Long, ByVal idProp As Long, ByVal hValue As Long) As Long
 Declare Function lcCreateDrawing Alias "lcCreateDrawing" () As Long
 Declare Function lcDeleteDrawing Alias "lcDeleteDrawing" (ByVal hDrw As Long) As Long
 Declare Function lcDrwNew Alias "lcDrwNew" (ByVal hDrw As Long, ByVal szFileName As String, ByVal hLcWnd As Long) As Long
 Declare Function lcDrwNewT Alias "lcDrwNewT" (ByVal hDrw As Long, ByVal szFileName As String, ByVal szTemplate As String, ByVal hLcWnd As Long) As Long
 Declare Function lcDrwLoad Alias "lcDrwLoad" (ByVal hDrw As Long, ByVal szFileName As String, ByVal hWnd As Long, ByVal hLcWnd As Long) As Long
 Declare Function lcDrwLoadMem Alias "lcDrwLoadMem" (ByVal hDrw As Long, ByVal hMem As Long, ByVal hLcWnd As Long) As Long
 Declare Function lcDrwInsert Alias "lcDrwInsert" (ByVal hDrw As Long, ByVal szFileName As String, ByVal Overwrite As Long, ByVal hWnd As Long) As Long
 Declare Function lcDrwSave Alias "lcDrwSave" (ByVal hDrw As Long, ByVal szFileName As String, ByVal bBak As Long, ByVal hWnd As Long) As Long
 Declare Function lcDrwSaveMem Alias "lcDrwSaveMem" (ByVal hDrw As Long, ByVal hMem As Long, ByVal MemSize As Long) As Long
 Declare Function lcDrwSaveExploded Alias "lcDrwSaveExploded" (ByVal hDrw As Long, ByVal szFileName As String, ByVal bBak As Long, ByVal hWnd As Long) As Long
 Declare Function lcDrwPurge Alias "lcDrwPurge" (ByVal hDrw As Long) As Long
 Declare Function lcDrwRegenViews Alias "lcDrwRegenViews" (ByVal hDrw As Long, ByVal hEnt As Long) As Long
 Declare Function lcDrwSortObjects Alias "lcDrwSortObjects" (ByVal hDrw As Long, ByVal ObjType As Long) As Long
 Declare Function lcDrwClearXData Alias "lcDrwClearXData" (ByVal hDrw As Long, ByVal ObjType As Long, ByVal Mode As Long) As Long
 Declare Function lcDrwResolveBlocks Alias "lcDrwResolveBlocks" (ByVal hDrw As Long, ByVal szError As Any Ptr) As Long
 Declare Function lcDrwAddLayer Alias "lcDrwAddLayer" (ByVal hDrw As Long, ByVal szName As String, ByVal szColor As String, ByVal hLtype As Long, ByVal Lweight As Long) As Long
 Declare Function lcDrwAddLinetype Alias "lcDrwAddLinetype" (ByVal hDrw As Long, ByVal szName As String, ByVal szDefinition As String) As Long
 Declare Function lcDrwAddLinetypeF Alias "lcDrwAddLinetypeF" (ByVal hDrw As Long, ByVal szName As String, ByVal szFileName As String, ByVal szLtypeName As String) As Long
 Declare Function lcDrwAddTextStyle Alias "lcDrwAddTextStyle" (ByVal hDrw As Long, ByVal szName As String, ByVal szFontName As String) As Long
 Declare Function lcDrwAddDimStyle Alias "lcDrwAddDimStyle" (ByVal hDrw As Long, ByVal szName As String) As Long
 Declare Function lcDrwAddMlineStyle Alias "lcDrwAddMlineStyle" (ByVal hDrw As Long, ByVal szName As String) As Long
 Declare Function lcDrwAddImage Alias "lcDrwAddImage" (ByVal hDrw As Long, ByVal szName As String, ByVal szFileName As String) As Long
 Declare Function lcDrwAddImage2 Alias "lcDrwAddImage2" (ByVal hDrw As Long, ByVal szName As String, ByVal Width As Long, ByVal Height As Long, ByVal nBits As Long) As Long
 Declare Function lcDrwAddBlock Alias "lcDrwAddBlock" (ByVal hDrw As Long, ByVal szName As String, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcDrwAddBlockFromFile Alias "lcDrwAddBlockFromFile" (ByVal hDrw As Long, ByVal szName As String, ByVal szFileName As String, ByVal Overwrite As Long, ByVal hwParent As Long) As Long
 Declare Function lcDrwAddBlockFromDrw Alias "lcDrwAddBlockFromDrw" (ByVal hDrw As Long, ByVal szName As String, ByVal hDrw2 As Long, ByVal Overwrite As Long, ByVal hwParent As Long) As Long
 Declare Function lcDrwAddBlockFile Alias "lcDrwAddBlockFile" (ByVal hDrw As Long, ByVal szName As String, ByVal szFileName As String, ByVal Overwrite As Long, ByVal hwParent As Long) As Long
 Declare Function lcDrwAddViewPaper Alias "lcDrwAddViewPaper" (ByVal hDrw As Long, ByVal szName As String, ByVal PaperSize As Long, ByVal Orient As Long, ByVal Width As Double, ByVal Height As Double) As Long
 Declare Function lcDrwDeleteObject Alias "lcDrwDeleteObject" (ByVal hDrw As Long, ByVal hObject As Long) As Long
 Declare Function lcDrwDeleteUnusedObjects Alias "lcDrwDeleteUnusedObjects" (ByVal hDrw As Long, ByVal ObjType As Long) As Long
 Declare Function lcDrwGetFirstObject Alias "lcDrwGetFirstObject" (ByVal hDrw As Long, ByVal ObjType As Long) As Long
 Declare Function lcDrwGetNextObject Alias "lcDrwGetNextObject" (ByVal hDrw As Long, ByVal hObject As Long) As Long
 Declare Function lcDrwGetObjectByID Alias "lcDrwGetObjectByID" (ByVal hDrw As Long, ByVal ObjType As Long, ByVal Id As Long) As Long
 Declare Function lcDrwGetObjectByIDH Alias "lcDrwGetObjectByIDH" (ByVal hDrw As Long, ByVal ObjType As Long, ByVal szId As String) As Long
 Declare Function lcDrwGetObjectByName Alias "lcDrwGetObjectByName" (ByVal hDrw As Long, ByVal ObjType As Long, ByVal szName As String) As Long
 Declare Function lcDrwCountObjects Alias "lcDrwCountObjects" (ByVal hDrw As Long, ByVal ObjType As Long) As Long
 Declare Function lcDrwGetViewByBlock Alias "lcDrwGetViewByBlock" (ByVal hDrw As Long, ByVal hBlock As Long) As Long
 Declare Function lcDrwGetEntByID Alias "lcDrwGetEntByID" (ByVal hDrw As Long, ByVal Id As Long) As Long
 Declare Function lcDrwGetEntByIDH Alias "lcDrwGetEntByIDH" (ByVal hDrw As Long, ByVal szId As String) As Long
 Declare Function lcDrwGetEntByKey Alias "lcDrwGetEntByKey" (ByVal hDrw As Long, ByVal Key As Long) As Long
 Declare Function lcViewSetRect Alias "lcViewSetRect" (ByVal hView As Long, ByVal Xcen As Double, ByVal Ycen As Double, ByVal Width As Double, ByVal Height As Double) As Long
 Declare Function lcViewSetRect2 Alias "lcViewSetRect2" (ByVal hView As Long, ByVal Lef As Double, ByVal Bot As Double, ByVal Rig As Double, ByVal Top As Double) As Long
 Declare Function lcViewSetLimits Alias "lcViewSetLimits" (ByVal hView As Long, ByVal Xmin As Double, ByVal Ymin As Double, ByVal Xmax As Double, ByVal Ymax As Double) As Long
 Declare Function lcViewSetGrid Alias "lcViewSetGrid" (ByVal hView As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal dX As Double, ByVal dY As Double) As Long
 Declare Function lcViewRegen Alias "lcViewRegen" (ByVal hView As Long, ByVal hEnt As Long) As Long
 Declare Function lcViewSetPaperSize Alias "lcViewSetPaperSize" (ByVal hView As Long, ByVal PaperSize As Long, ByVal Orient As Long, ByVal Width As Double, ByVal Height As Double) As Long
 Declare Function lcViewGetEntByPoint Alias "lcViewGetEntByPoint" (ByVal hView As Long, ByVal X As Double, ByVal Y As Double, ByVal Delta As Double, ByVal Mode As Long) As Long
 Declare Function lcViewGetEntsByRect Alias "lcViewGetEntsByRect" (ByVal hView As Long, ByVal Lef As Double, ByVal Bot As Double, ByVal Rig As Double, ByVal Top As Double, ByVal bCross As Long, ByVal MaxNum As Long) As Long
 Declare Function lcViewGetEntity Alias "lcViewGetEntity" (ByVal iEnt As Long) As Long
 Declare Function lcViewRasterize Alias "lcViewRasterize" (ByVal hView As Long, ByVal szFileName As String, ByVal Lef As Double, ByVal Bot As Double, ByVal Rig As Double, ByVal Top As Double, ByVal Scal As Double) As Long
 Declare Function lcViewRasterizeMem Alias "lcViewRasterizeMem" (ByVal hView As Long, ByVal hMem As Long, ByVal Lef As Double, ByVal Bot As Double, ByVal Rig As Double, ByVal Top As Double, ByVal Scal As Double) As Long
 Declare Function lcViewDrawMarker Alias "lcViewDrawMarker" (ByVal hView As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcViewDrawLine Alias "lcViewDrawLine" (ByVal hView As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double) As Long
 Declare Function lcViewDrawXline Alias "lcViewDrawXline" (ByVal hView As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal bRay As Long) As Long
 Declare Function lcViewDrawRect Alias "lcViewDrawRect" (ByVal hView As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double) As Long
 Declare Function lcViewPrint Alias "lcViewPrint" (ByVal hView As Long, ByVal hPrintDC As Long, ByVal Lef As Double, ByVal Bot As Double, ByVal Rig As Double, ByVal Top As Double, ByVal Scal As Double, ByVal PapLef As Double, ByVal PapTop As Double) As Long
 Declare Function lcMLStyleAddLine Alias "lcMLStyleAddLine" (ByVal hStyle As Long, ByVal Offset As Double, ByVal szColor As String, ByVal hLtype As Long) As Long
 Declare Function lcMLStyleDelLine Alias "lcMLStyleDelLine" (ByVal hStyle As Long, ByVal iLine As Long) As Long
 Declare Function lcMLStyleSortLines Alias "lcMLStyleSortLines" (ByVal hStyle As Long) As Long
 Declare Function lcImageSetPixelRGB Alias "lcImageSetPixelRGB" (ByVal hImage As Long, ByVal X As Long, ByVal Y As Long, ByVal Red As Long, ByVal Green As Long, ByVal Blue As Long) As Long
 Declare Function lcImageSetPixelI Alias "lcImageSetPixelI" (ByVal hImage As Long, ByVal X As Long, ByVal Y As Long, ByVal iColor As Long) As Long
 Declare Function lcImageGetPixelRGB Alias "lcImageGetPixelRGB" (ByVal hImage As Long, ByVal X As Long, ByVal Y As Long, ByVal pRed As Long, ByVal pGreen As Long, ByVal pBlue As Long) As Long
 Declare Function lcImageGetPixelI Alias "lcImageGetPixelI" (ByVal hImage As Long, ByVal X As Long, ByVal Y As Long, ByVal piColor As Long) As Long
 Declare Function lcImageSetPalColor Alias "lcImageSetPalColor" (ByVal hImage As Long, ByVal iColor As Long, ByVal Red As Long, ByVal Green As Long, ByVal Blue As Long) As Long
 Declare Function lcImageGetPalColor Alias "lcImageGetPalColor" (ByVal hImage As Long, ByVal iColor As Long, ByVal pRed As Long, ByVal pGreen As Long, ByVal pBlue As Long) As Long
 Declare Function lcImageSetTranColor Alias "lcImageSetTranColor" (ByVal hImage As Long, ByVal bTransparent As Long, ByVal Red As Long, ByVal Green As Long, ByVal Blue As Long) As Long
 Declare Function lcImageResize Alias "lcImageResize" (ByVal hImage As Long, ByVal Width As Long, ByVal Height As Long) As Long
 Declare Function lcLayerClear Alias "lcLayerClear" (ByVal hLayer As Long, ByVal hBlock As Long) As Long
 Declare Function lcBlockClear Alias "lcBlockClear" (ByVal hBlock As Long, ByVal hLayer As Long) As Long
 Declare Function lcBlockPurge Alias "lcBlockPurge" (ByVal hBlock As Long) As Long
 Declare Function lcBlockSortEnts Alias "lcBlockSortEnts" (ByVal hBlock As Long, ByVal bByLayers As Long) As Long
 Declare Function lcBlockAddPoint Alias "lcBlockAddPoint" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcBlockAddPoint2 Alias "lcBlockAddPoint2" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal PtMode As Long, ByVal PtSize As Double) As Long
 Declare Function lcBlockAddXline Alias "lcBlockAddXline" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal Angle As Double, ByVal bRay As Long) As Long
 Declare Function lcBlockAddXline2P Alias "lcBlockAddXline2P" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal bRay As Long) As Long
 Declare Function lcBlockAddLine Alias "lcBlockAddLine" (ByVal hBlock As Long, ByVal X1 As Double, ByVal Y1 As Double, ByVal X2 As Double, ByVal Y2 As Double) As Long
 Declare Function lcBlockAddLineDir Alias "lcBlockAddLineDir" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal Angle As Double, ByVal Dist As Double) As Long
 Declare Function lcBlockAddLineTan Alias "lcBlockAddLineTan" (ByVal hBlock As Long, ByVal hEnt1 As Long, ByVal hEnt2 As Long, ByVal Mode As Long) As Long
 Declare Function lcBlockAddPolyline Alias "lcBlockAddPolyline" (ByVal hBlock As Long, ByVal FitType As Long, ByVal bClosed As Long, ByVal bFilled As Long) As Long
 Declare Function lcBlockAddSpline Alias "lcBlockAddSpline" (ByVal hBlock As Long, ByVal bClosed As Long, ByVal bFilled As Long) As Long
 Declare Function lcBlockAddMline Alias "lcBlockAddMline" (ByVal hBlock As Long, ByVal FitType As Long, ByVal bClosed As Long) As Long
 Declare Function lcBlockAddRect Alias "lcBlockAddRect" (ByVal hBlock As Long, ByVal Xc As Double, ByVal Yc As Double, ByVal Width As Double, ByVal Height As Double, ByVal Angle As Double, ByVal bFilled As Long) As Long
 Declare Function lcBlockAddRect2 Alias "lcBlockAddRect2" (ByVal hBlock As Long, ByVal Left As Double, ByVal Bottom As Double, ByVal Width As Double, ByVal Height As Double, ByVal Rad As Double, ByVal bFilled As Long) As Long
 Declare Function lcBlockAddCircle Alias "lcBlockAddCircle" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal Radius As Double, ByVal bFilled As Long) As Long
 Declare Function lcBlockAddArc Alias "lcBlockAddArc" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal Radius As Double, ByVal StartAngle As Double, ByVal ArcAngle As Double) As Long
 Declare Function lcBlockAddArc3P Alias "lcBlockAddArc3P" (ByVal hBlock As Long, ByVal X1 As Double, ByVal Y1 As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal X3 As Double, ByVal Y3 As Double) As Long
 Declare Function lcBlockAddEllipse Alias "lcBlockAddEllipse" (ByVal hBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal R1 As Double, ByVal R2 As Double, ByVal RotAngle As Double, ByVal StartAngle As Double, ByVal ArcAngle As Double) As Long
 Declare Function lcBlockAddText Alias "lcBlockAddText" (ByVal hBlock As Long, ByVal szText As String, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcBlockAddText2 Alias "lcBlockAddText2" (ByVal hBlock As Long, ByVal szText As String, ByVal X As Double, ByVal Y As Double, ByVal Align As Long, ByVal H As Double, ByVal WScale As Double, ByVal RotAngle As Double, ByVal Oblique As Double) As Long
 Declare Function lcBlockAddTextWin Alias "lcBlockAddTextWin" (ByVal hBlock As Long, ByVal szText As String, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcBlockAddTextWin2 Alias "lcBlockAddTextWin2" (ByVal hBlock As Long, ByVal szText As String, ByVal X As Double, ByVal Y As Double, ByVal Align As Long, ByVal H As Double, ByVal WScale As Double, ByVal RotAngle As Double, ByVal Oblique As Double) As Long
 Declare Function lcBlockAddMText Alias "lcBlockAddMText" (ByVal hBlock As Long, ByVal szText As String, ByVal X As Double, ByVal Y As Double, ByVal WrapWidth As Double, ByVal Align As Long, ByVal RotAngle As Double, ByVal H As Double, ByVal WScale As Double) As Long
 Declare Function lcBlockAddArcText Alias "lcBlockAddArcText" (ByVal hBlock As Long, ByVal szText As String, ByVal X As Double, ByVal Y As Double, ByVal Radius As Double, ByVal StartAngle As Double, ByVal bClockwise As Long, ByVal H As Double, ByVal WScale As Double, ByVal Align As Long) As Long
 Declare Function lcBlockAddBlockRef Alias "lcBlockAddBlockRef" (ByVal hBlock As Long, ByVal hRefBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal Scal As Double, ByVal Angle As Double) As Long
 Declare Function lcBlockAddBlockRefID Alias "lcBlockAddBlockRefID" (ByVal hBlock As Long, ByVal idRefBlock As Long, ByVal X As Double, ByVal Y As Double, ByVal Scal As Double, ByVal Angle As Double) As Long
 Declare Function lcBlockAddBlockRefIDH Alias "lcBlockAddBlockRefIDH" (ByVal hBlock As Long, ByVal szIdRefBlock As String, ByVal X As Double, ByVal Y As Double, ByVal Scal As Double, ByVal Angle As Double) As Long
 Declare Function lcBlockAddImageRef Alias "lcBlockAddImageRef" (ByVal hBlock As Long, ByVal hImage As Long, ByVal X As Double, ByVal Y As Double, ByVal Width As Double, ByVal Height As Double, ByVal bBorder As Long) As Long
 Declare Function lcBlockAddEcw Alias "lcBlockAddEcw" (ByVal hBlock As Long, ByVal szFileName As String) As Long
 Declare Function lcBlockAddAttDef Alias "lcBlockAddAttDef" (ByVal hBlock As Long, ByVal Mode As Long, ByVal szTag As String, ByVal szPrompt As String, ByVal szDefVal As String, ByVal X As Double, ByVal Y As Double, ByVal Align As Long, ByVal H As Double, ByVal WScale As Double, ByVal RotAngle As Double, ByVal Oblique As Double) As Long
 Declare Function lcBlockAddHatch Alias "lcBlockAddHatch" (ByVal hBlock As Long, ByVal szFileName As String, ByVal szPatName As String, ByVal Scal As Double, ByVal Angle As Double) As Long
 Declare Function lcBlockAddViewport Alias "lcBlockAddViewport" (ByVal hBlock As Long, ByVal Lef As Double, ByVal Bot As Double, ByVal Width As Double, ByVal Height As Double, ByVal DrwPntX As Double, ByVal DrwPntY As Double, ByVal DrwScale As Double, ByVal DrwAngle As Double) As Long
 Declare Function lcBlockAddFace Alias "lcBlockAddFace" (ByVal hBlock As Long, ByVal Flags As Long, ByVal x0 As Double, ByVal y0 As Double, ByVal z0 As Double, ByVal x1 As Double, ByVal y1 As Double, ByVal z1 As Double, ByVal x2 As Double, ByVal y2 As Double, ByVal z2 As Double) As Long
 Declare Function lcBlockAddFace4 Alias "lcBlockAddFace4" (ByVal hBlock As Long, ByVal Flags As Long, ByVal x0 As Double, ByVal y0 As Double, ByVal z0 As Double, ByVal x1 As Double, ByVal y1 As Double, ByVal z1 As Double, ByVal x2 As Double, ByVal y2 As Double, ByVal z2 As Double, ByVal x3 As Double, ByVal y3 As Double, ByVal z3 As Double) As Long
 Declare Function lcBlockAddLeader Alias "lcBlockAddLeader" (ByVal hBlock As Long, ByVal szText As String, ByVal Xt As Double, ByVal Yt As Double, ByVal LandDist As Double, ByVal Xa As Double, ByVal Ya As Double, ByVal Attach As Long, ByVal Align As Long) As Long
 Declare Function lcBlockAddDimRot Alias "lcBlockAddDimRot" (ByVal hBlock As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal Xt As Double, ByVal Yt As Double, ByVal Angle As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimHor Alias "lcBlockAddDimHor" (ByVal hBlock As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal Yt As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimVer Alias "lcBlockAddDimVer" (ByVal hBlock As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal Xt As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimAli Alias "lcBlockAddDimAli" (ByVal hBlock As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal Xt As Double, ByVal Yt As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimAli2 Alias "lcBlockAddDimAli2" (ByVal hBlock As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal Dt As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimOrd Alias "lcBlockAddDimOrd" (ByVal hBlock As Long, ByVal Xd As Double, ByVal Yd As Double, ByVal Xt As Double, ByVal Yt As Double, ByVal bX As Long, ByVal szText As String) As Long
 Declare Function lcBlockAddDimRad Alias "lcBlockAddDimRad" (ByVal hBlock As Long, ByVal Xc As Double, ByVal Yc As Double, ByVal Xr As Double, ByVal Yr As Double, ByVal Xt As Double, ByVal Yt As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimRad2 Alias "lcBlockAddDimRad2" (ByVal hBlock As Long, ByVal Xc As Double, ByVal Yc As Double, ByVal R As Double, ByVal Angle As Double, ByVal TextOff As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimDia Alias "lcBlockAddDimDia" (ByVal hBlock As Long, ByVal Xc As Double, ByVal Yc As Double, ByVal Xr As Double, ByVal Yr As Double, ByVal Xt As Double, ByVal Yt As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimDia2 Alias "lcBlockAddDimDia2" (ByVal hBlock As Long, ByVal Xc As Double, ByVal Yc As Double, ByVal R As Double, ByVal Angle As Double, ByVal TextOff As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimAng Alias "lcBlockAddDimAng" (ByVal hBlock As Long, ByVal Xc As Double, ByVal Yc As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal Xa As Double, ByVal Ya As Double, ByVal TextPos As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddDimAng2 Alias "lcBlockAddDimAng2" (ByVal hBlock As Long, ByVal X1 As Double, ByVal Y1 As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal X3 As Double, ByVal Y3 As Double, ByVal X4 As Double, ByVal Y4 As Double, ByVal Xa As Double, ByVal Ya As Double, ByVal TextPos As Double, ByVal szText As String) As Long
 Declare Function lcBlockAddRPlan Alias "lcBlockAddRPlan" (ByVal hBlock As Long) As Long
 Declare Function lcBlockAddBezier Alias "lcBlockAddBezier" (ByVal hBlock As Long, ByVal X1 As Double, ByVal Y1 As Double, ByVal Angle1 As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal Angle2 As Double) As Long
 Declare Function lcBlockAddTIN Alias "lcBlockAddTIN" (ByVal hBlock As Long) As Long
 Declare Function lcBlockAddClone Alias "lcBlockAddClone" (ByVal hBlock As Long, ByVal hEnt As Long) As Long
 Declare Function lcBlockGetFirstEnt Alias "lcBlockGetFirstEnt" (ByVal hBlock As Long) As Long
 Declare Function lcBlockGetNextEnt Alias "lcBlockGetNextEnt" (ByVal hBlock As Long, ByVal hEnt As Long) As Long
 Declare Function lcBlockGetLastEnt Alias "lcBlockGetLastEnt" (ByVal hBlock As Long) As Long
 Declare Function lcBlockGetPrevEnt Alias "lcBlockGetPrevEnt" (ByVal hBlock As Long, ByVal hEnt As Long) As Long
 Declare Function lcBlockGetEntByID Alias "lcBlockGetEntByID" (ByVal hBlock As Long, ByVal Id As Long) As Long
 Declare Function lcBlockGetEntByIDH Alias "lcBlockGetEntByIDH" (ByVal hBlock As Long, ByVal szId As String) As Long
 Declare Function lcBlockGetEntByKey Alias "lcBlockGetEntByKey" (ByVal hBlock As Long, ByVal Key As Long) As Long
 Declare Function lcBlockGetTIN Alias "lcBlockGetTIN" (ByVal hBlock As Long, ByVal Index As Long) As Long
 Declare Function lcBlockUnselect Alias "lcBlockUnselect" (ByVal hBlock As Long) As Long
 Declare Function lcBlockSelectEnt Alias "lcBlockSelectEnt" (ByVal hBlock As Long, ByVal hEntity As Long, ByVal bSelect As Long) As Long
 Declare Function lcBlockSelErase Alias "lcBlockSelErase" (ByVal hBlock As Long) As Long
 Declare Function lcBlockSelMove Alias "lcBlockSelMove" (ByVal hBlock As Long, ByVal dX As Double, ByVal dY As Double, ByVal bCopy As Long, ByVal bNewSelect As Long) As Long
 Declare Function lcBlockSelScale Alias "lcBlockSelScale" (ByVal hBlock As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal Scal As Double, ByVal bCopy As Long, ByVal bNewSelect As Long) As Long
 Declare Function lcBlockSelRotate Alias "lcBlockSelRotate" (ByVal hBlock As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal Angle As Double, ByVal bCopy As Long, ByVal bNewSelect As Long) As Long
 Declare Function lcBlockSelMirror Alias "lcBlockSelMirror" (ByVal hBlock As Long, ByVal X1 As Double, ByVal Y1 As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal bCopy As Long, ByVal bNewSelect As Long) As Long
 Declare Function lcBlockSelExplode Alias "lcBlockSelExplode" (ByVal hBlock As Long) As Long
 Declare Function lcBlockSelJoin Alias "lcBlockSelJoin" (ByVal hBlock As Long, ByVal Delta As Double) As Long
 Declare Function lcBlockGetFirstSel Alias "lcBlockGetFirstSel" (ByVal hBlock As Long) As Long
 Declare Function lcBlockGetNextSel Alias "lcBlockGetNextSel" (ByVal hBlock As Long) As Long
 Declare Function lcEntErase Alias "lcEntErase" (ByVal hEnt As Long, ByVal bErase As Long) As Long
 Declare Function lcEntMove Alias "lcEntMove" (ByVal hEnt As Long, ByVal dX As Double, ByVal dY As Double) As Long
 Declare Function lcEntScale Alias "lcEntScale" (ByVal hEnt As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal Scal As Double) As Long
 Declare Function lcEntRotate Alias "lcEntRotate" (ByVal hEnt As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal Angle As Double) As Long
 Declare Function lcEntMirror Alias "lcEntMirror" (ByVal hEnt As Long, ByVal X1 As Double, ByVal Y1 As Double, ByVal X2 As Double, ByVal Y2 As Double) As Long
 Declare Function lcEntExplode Alias "lcEntExplode" (ByVal hEnt As Long, ByVal bSelect As Long) As Long
 Declare Function lcEntOffset Alias "lcEntOffset" (ByVal hEnt As Long, ByVal Dist As Double) As Long
 Declare Function lcEntToTop Alias "lcEntToTop" (ByVal hEnt As Long) As Long
 Declare Function lcEntToBottom Alias "lcEntToBottom" (ByVal hEnt As Long) As Long
 Declare Function lcEntToAbove Alias "lcEntToAbove" (ByVal hEnt As Long, ByVal hEnt2 As Long) As Long
 Declare Function lcEntToUnder Alias "lcEntToUnder" (ByVal hEnt As Long, ByVal hEnt2 As Long) As Long
 Declare Function lcEntGetGrip Alias "lcEntGetGrip" (ByVal hEnt As Long, ByVal iGrip As Long, ByVal pX As Long, ByVal pY As Long) As Long
 Declare Function lcEntPutGrip Alias "lcEntPutGrip" (ByVal hEnt As Long, ByVal iGrip As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcEntUpdate Alias "lcEntUpdate" (ByVal hEnt As Long) As Long
 Declare Function lcEntCopyBase Alias "lcEntCopyBase" (ByVal hEnt As Long, ByVal hEntFrom As Long) As Long
 Declare Function lcIntersection Alias "lcIntersection" (ByVal hEnt As Long, ByVal hEnt2 As Long) As Long
 Declare Function lcInterGetPoint Alias "lcInterGetPoint" (ByVal iPoint As Long, ByVal pX As Long, ByVal pY As Long) As Long
 Declare Function lcPlineAddVer Alias "lcPlineAddVer" (ByVal hPline As Long, ByVal hVer As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcPlineAddVer2 Alias "lcPlineAddVer2" (ByVal hPline As Long, ByVal hVer As Long, ByVal X As Double, ByVal Y As Double, ByVal Param As Double, ByVal W0 As Double, ByVal W1 As Double) As Long
 Declare Function lcPlineAddVerDir Alias "lcPlineAddVerDir" (ByVal hPline As Long, ByVal hVer As Long, ByVal Ang As Double, ByVal Length As Double) As Long
 Declare Function lcPlineDeleteVer Alias "lcPlineDeleteVer" (ByVal hPline As Long, ByVal hVer As Long) As Long
 Declare Function lcPlineGetFirstVer Alias "lcPlineGetFirstVer" (ByVal hPline As Long) As Long
 Declare Function lcPlineGetNextVer Alias "lcPlineGetNextVer" (ByVal hPline As Long, ByVal hVer As Long) As Long
 Declare Function lcPlineGetLastVer Alias "lcPlineGetLastVer" (ByVal hPline As Long) As Long
 Declare Function lcPlineGetPrevVer Alias "lcPlineGetPrevVer" (ByVal hPline As Long, ByVal hVer As Long) As Long
 Declare Function lcPlineGetVer Alias "lcPlineGetVer" (ByVal hPline As Long, ByVal Index As Long) As Long
 Declare Function lcPlineGetVerPt Alias "lcPlineGetVerPt" (ByVal hPline As Long, ByVal X As Double, ByVal Y As Double, ByVal Delta As Double) As Long
 Declare Function lcPlineGetSeg Alias "lcPlineGetSeg" (ByVal hPline As Long, ByVal X As Double, ByVal Y As Double, ByVal Delta As Double) As Long
 Declare Function lcPlineReverse Alias "lcPlineReverse" (ByVal hPline As Long) As Long
 Declare Function lcPlineSimple Alias "lcPlineSimple" (ByVal hPline As Long, ByVal bSimple As Long, ByVal nLines As Long) As Long
 Declare Function lcPlineContainPoint Alias "lcPlineContainPoint" (ByVal hPline As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcPlineGetRoundPrm Alias "lcPlineGetRoundPrm" (ByVal hPline As Long, ByVal hVer As Long, ByVal px0 As Long, ByVal py0 As Long, ByVal pBulge As Long, ByVal px1 As Long, ByVal py1 As Long) As Long
 Declare Function lcMlineAddVer Alias "lcMlineAddVer" (ByVal hMline As Long, ByVal hVer As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcMlineAddVerDir Alias "lcMlineAddVerDir" (ByVal hMline As Long, ByVal hVer As Long, ByVal Ang As Double, ByVal Length As Double) As Long
 Declare Function lcMlineDeleteVer Alias "lcMlineDeleteVer" (ByVal hMline As Long, ByVal hVer As Long) As Long
 Declare Function lcMlineGetFirstVer Alias "lcMlineGetFirstVer" (ByVal hMline As Long) As Long
 Declare Function lcMlineGetNextVer Alias "lcMlineGetNextVer" (ByVal hMline As Long, ByVal hVer As Long) As Long
 Declare Function lcMlineGetLastVer Alias "lcMlineGetLastVer" (ByVal hMline As Long) As Long
 Declare Function lcMlineGetPrevVer Alias "lcMlineGetPrevVer" (ByVal hMline As Long, ByVal hVer As Long) As Long
 Declare Function lcMlineGetVer Alias "lcMlineGetVer" (ByVal hMline As Long, ByVal Index As Long) As Long
 Declare Function lcMlineGetVerPt Alias "lcMlineGetVerPt" (ByVal hMline As Long, ByVal X As Double, ByVal Y As Double, ByVal Delta As Double) As Long
 Declare Function lcMlineGetSeg Alias "lcMlineGetSeg" (ByVal hMline As Long, ByVal X As Double, ByVal Y As Double, ByVal Delta As Double) As Long
 Declare Function lcMlineReverse Alias "lcMlineReverse" (ByVal hMline As Long) As Long
 Declare Function lcRPlanAddVer Alias "lcRPlanAddVer" (ByVal hRPlan As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcRPlanSetCurve Alias "lcRPlanSetCurve" (ByVal hVer As Long, ByVal Radius As Double, ByVal LenClot1 As Double, ByVal LenClot2 As Double) As Long
 Declare Function lcRPlanSetPos Alias "lcRPlanSetPos" (ByVal hVer As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcRPlanDeleteVer Alias "lcRPlanDeleteVer" (ByVal hRPlan As Long, ByVal hVer As Long) As Long
 Declare Function lcRPlanGetFirstVer Alias "lcRPlanGetFirstVer" (ByVal hRPlan As Long) As Long
 Declare Function lcRPlanGetNextVer Alias "lcRPlanGetNextVer" (ByVal hRPlan As Long, ByVal hVer As Long) As Long
 Declare Function lcRPlanGetLastVer Alias "lcRPlanGetLastVer" (ByVal hRPlan As Long) As Long
 Declare Function lcRPlanGetPrevVer Alias "lcRPlanGetPrevVer" (ByVal hRPlan As Long, ByVal hVer As Long) As Long
 Declare Function lcRPlanGetVer Alias "lcRPlanGetVer" (ByVal hRPlan As Long, ByVal Index As Long) As Long
 Declare Function lcRPlanGetPoint Alias "lcRPlanGetPoint" (ByVal hRPlan As Long, ByVal Dist As Double, ByVal pX As Long, ByVal pY As Long, ByVal pAngle As Long, ByVal pSide As Long) As Long
 Declare Function lcRPlanGetDist Alias "lcRPlanGetDist" (ByVal hRPlan As Long, ByVal X As Double, ByVal Y As Double, ByVal pX2 As Long, ByVal pY2 As Long, ByVal pDist As Long, ByVal pOffset As Long) As Long
 Declare Function lcVportSetView Alias "lcVportSetView" (ByVal hVport As Long, ByVal Xcen As Double, ByVal Ycen As Double, ByVal Scal As Double, ByVal Angle As Double) As Long
 Declare Function lcVportFrolClear Alias "lcVportFrolClear" (ByVal hVport As Long) As Long
 Declare Function lcVportFrolAdd Alias "lcVportFrolAdd" (ByVal hVport As Long, ByVal hLayer As Long) As Long
 Declare Function lcVportFrolGet Alias "lcVportFrolGet" (ByVal hVport As Long, ByVal iLayer As Long) As Long
 Declare Function lcVportIsFrol Alias "lcVportIsFrol" (ByVal hVport As Long, ByVal hLayer As Long) As Long
 Declare Function lcBlkRefAddAtt Alias "lcBlkRefAddAtt" (ByVal hBlockRef As Long, ByVal szTag As String, ByVal szValue As String) As Long
 Declare Function lcBlkRefGetFirstAtt Alias "lcBlkRefGetFirstAtt" (ByVal hBlockRef As Long) As Long
 Declare Function lcBlkRefGetNextAtt Alias "lcBlkRefGetNextAtt" (ByVal hBlockRef As Long, ByVal hAttrib As Long) As Long
 Declare Function lcBlkRefGetAtt Alias "lcBlkRefGetAtt" (ByVal hBlockRef As Long, ByVal szTag As String) As Long
 Declare Function lcHatchSetPattern Alias "lcHatchSetPattern" (ByVal hHatch As Long, ByVal szFileName As String, ByVal szPatName As String, ByVal Scal As Double, ByVal Angle As Double) As Long
 Declare Function lcHatchBoundStart Alias "lcHatchBoundStart" (ByVal hHatch As Long) As Long
 Declare Function lcHatchBoundPoint Alias "lcHatchBoundPoint" (ByVal hHatch As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcHatchBoundEndLoop Alias "lcHatchBoundEndLoop" (ByVal hHatch As Long) As Long
 Declare Function lcHatchBoundEnd Alias "lcHatchBoundEnd" (ByVal hHatch As Long) As Long
 Declare Function lcHatchPatStart Alias "lcHatchPatStart" (ByVal hHatch As Long) As Long
 Declare Function lcHatchPatLine Alias "lcHatchPatLine" (ByVal hHatch As Long, ByVal Angle As Double, ByVal x0 As Double, ByVal y0 As Double, ByVal dx As Double, ByVal dy As Double, ByVal nDash As Long, ByVal L0 As Double, ByVal L1 As Double, ByVal L2 As Double, ByVal L3 As Double, ByVal L4 As Double, ByVal L5 As Double, ByVal L6 As Double, ByVal L7 As Double) As Long
 Declare Function lcHatchPatEnd Alias "lcHatchPatEnd" (ByVal hHatch As Long) As Long
 Declare Function lcHatchGetLoopSize Alias "lcHatchGetLoopSize" (ByVal hHatch As Long, ByVal iLoop As Long) As Long
 Declare Function lcHatchGetPoint Alias "lcHatchGetPoint" (ByVal hHatch As Long, ByVal iPnt As Long, ByVal pX As Long, ByVal pY As Long) As Long
 Declare Function lcRectGetPolyline Alias "lcRectGetPolyline" (ByVal hRect As Long, ByVal pX As Long, ByVal pY As Long, ByVal pBulge As Long) As Long
 Declare Function lcXlinePutDir Alias "lcXlinePutDir" (ByVal hXline As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcTinClear Alias "lcTinClear" (ByVal hTin As Long, ByVal bOnlyTrians As Long) As Long
 Declare Function lcTinLoad Alias "lcTinLoad" (ByVal hTin As Long, ByVal szFileName As String, ByVal bEmbed As Long) As Long
 Declare Function lcTinSave Alias "lcTinSave" (ByVal hTin As Long, ByVal szFileName As String, ByVal bOverwriteExist As Long) As Long
 Declare Function lcTinAddPtype Alias "lcTinAddPtype" (ByVal hTin As Long, ByVal szName As String, ByVal szNotes As String, ByVal Color As Long) As Long
 Declare Function lcTinAddPoint Alias "lcTinAddPoint" (ByVal hTin As Long, ByVal hPtype As Long, ByVal X As Double, ByVal Y As Double, ByVal Z As Double) As Long
 Declare Function lcTinAddTrian Alias "lcTinAddTrian" (ByVal hTin As Long, ByVal hPt0 As Long, ByVal hPt1 As Long, ByVal hPt2 As Long) As Long
 Declare Function lcTinNormalize Alias "lcTinNormalize" (ByVal hTin As Long) As Long
 Declare Function lcTinGetZ Alias "lcTinGetZ" (ByVal hTin As Long, ByVal X As Double, ByVal Y As Double, ByVal pZ As Long) As Long
 Declare Function lcTinInterLine Alias "lcTinInterLine" (ByVal hTin As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double) As Long
 Declare Function lcTinInterGetPoint Alias "lcTinInterGetPoint" (ByVal hTin As Long, ByVal iPnt As Long, ByVal pX As Long, ByVal pY As Long, ByVal pZ As Long) As Long
 Declare Function lcTinDelPtype Alias "lcTinDelPtype" (ByVal hTin As Long, ByVal hPtype As Long) As Long
 Declare Function lcTinDelPoint Alias "lcTinDelPoint" (ByVal hTin As Long, ByVal hPoint As Long) As Long
 Declare Function lcTinDelTrian Alias "lcTinDelTrian" (ByVal hTin As Long, ByVal hTrian As Long) As Long
 Declare Function lcTinPtypeGetFirst Alias "lcTinPtypeGetFirst" (ByVal hTin As Long) As Long
 Declare Function lcTinPtypeGetNext Alias "lcTinPtypeGetNext" (ByVal hTin As Long, ByVal hPtype As Long) As Long
 Declare Function lcTinPtypeGetByName Alias "lcTinPtypeGetByName" (ByVal hTin As Long, ByVal szName As String) As Long
 Declare Function lcTinPtypeDialog Alias "lcTinPtypeDialog" (ByVal hTin As Long, ByVal hWnd As Long, ByVal bReadOnly As Long) As Long
 Declare Function lcTinPointGetFirst Alias "lcTinPointGetFirst" (ByVal hTin As Long) As Long
 Declare Function lcTinPointGetNext Alias "lcTinPointGetNext" (ByVal hTin As Long, ByVal hPoint As Long) As Long
 Declare Function lcTinPointGetByPos Alias "lcTinPointGetByPos" (ByVal hTin As Long, ByVal X As Double, ByVal Y As Double, ByVal Delta As Double) As Long
 Declare Function lcTinTrianGetFirst Alias "lcTinTrianGetFirst" (ByVal hTin As Long) As Long
 Declare Function lcTinTrianGetNext Alias "lcTinTrianGetNext" (ByVal hTin As Long, ByVal hTrian As Long) As Long
 Declare Function lcTinTrianGetByPos Alias "lcTinTrianGetByPos" (ByVal hTin As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcCreateWindow Alias "lcCreateWindow" (ByVal hWndParent As Long, ByVal Style As Long, ByVal Left As Long, ByVal Top As Long, ByVal Width As Long, ByVal Height As Long) As Long
 Declare Function lcDeleteWindow Alias "lcDeleteWindow" (ByVal hLcWnd As Long) As Long
 Declare Function lcWndResize Alias "lcWndResize" (ByVal hLcWnd As Long, ByVal Left As Long, ByVal Top As Long, ByVal Width As Long, ByVal Height As Long) As Long
 Declare Function lcWndSelectView Alias "lcWndSelectView" (ByVal hLcWnd As Long, ByVal hView As Long) As Long
 Declare Function lcWndZoomRect Alias "lcWndZoomRect" (ByVal hLcWnd As Long, ByVal Left As Double, ByVal Bottom As Double, ByVal Right As Double, ByVal Top As Double) As Long
 Declare Function lcWndZoomScale Alias "lcWndZoomScale" (ByVal hLcWnd As Long, ByVal Scal As Double) As Long
 Declare Function lcWndZoomMove Alias "lcWndZoomMove" (ByVal hLcWnd As Long, ByVal DX As Double, ByVal DY As Double) As Long
 Declare Function lcWndRedraw Alias "lcWndRedraw" (ByVal hLcWnd As Long) As Long
 Declare Function lcWndSetFocus Alias "lcWndSetFocus" (ByVal hLcWnd As Long) As Long
 Declare Function lcWndExeCommand Alias "lcWndExeCommand" (ByVal hLcWnd As Long, ByVal Command As Long, ByVal CmdParam As Long) As Long
 Declare Function lcWndCoordFromDrw Alias "lcWndCoordFromDrw" (ByVal hLcWnd As Long, ByVal Xdrw As Double, ByVal Ydrw As Double, ByVal pXwin As Long, ByVal pYwin As Long) As Long
 Declare Function lcWndCoordToDrw Alias "lcWndCoordToDrw" (ByVal hLcWnd As Long, ByVal Xwin As Long, ByVal Ywin As Long, ByVal pXdrw As Long, ByVal pYdrw As Long) As Long
 Declare Function lcWndGetCursorCoord Alias "lcWndGetCursorCoord" (ByVal hLcWnd As Long, ByVal pXwin As Long, ByVal pYwin As Long, ByVal pXdrw As Long, ByVal pYdrw As Long) As Long
 Declare Function lcWndGetEntByPoint Alias "lcWndGetEntByPoint" (ByVal hLcWnd As Long, ByVal Xwin As Long, ByVal Ywin As Long) As Long
 Declare Function lcWndSetCmdwin Alias "lcWndSetCmdwin" (ByVal hLcWnd As Long, ByVal hCmdLine As Long) As Long
 Declare Function lcWndSetPropwin Alias "lcWndSetPropwin" (ByVal hLcWnd As Long, ByVal hPropWnd As Long) As Long
 Declare Function lcWndStopCommand Alias "lcWndStopCommand" (ByVal hLcWnd As Long) As Long
 Declare Function lcWndGetPoint Alias "lcWndGetPoint" (ByVal hLcWnd As Long, ByVal szPrompt As String, ByVal SnapMode As Long, ByVal Index As Long, ByVal pX As Long, ByVal pY As Long) As Long
 Declare Function lcWndGetPointBuf Alias "lcWndGetPointBuf" (ByVal hLcWnd As Long, ByVal Index As Long, ByVal pX As Long, ByVal pY As Long) As Long
 Declare Function lcWndUpdateTabs Alias "lcWndUpdateTabs" (ByVal hLcWnd As Long) As Long
 Declare Function lcCoordDrwToWnd Alias "lcCoordDrwToWnd" (ByVal hLcWnd As Long, ByVal Xdrw As Double, ByVal Ydrw As Double, ByVal pXwin As Long, ByVal pYwin As Long) As Long
 Declare Function lcCoordWndToDrw Alias "lcCoordWndToDrw" (ByVal hLcWnd As Long, ByVal Xwin As Long, ByVal Ywin As Long, ByVal pXdrw As Long, ByVal pYdrw As Long) As Long
 Declare Function lcColorIsRGB Alias "lcColorIsRGB" (ByVal szColor As String) As Long
 Declare Function lcColorGetRed Alias "lcColorGetRed" (ByVal szColor As String) As Long
 Declare Function lcColorGetGreen Alias "lcColorGetGreen" (ByVal szColor As String) As Long
 Declare Function lcColorGetBlue Alias "lcColorGetBlue" (ByVal szColor As String) As Long
 Declare Function lcColorGetIndex Alias "lcColorGetIndex" (ByVal szColor As String) As Long
 Declare Function lcColorToVal Alias "lcColorToVal" (ByVal szColor As String, ByVal pbRGB As Long, ByVal pIndex As Long, ByVal pR As Long, ByVal pG As Long, ByVal pB As Long) As Long
 Declare Function lcColorSetPalette Alias "lcColorSetPalette" (ByVal Index As Long, ByVal R As Long, ByVal G As Long, ByVal B As Long) As Long
 Declare Function lcColorGetPalette Alias "lcColorGetPalette" (ByVal Index As Long, ByVal pR As Long, ByVal pG As Long, ByVal pB As Long) As Long
 Declare Function lcCreateCmdwin Alias "lcCreateCmdwin" (ByVal hWndParent As Long, ByVal Left As Long, ByVal Top As Long, ByVal Width As Long, ByVal Height As Long) As Long
 Declare Function lcCmdwinResize Alias "lcCmdwinResize" (ByVal hCmdLine As Long, ByVal Left As Long, ByVal Top As Long, ByVal Width As Long, ByVal Height As Long) As Long
 Declare Function lcCmdwinUpdate Alias "lcCmdwinUpdate" (ByVal hCmdLine As Long) As Long
 Declare Function lcCreatePropwin Alias "lcCreatePropwin" (ByVal hWndParent As Long, ByVal Left As Long, ByVal Top As Long, ByVal Width As Long, ByVal Height As Long) As Long
 Declare Function lcPropwinResize Alias "lcPropwinResize" (ByVal hPropWnd As Long, ByVal Left As Long, ByVal Top As Long, ByVal Width As Long, ByVal Height As Long) As Long
 Declare Function lcPropwinUpdate Alias "lcPropwinUpdate" (ByVal hPropWnd As Long, ByVal bSelChanged As Long) As Long
 Declare Function lcGetErrorCode Alias "lcGetErrorCode" () As Long
 Declare Function lcGetErrorStr Alias "lcGetErrorStr" () As String
 Declare Function lcExtractPreview Alias "lcExtractPreview" (ByVal szFileName As String, ByVal hGlob As Long, ByVal MaxSize As Long) As Long
 Declare Function lcExtractFileInfo Alias "lcExtractFileInfo" (ByVal szFileName As String, ByVal szGuid As Any Ptr, ByVal szComment As Any Ptr, ByVal pInt0 As Long, ByVal pInt1 As Long) As Long
 Declare Function lcFilletSetLines Alias "lcFilletSetLines" (ByVal L1x0 As Double, ByVal L1y0 As Double, ByVal L1x1 As Double, ByVal L1y1 As Double, ByVal L2x0 As Double, ByVal L2y0 As Double, ByVal L2x1 As Double, ByVal L2y1 As Double) As Long
 Declare Function lcFillet Alias "lcFillet" (ByVal Rad As Double, ByVal Bis As Double, ByVal Tang As Double) As Long
 Declare Function lcFilletGetPoint Alias "lcFilletGetPoint" (ByVal iPnt As Long, ByVal pX As Long, ByVal pY As Long) As Long
 Declare Function lcDgGetFileName Alias "lcDgGetFileName" (ByVal hWnd As Long, ByVal Mode As Long) As String
 Declare Function lcDgGetValue Alias "lcDgGetValue" (ByVal hWnd As Long, ByVal Lef As Long, ByVal Top As Long, ByVal szTitle As String, ByVal szPrompt As String, ByVal szValue As String) As String
 Declare Function lcDgGetValue2 Alias "lcDgGetValue2" (ByVal hWnd As Long, ByVal Lef As Long, ByVal Top As Long, ByVal szTitle As String, ByVal szPrompt As String, ByVal szValue As Any Ptr, ByVal MaxChar As Long) As Long
 Declare Function lcPlugGetOption Alias "lcPlugGetOption" (ByVal szFileName As String, ByVal szKey As String) As String
 Declare Function lcPlugSetOption Alias "lcPlugSetOption" (ByVal szFileName As String, ByVal szKey As String, ByVal szValue As String, ByVal bSave As Long) As Long
 Declare Function lcGetClientSize Alias "lcGetClientSize" (ByVal hWnd As Long, ByVal pWidth As Long, ByVal pHeight As Long) As Long
 Declare Function lcCreateCommand Alias "lcCreateCommand" (ByVal hLcWnd As Long, ByVal Id As Long, ByVal szName As String, ByVal bNeedSel As Long) As Long
 Declare Function lcCmdExit Alias "lcCmdExit" () As Long
 Declare Function lcCmdPrompt Alias "lcCmdPrompt" (ByVal hCmd As Long, ByVal szText As String) As Long
 Declare Function lcCmdGetEntByPoint Alias "lcCmdGetEntByPoint" (ByVal hCmd As Long, ByVal Xwnd As Long, ByVal Ywnd As Long) As Long
 Declare Function lcCmdSelectEnt Alias "lcCmdSelectEnt" (ByVal hCmd As Long, ByVal hEntity As Long, ByVal bSelect As Long) As Long
 Declare Function lcCmdRedraw Alias "lcCmdRedraw" (ByVal hCmd As Long) As Long
 Declare Function lcCmdSetFocus Alias "lcCmdSetFocus" (ByVal hCmd As Long) As Long
 Declare Function lcCmdRegen Alias "lcCmdRegen" (ByVal hCmd As Long, ByVal hEnt As Long) As Long
 Declare Function lcCmdClearPoints Alias "lcCmdClearPoints" (ByVal hCmd As Long) As Long
 Declare Function lcCmdAddPoint Alias "lcCmdAddPoint" (ByVal hCmd As Long, ByVal Id As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcCmdGetPoint Alias "lcCmdGetPoint" (ByVal hCmd As Long, ByVal Id As Long, ByVal pX As Long, ByVal pY As Long) As Long
 Declare Function lcCmdSetBasePoint Alias "lcCmdSetBasePoint" (ByVal hCmd As Long, ByVal bEnable As Long, ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcCmdDrawLine Alias "lcCmdDrawLine" (ByVal hCmd As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double) As Long
 Declare Function lcCmdDrawPickbox Alias "lcCmdDrawPickbox" (ByVal hCmd As Long, ByVal Xwnd As Long, ByVal Ywnd As Long) As Long
 Declare Function lcCmdEqualPoints Alias "lcCmdEqualPoints" (ByVal hCmd As Long, ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal Delta As Long) As Long
 Declare Function lcPaintBegin Alias "lcPaintBegin" (ByVal hLcWnd As Long) As Long
 Declare Function lcPaintSetPen Alias "lcPaintSetPen" (ByVal Style As Long, ByVal Width As Long, ByVal ColorRed As Long, ByVal ColorGreen As Long, ByVal ColorBlue As Long) As Long
 Declare Function lcPaintSetBrush Alias "lcPaintSetBrush" (ByVal ColorRed As Long, ByVal ColorGreen As Long, ByVal ColorBlue As Long) As Long
 Declare Function lcPaintPixel Alias "lcPaintPixel" (ByVal X As Double, ByVal Y As Double, ByVal Size As Long, ByVal ColorRed As Long, ByVal ColorGreen As Long, ByVal ColorBlue As Long) As Long
 Declare Function lcPaintPoint Alias "lcPaintPoint" (ByVal X As Double, ByVal Y As Double, ByVal PtMode As Long, ByVal PtSize As Double) As Long
 Declare Function lcPaintLine Alias "lcPaintLine" (ByVal X0 As Double, ByVal Y0 As Double, ByVal X1 As Double, ByVal Y1 As Double) As Long
 Declare Function lcPaintPlineVer Alias "lcPaintPlineVer" (ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcPaintPline Alias "lcPaintPline" (ByVal bClosed As Long, ByVal bFilled As Long, ByVal bBorder As Long) As Long
 Declare Function lcPaintCircle Alias "lcPaintCircle" (ByVal X As Double, ByVal Y As Double, ByVal R As Double, ByVal bFilled As Long, ByVal bBorder As Long) As Long
 Declare Function lcPaintArc Alias "lcPaintArc" (ByVal X As Double, ByVal Y As Double, ByVal R As Double, ByVal Ang0 As Double, ByVal AngArc As Double) As Long
 Declare Function lcPaintSetFont Alias "lcPaintSetFont" (ByVal szFontName As String, ByVal Height As Double, ByVal Angle As Double, ByVal bBold As Long, ByVal bItalic As Long, ByVal bUnderline As Long, ByVal bStrikeOut As Long) As Long
 Declare Function lcPaintSetTextColor Alias "lcPaintSetTextColor" (ByVal ColorRed As Long, ByVal ColorGreen As Long, ByVal ColorBlue As Long) As Long
 Declare Function lcPaintText Alias "lcPaintText" (ByVal szText As String, ByVal X As Double, ByVal Y As Double, ByVal Align As Long) As Long
 Declare Function lcPaintEnd Alias "lcPaintEnd" () As Long
 Declare Function lcSurfAddTriangle Alias "lcSurfAddTriangle" (ByVal X0 As Double, ByVal Y0 As Double, ByVal Z0 As Double, ByVal X1 As Double, ByVal Y1 As Double, ByVal Z1 As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal Z2 As Double) As Long
 Declare Function lcSurfGetZ Alias "lcSurfGetZ" (ByVal X As Double, ByVal Y As Double, ByVal pZ As Long) As Long
 Declare Function lcSurfGetZ_dbg Alias "lcSurfGetZ_dbg" (ByVal X As Double, ByVal Y As Double, ByVal pZ As Long, ByVal pX0 As Long, ByVal pY0 As Long, ByVal pZ0 As Long, ByVal pX1 As Long, ByVal pY1 As Long, ByVal pZ1 As Long, ByVal pX2 As Long, ByVal pY2 As Long, ByVal pZ2 As Long) As Long
 Declare Function lcSurfAddPlanVer Alias "lcSurfAddPlanVer" (ByVal X As Double, ByVal Y As Double, ByVal Bulge As Double) As Long
 Declare Function lcSurfMakeSection Alias "lcSurfMakeSection" () As Long
 Declare Function lcSurfGetSectPoint Alias "lcSurfGetSectPoint" (ByVal iPnt As Long, ByVal pX As Long, ByVal pY As Long, ByVal pZ As Long) As Long
 Declare Function lcCSectClear Alias "lcCSectClear" () As Long
 Declare Function lcCSectBegin Alias "lcCSectBegin" (ByVal PlineType As Long) As Long
 Declare Function lcCSectAddPoint Alias "lcCSectAddPoint" (ByVal X As Double, ByVal Y As Double) As Long
 Declare Function lcCSectEnd Alias "lcCSectEnd" () As Long
 Declare Function lcCSectCalcArea Alias "lcCSectCalcArea" () As Long
 Declare Function lcCSectGetArea Alias "lcCSectGetArea" (ByVal iArea As Long, ByVal pAreaVal As Long, ByVal pNumPnts As Long) As Long
 Declare Function lcCSectGetAreaPoint Alias "lcCSectGetAreaPoint" (ByVal iArea As Long, ByVal iPnt As Long, ByVal pX As Long, ByVal pY As Long) As Long

