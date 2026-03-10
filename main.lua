-- =========================================================
-- TEKKEN 8 - Jukebox UI Toggle
-- Purpose: Photo Mode utility for Tekken 8 Jukebox.
-- =========================================================

local isHidden = false

local UI_TARGET_CLASSES = {
    "WBP_UI_JukeBox_C",
    "WBP_UI_JukeBox_BgmWin_C",
    "WBP_UI_JukeBox_StageWin_C",
    "WBP_UI_InformationBar_C",
    "WBP_UI_Guide_Button_C",
    "WBP_UI_JukeBox_Arrow_C",
    "WBP_UI_JukeBox_Jacket_C",
    "WBP_UI_JukeBox_TabMenu_C",
    "WBP_UI_Guide_ButtonList_C",
    "PolarisGridCursor",
    "WBP_Common_FocusCursor_C",
    "WBP_UI_Cursor_C"
}

local function OnToggleUI()
    isHidden = not isHidden
    local visibility = isHidden and 2 or 0
    local opacity = isHidden and 0.0 or 1.0

    for _, className in ipairs(UI_TARGET_CLASSES) do
        local instances = FindAllOf(className)
        if instances then
            for _, instance in ipairs(instances) do
                if instance:IsValid() then
                    pcall(function()
                        instance:SetVisibility(visibility)
                        instance:SetRenderOpacity(opacity)

                        if className == "WBP_UI_InformationBar_C" then
                            instance:ShowInformationBar(not isHidden)
                        end
                    end)
                end
            end
        end
    end
end

RegisterKeyBind(Key.F9, {}, OnToggleUI)
