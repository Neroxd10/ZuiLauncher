.class public Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/TouchController;
.implements Lcom/zui/launcher/touch/SwipeDetector$Listener;


# static fields
.field private static final i:Landroid/view/animation/Interpolator;


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/touch/SwipeDetector;

.field private final c:F

.field private d:Z

.field private e:Lcom/zui/launcher/LauncherState;

.field private f:Lcom/zui/launcher/LauncherState;

.field private g:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field private h:Lcom/zui/launcher/AbstractFloatingView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->f:Lcom/zui/launcher/LauncherState;

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    new-instance p1, Lcom/zui/launcher/touch/SwipeDetector;

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/touch/SwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p1, v0, p0, v1}, Lcom/zui/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/zui/launcher/touch/SwipeDetector$Listener;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->c:F

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;)Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e:Lcom/zui/launcher/LauncherState;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->j(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e:Lcom/zui/launcher/LauncherState;

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->h:Lcom/zui/launcher/AbstractFloatingView;

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->g:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    return-void
.end method

.method private e()F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    return p0
.end method

.method private f()V
    .locals 10

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e:Lcom/zui/launcher/LauncherState;

    sget-object v4, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/quickstep/BaseRecentsView;

    iget v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->c:F

    invoke-interface {v3}, Lcom/zui/quickstep/BaseRecentsView;->isRtl()Z

    move-result v7

    if-nez v7, :cond_0

    neg-float v4, v4

    :cond_0
    check-cast v3, Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v6, [F

    aput v4, v6, v5

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne v3, v4, :cond_2

    new-instance v3, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v3}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    iget-object v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v4

    sget-object v7, Lcom/zui/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    new-array v6, v6, [F

    iget v8, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->c:F

    neg-float v8, v8

    invoke-virtual {v4}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v9

    div-float/2addr v8, v9

    aput v8, v6, v5

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v6, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v5}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    const/16 v5, 0xa

    sget-object v6, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v6, v7, v8}, Lcom/zui/launcher/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance v5, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {v5}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    iput-wide v0, v5, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    iget-object v6, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->f:Lcom/zui/launcher/LauncherState;

    iget-object v7, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6, v7}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v6

    invoke-virtual {v4, v6, v5, v3}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->setAlphas(ILcom/zui/launcher/LauncherStateManager$AnimationConfig;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    invoke-virtual {v3}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v3}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->c:F

    invoke-virtual {v3, v4}, Lcom/zui/launcher/AbstractFloatingView;->createHintCloseAnim(F)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/zui/launcher/uioverrides/touchcontrollers/c;

    invoke-direct {v3, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/c;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    invoke-static {v2, v0, v1, v3}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->g:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    return-void
.end method

.method public static synthetic g(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->d()V

    return-void
.end method

.method private i(II)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->getDownX()I

    move-result v4

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->getDownY()I

    move-result v5

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->f:Lcom/zui/launcher/LauncherState;

    iget v8, v0, Lcom/zui/launcher/LauncherState;->containerType:I

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v9

    const/4 v3, 0x1

    const/16 v6, 0xb

    move v2, p2

    move v7, p1

    invoke-virtual/range {v1 .. v9}, Lcom/zui/launcher/logging/UserEventDispatcher;->logStateChangeAction(IIIIIIII)V

    return-void
.end method

.method private j(Lcom/zui/launcher/LauncherState;)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->d()V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    iget v1, p1, Lcom/zui/launcher/LauncherState;->ordinal:I

    invoke-static {v0, v1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e:Lcom/zui/launcher/LauncherState;

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/zui/quickstep/SystemUiProxy;->exitSplitScreenOnStartHome()V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic h()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->f:Lcom/zui/launcher/LauncherState;

    invoke-direct {p0, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->j(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e:Lcom/zui/launcher/LauncherState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->d:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->finishedScrolling()V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->d:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/zui/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/Utilities;->getProgress(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->g:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 6

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->g:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v1

    sget-object v2, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v5

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->f:Lcom/zui/launcher/LauncherState;

    new-instance v1, Lcom/zui/launcher/uioverrides/touchcontrollers/b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/b;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    invoke-virtual {p1, p2, v5, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->e:Lcom/zui/launcher/LauncherState;

    iget-object p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->f:Lcom/zui/launcher/LauncherState;

    if-eq p1, p2, :cond_3

    iget p1, p1, Lcom/zui/launcher/LauncherState;->containerType:I

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i(II)V

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    invoke-virtual {p1}, Lcom/zui/launcher/AbstractFloatingView;->getLogContainerType()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->i(II)V

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->g:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    aput v1, p2, v3

    aput v4, p2, v5

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance p2, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController$a;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_3
    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;->f()V

    return-void
.end method
