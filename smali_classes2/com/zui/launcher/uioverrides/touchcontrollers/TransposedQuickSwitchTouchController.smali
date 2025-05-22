.class public Lcom/zui/launcher/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;
.super Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;
.source ""


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method


# virtual methods
.method protected getShiftRange()F
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method protected getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v0

    xor-int/2addr p2, v0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method protected initCurrentAnimation(I)F
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->initCurrentAnimation(I)F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    return p1
.end method
