#Requires AutoHotkey >=v2.0

; --- 初期設定 ---
InstallKeybdHook
InstallMouseHook
SetCapsLockState("AlwaysOff") ;CapsLockを無効化
SetNumLockState("AlwaysOn") ;NumLockを有効化
SetScrollLockState("AlwaysOff") ;ScrollLockを無効化

IS_LAYER1 := false
IS_LAYER2 := false
HOLD_LIMIT_TIME := 300 ; Spaceキーのホールドとタップの判定時間 (ミリ秒)
NONE_PRIOR_KEY := "" ; 単独キーの判定用変数

; ---scancode定義---
; 無変換キー: sc07B(vk1D)
; 変換キー: sc079(vk1C)
; CapsLock: sc03A(vkF0)

; --- 単独キーの変更 ---
; スペースを単独押しでスペース（離した時に送信）、押し下げでCtrl
*Space:: {
    global IS_LAYER1, HOLD_LIMIT_TIME
    pushTime := A_TickCount
    Send("{Blind}{Ctrl Down}")
    KeyWait("Space")
    Send("{Blind}{Ctrl Up}")
    holdTime := A_TickCount - pushTime
    if (A_PriorKey = "Space" and holdTime < HOLD_LIMIT_TIME) {
        Send("{Blind}{Space}")
    }
}

; 変換キー単独押しでEnter (離した時に送信)、押し下げでレイヤー1・2
*vk1C:: {
    global IS_LAYER1, IS_LAYER2, NONE_PRIOR_KEY, HOLD_LIMIT_TIME
    pushTime := A_TickCount
    NONE_PRIOR_KEY := "vk1C"
    IS_LAYER1 := true
    IS_LAYER2 := true
    KeyWait("vk1C")
    IS_LAYER1 := false
    IS_LAYER2 := false
    holdTime := A_TickCount - pushTime
    if ((A_PriorKey = "" and NONE_PRIOR_KEY = "vk1C") and (holdTime < HOLD_LIMIT_TIME)) {
        Send("{Blind}{Enter}")
    }
}

; 無変換キー押し下げでレイヤー1・2
*vk1D:: {
    global IS_LAYER1, IS_LAYER2
    IS_LAYER1 := true
    IS_LAYER2 := true
    KeyWait("vk1D")
    IS_LAYER1 := false
    IS_LAYER2 := false
}

; 右クリック押し下げでレイヤー1
*RButton:: {
    global IS_LAYER1
    pushTime := A_TickCount
    IS_LAYER1 := true
    KeyWait("RButton")
    IS_LAYER1 := false
    holdTime := A_TickCount - pushTime
    if (A_PriorKey = "RButton") and (holdTime < HOLD_LIMIT_TIME) {
        Send("{Blind}{RButton}")
    }
}

; CapsLockをBackSpaceに
vkF0::BS

; --- コンボキーの定義 (無変換/変換/右クリックとの組み合わせ) ---
; 1. テンキー入力 (x, c, v, s, d, f, w, e, r, z, a, q)
#HotIf IS_LAYER1
x:: Send "{Blind}1"
c:: Send "{Blind}2"
v:: Send "{Blind}3"
s:: Send "{Blind}4"
d:: Send "{Blind}5"
f:: Send "{Blind}6"
w:: Send "{Blind}7"
e:: Send "{Blind}8"
r:: Send "{Blind}9"
z:: Send "{Blind}0"
a:: Send "{Blind}."
q:: Send "{Blind},"

; 2. Enter (Tabキーとの組み合わせ)
Tab:: Send "{Blind}{Enter}"

; 3. Delete (CapsLockとの組み合わせ)
vkF0:: Send "{Blind}{Delete}"
#HotIf

; 4. カーソルキー・HOME・END・APP (無変換 or 変換との組み合わせ)
#HotIf IS_LAYER2
i:: Send "{Blind}{Up}"
k:: Send "{Blind}{Down}"
j:: Send "{Blind}{Left}"
l:: Send "{Blind}{Right}"
m:: Send "{Blind}{Home}"
,:: Send "{Blind}{AppsKey}"
.:: Send "{Blind}{End}"
#HotIf