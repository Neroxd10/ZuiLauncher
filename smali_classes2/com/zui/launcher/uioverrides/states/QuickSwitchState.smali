.class public Lcom/zui/launcher/uioverrides/states/QuickSwitchState;
.super Lcom/zui/launcher/uioverrides/states/BackgroundAppState;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/uioverrides/states/BackgroundAppState;-><init>(II)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/Launcher;Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    const-string p0, "QuickSwitchState"

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->moveToRestState()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getVisibleElements(Lcom/zui/launcher/Launcher;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/states/BackgroundAppState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr p0, v0

    new-instance p1, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p1
.end method

.method public onStateTransitionEnd(Lcom/zui/launcher/Launcher;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/zui/launcher/uioverrides/states/a;

    invoke-direct {v1, p1, p0}, Lcom/zui/launcher/uioverrides/states/a;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/quickstep/views/TaskView;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/zui/quickstep/views/TaskView;->launchTask(ZLjava/util/function/Consumer;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :goto_0
    return-void
.end method
