.class public Lcom/zui/launcher/uioverrides/states/BackgroundAppState;
.super Lcom/zui/launcher/uioverrides/states/OverviewState;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/uioverrides/states/BackgroundAppState;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2

    const/16 v0, 0xfa

    const/16 v1, 0xc6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/launcher/uioverrides/states/OverviewState;-><init>(IIII)V

    return-void
.end method

.method public static getOverviewScaleAndOffsetForBackgroundState(Lcom/zui/launcher/BaseDraggingActivity;)[F
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/4 v1, 0x0

    aput v1, v0, p0

    return-object v0
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 0

    const-string p0, "ro.launcher.depth.appLaunch"

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/states/BackgroundAppState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    :cond_0
    return-object p0
.end method

.method public getOverviewFullscreenProgress()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getOverviewScaleAndOffset(Lcom/zui/launcher/Launcher;)[F
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/states/BackgroundAppState;->getOverviewScaleAndOffsetForBackgroundState(Lcom/zui/launcher/BaseDraggingActivity;)[F

    move-result-object p0

    return-object p0
.end method

.method public getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getTaskViewCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getCurrentPage()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zui/quickstep/BaseRecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getTempClipAnimationHelper()Lcom/zui/quickstep/util/ClipAnimationHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateForFullscreenOverview(Lcom/zui/quickstep/views/TaskView;)Lcom/zui/quickstep/util/ClipAnimationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->getScaleAndTranslation()Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalProgress(Lcom/zui/launcher/Launcher;)F
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;)I

    move-result v0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public getVisibleElements(Lcom/zui/launcher/Launcher;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result p0

    and-int/lit8 p0, p0, -0x41

    and-int/lit8 p0, p0, -0x21

    return p0
.end method

.method public onStateEnabled(Lcom/zui/launcher/Launcher;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V

    return-void
.end method

.method public sendBroadcast(Lcom/zui/launcher/Launcher;Z)V
    .locals 0

    return-void
.end method
