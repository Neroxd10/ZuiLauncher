.class public Lcom/zui/launcher/allapps/DiscoveryBounce;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;
    }
.end annotation


# static fields
.field public static final BOUNCE_MAX_COUNT:I = 0x3

.field public static final HOME_BOUNCE_COUNT:Ljava/lang/String; = "launcher.home_bounce_count"

.field public static final HOME_BOUNCE_SEEN:Ljava/lang/String; = "launcher.apps_view_shown"

.field public static final SHELF_BOUNCE_COUNT:Ljava/lang/String; = "launcher.shelf_bounce_count"

.field public static final SHELF_BOUNCE_SEEN:Ljava/lang/String; = "launcher.shelf_bounce_seen"


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Landroid/animation/Animator;

.field private final c:Lcom/zui/launcher/LauncherStateManager$StateListener;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;F)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/zui/launcher/allapps/DiscoveryBounce$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/DiscoveryBounce$a;-><init>(Lcom/zui/launcher/allapps/DiscoveryBounce;)V

    iput-object v1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->c:Lcom/zui/launcher/LauncherStateManager$StateListener;

    iput-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v1

    const v2, 0x7f020004

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->b:Landroid/animation/Animator;

    new-instance v3, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;

    invoke-direct {v3, v1, p2, v0}, Lcom/zui/launcher/allapps/DiscoveryBounce$VerticalProgressWrapper;-><init>(Lcom/zui/launcher/allapps/AllAppsTransitionController;FLcom/zui/launcher/allapps/DiscoveryBounce$a;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->b:Landroid/animation/Animator;

    new-instance v0, Lcom/zui/launcher/allapps/DiscoveryBounce$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/DiscoveryBounce$b;-><init>(Lcom/zui/launcher/allapps/DiscoveryBounce;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->b:Landroid/animation/Animator;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->c:Lcom/zui/launcher/LauncherStateManager$StateListener;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method private static a(Lcom/zui/launcher/Launcher;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "launcher.home_bounce_count"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Lcom/zui/launcher/Launcher;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "launcher.shelf_bounce_count"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->g(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->h(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method

.method private static e(Lcom/zui/launcher/Launcher;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showed_peek_work_tab"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/compat/UserManagerCompat;->hasWorkProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private f(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionBounceTip(I)V

    :cond_1
    return-void
.end method

.method private static g(Lcom/zui/launcher/Launcher;Z)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "launcher.apps_view_shown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->e(Lcom/zui/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->isDemoUser()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/zui/launcher/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/zui/launcher/allapps/q;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/q;-><init>(Lcom/zui/launcher/Launcher;)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    invoke-static {p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->a(Lcom/zui/launcher/Launcher;)V

    new-instance p1, Lcom/zui/launcher/allapps/DiscoveryBounce;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/allapps/DiscoveryBounce;-><init>(Lcom/zui/launcher/Launcher;F)V

    const/4 p0, 0x2

    invoke-direct {p1, p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->f(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static h(Lcom/zui/launcher/Launcher;Z)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isForceInvisible()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "launcher.shelf_bounce_seen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->e(Lcom/zui/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->isDemoUser()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/zui/launcher/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/zui/launcher/allapps/p;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/p;-><init>(Lcom/zui/launcher/Launcher;)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/zui/launcher/states/InternalStateHandler;->hasPending()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->b(Lcom/zui/launcher/Launcher;)V

    new-instance p1, Lcom/zui/launcher/allapps/DiscoveryBounce;

    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/allapps/DiscoveryBounce;-><init>(Lcom/zui/launcher/Launcher;F)V

    const/4 p0, 0x7

    invoke-direct {p1, p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->f(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static showForHomeIfNeeded(Lcom/zui/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->g(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method

.method public static showForOverviewIfNeeded(Lcom/zui/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->h(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 2

    iget-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iget-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->setProgress(F)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->c:Lcom/zui/launcher/LauncherStateManager$StateListener;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherStateManager;->removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    :cond_1
    return-void
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->b:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/AbstractFloatingView;->onBackPressed()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/DiscoveryBounce;->handleClose(Z)V

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce;->b:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method
