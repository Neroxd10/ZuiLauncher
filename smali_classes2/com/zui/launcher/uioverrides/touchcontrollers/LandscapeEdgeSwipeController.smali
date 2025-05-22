.class public Lcom/zui/launcher/uioverrides/touchcontrollers/LandscapeEdgeSwipeController;
.super Lcom/zui/launcher/touch/AbstractStateChangeTouchController;
.source ""


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method protected getDirectionForLog()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method protected getLogContainerTypeForNormalState()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method protected getShiftRange()F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method protected getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :goto_1
    return-object p0
.end method

.method protected initCurrentAnimation(I)F
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/LandscapeEdgeSwipeController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v1, v1

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v3, v4, v1, v2, p1}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;JI)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method protected onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    const/4 p1, 0x1

    const-string p2, "LandscapeEdgeSwipeCtrl"

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
