; #FUNCTION# ====================================================================================================================
; Name ..........: CheckZoomOut
; Description ...:
; Syntax ........: CheckZoomOut()
; Parameters ....:
; Return values .: None
; Author ........: Code Monkey #12
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
;
Func CheckZoomOut($sSource = "CheckZoomOut", $bForecCapture = True)
	If $bForecCapture = True Then
		_CaptureRegion2()
	EndIf
	Local $aVillageResult = SearchZoomOut(False, True, $sSource, False)
	If IsArray($aVillageResult) = 0 Or $aVillageResult[0] = "" Then
		; not zoomed out, Return
		SetLog("Not Zoomed Out! Exiting to MainScreen...", $COLOR_ERROR)
		checkMainScreen() ;exit battle screen
		$Restart = True ; Restart Attack
		$Is_ClientSyncError = True ; quick restart
		Return False
	EndIf
	Return True
EndFunc   ;==>CheckZoomOut
