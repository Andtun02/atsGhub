-- 甲在盒子内的坐标
points = {
    -- X,Y,Time(ms)
    {9630,35219,5},
    {9630,38403,5}
}

-- 声明
OutputLogMessage("===========================\nREWASD QQqun:744832457\nby taobao: ma cha chong hao jie\n===========================\n")

-- main
function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
        -- 初始化：获取坐标
        x,y = GetMousePosition()
        OutputLogMessage("X: %d || Y: %d\n",x,y)
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
        -- 开盒子
        PressKey("e")
        Sleep(500)
        ReleaseKey("e")

        -- 点击事件
        for k, v in ipairs(points) do
            Sleep(5)
            MoveMouseTo(v[1], v[2]);
            Sleep(1)
            PressMouseButton(1)
            Sleep(v[3])
            ReleaseMouseButton(1)
        end

        -- 关闭界面
        Sleep(10)
        PressKey("tab")
        ReleaseKey("tab")
    end
end
