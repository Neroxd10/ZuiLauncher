.class public Lcom/zui/launcher/uioverrides/states/AllAppsState;
.super Lcom/zui/launcher/LauncherState;
.source ""


# static fields
.field private static final c:Lcom/zui/launcher/LauncherState$PageAlphaProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/uioverrides/states/AllAppsState$a;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/zui/launcher/uioverrides/states/AllAppsState$a;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/zui/launcher/uioverrides/states/AllAppsState;->c:Lcom/zui/launcher/LauncherState$PageAlphaProvider;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x140

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/launcher/LauncherState;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getDescription(Lcom/zui/launcher/Launcher;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHistoryForState(Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/LauncherState;
    .locals 0

    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :goto_0
    return-object p0
.end method

.method public getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    neg-int p0, p0

    int-to-float p0, p0

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr p0, p1

    new-instance p1, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const v0, 0x3f666666    # 0.9f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p1
.end method

.method public getVerticalProgress(Lcom/zui/launcher/Launcher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVisibleElements(Lcom/zui/launcher/Launcher;)I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$PageAlphaProvider;
    .locals 0

    sget-object p0, Lcom/zui/launcher/uioverrides/states/AllAppsState;->c:Lcom/zui/launcher/LauncherState$PageAlphaProvider;

    return-object p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 2

    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    add-float/2addr p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    :goto_0
    return-object p0
.end method

.method public onStateDisabled(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/LauncherState;->onStateDisabled(Lcom/zui/launcher/Launcher;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Launcher;->saveStatusBarColor(Z)V

    return-void
.end method

.method public onStateEnabled(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    invoke-static {p1}, Lcom/zui/launcher/LauncherState;->dispatchWindowStateChanged(Lcom/zui/launcher/Launcher;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Launcher;->saveStatusBarColor(Z)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    return-void
.end method
