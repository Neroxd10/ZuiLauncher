.class public Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;
.super Lcom/zui/launcher/allapps/AllAppsContainerView;
.source ""


# instance fields
.field private final A:Lcom/zui/launcher/Launcher;

.field private B:Lcom/zui/launcher/LauncherStateManager$StateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;->A:Lcom/zui/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;->A:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->w:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;->A:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->setInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;->A:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->p:Lcom/zui/launcher/allapps/SearchUiManager;

    invoke-interface {p0, p1}, Lcom/zui/launcher/allapps/SearchUiManager;->getScrollRangeDelta(Landroid/graphics/Rect;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f(F)V

    return-void
.end method

.method public setupHeader()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->setupHeader()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;->B:Lcom/zui/launcher/LauncherStateManager$StateListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;->A:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/LauncherAllAppsContainerView;->B:Lcom/zui/launcher/LauncherStateManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherStateManager;->removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    :cond_0
    return-void
.end method
