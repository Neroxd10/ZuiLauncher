.class public Lcom/zui/launcher/uioverrides/states/OverviewState;
.super Lcom/zui/launcher/LauncherState;
.source ""


# static fields
.field public static final RECENTS_WALLPAPER_BLUR_VALUE:I = 0x66

.field protected static final sTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/uioverrides/states/OverviewState;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xfa

    const/16 v1, 0x8e

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/uioverrides/states/OverviewState;-><init>(III)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/zui/launcher/uioverrides/states/OverviewState;-><init>(IIII)V

    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/LauncherState;-><init>(IIII)V

    return-void
.end method

.method public static getDefaultSwipeHeight(Lcom/zui/launcher/DeviceProfile;)F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float v0, v0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->allAppsIconTextSizePx:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getDefaultSwipeHeight(Lcom/zui/launcher/Launcher;)F
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getDefaultSwipeHeight(Lcom/zui/launcher/DeviceProfile;)F

    move-result p0

    return p0
.end method

.method public static getDefaultVerticalProgress(Lcom/zui/launcher/Launcher;)F
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getDefaultSwipeHeight(Lcom/zui/launcher/Launcher;)F

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    return p0
.end method

.method public static newBackgroundState(I)Lcom/zui/launcher/uioverrides/states/OverviewState;
    .locals 1

    new-instance v0, Lcom/zui/launcher/uioverrides/states/BackgroundAppState;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/states/BackgroundAppState;-><init>(I)V

    return-object v0
.end method

.method public static newPeekState(I)Lcom/zui/launcher/uioverrides/states/OverviewState;
    .locals 1

    new-instance v0, Lcom/zui/launcher/uioverrides/states/OverviewPeekState;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/states/OverviewPeekState;-><init>(I)V

    return-object v0
.end method

.method public static newSwitchState(I)Lcom/zui/launcher/uioverrides/states/OverviewState;
    .locals 1

    new-instance v0, Lcom/zui/launcher/uioverrides/states/QuickSwitchState;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/states/QuickSwitchState;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 0

    const-string p0, "ro.launcher.depth.overview"

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

.method public getDescription(Lcom/zui/launcher/Launcher;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f120058

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getOverviewModalness()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 1

    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getVerticalProgress(Lcom/zui/launcher/Launcher;)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getDefaultVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p0

    return p0
.end method

.method public getVisibleElements(Lcom/zui/launcher/Launcher;)I
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x40

    return p0

    :cond_0
    const/16 p0, 0x42

    return p0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$PageAlphaProvider;
    .locals 1

    new-instance p1, Lcom/zui/launcher/uioverrides/states/OverviewState$a;

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/uioverrides/states/OverviewState$a;-><init>(Lcom/zui/launcher/uioverrides/states/OverviewState;Landroid/view/animation/Interpolator;)V

    return-object p1
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 1

    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const p1, 0x3f733333    # 0.95f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getWorkspaceScrimAlpha(Lcom/zui/launcher/Launcher;)F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public onBackPressed(Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(ILcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(Z)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/zui/launcher/LauncherState;->onBackPressed(Lcom/zui/launcher/Launcher;)V

    :goto_1
    return-void
.end method

.method public onStateDisabled(Lcom/zui/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->sendBroadcast(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method

.method public onStateEnabled(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStateTransitionEnd(Lcom/zui/launcher/Launcher;)V
    .locals 4

    invoke-static {p1}, Lcom/zui/launcher/allapps/DiscoveryBounce;->showForOverviewIfNeeded(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->showHintIfNeeded(Z)V

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getClearAllButton()Lcom/zui/quickstep/views/ClearAllButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/quickstep/views/ClearAllButton;->updatePosition()V

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->updateEnabledActionButtonView()V

    :cond_0
    iget v0, p1, Lcom/zui/launcher/Launcher;->wallpaper_alpha:I

    const/16 v2, 0x66

    if-ge v0, v2, :cond_1

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x32

    iget v3, p1, Lcom/zui/launcher/Launcher;->wallpaper_alpha:I

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->sendBroadcast(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method

.method public prepareForAtomicAnimation(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p2, v0, :cond_3

    sget-object p2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p0, p2, :cond_3

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    sget-object p2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x2

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/zui/quickstep/util/RecentsViewUtils;->INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsViewUtils;->isPhone()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getContentAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const p2, 0x3faa3d71    # 1.33f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_2
    :goto_0
    const/4 p0, 0x3

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x6

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x7

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 p0, 0x9

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_3
    return-void
.end method

.method public sendBroadcast(Lcom/zui/launcher/Launcher;Z)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.zui.quickstep.OverviewState"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "state_enabled"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.zui.launcher.permission.overview"

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
