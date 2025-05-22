.class public abstract Lcom/zui/launcher/touch/AbstractStateChangeTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/TouchController;
.implements Lcom/zui/launcher/touch/SwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;
    }
.end annotation


# static fields
.field public static final ATOMIC_OVERVIEW_ANIM_THRESHOLD:F = 0.5f

.field public static final SUCCESS_TRANSITION_PROGRESS:F = 0.5f


# instance fields
.field protected final ATOMIC_DURATION:J

.field private a:Z

.field private b:F

.field private c:F

.field private d:Z

.field private e:Lcom/zui/launcher/util/FlingBlockCheck;

.field private f:Z

.field private g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

.field private h:Z

.field private i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field private j:Lcom/zui/launcher/LauncherState;

.field private k:F

.field protected mAtomicAnim:Landroid/animation/AnimatorSet;

.field protected mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field protected final mDetector:Lcom/zui/launcher/touch/SwipeDetector;

.field protected mFromState:Lcom/zui/launcher/LauncherState;

.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field protected mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

.field protected mProgressMultiplier:F

.field protected mStartContainerType:I

.field protected mStartState:Lcom/zui/launcher/LauncherState;

.field protected final mSwipeDirection:Lcom/zui/launcher/touch/SwipeDetector$Direction;

.field protected mToState:Lcom/zui/launcher/LauncherState;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getAtomicDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->ATOMIC_DURATION:J

    new-instance v0, Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/zui/launcher/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e:Lcom/zui/launcher/util/FlingBlockCheck;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    iput-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->j:Lcom/zui/launcher/LauncherState;

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    new-instance v0, Lcom/zui/launcher/touch/SwipeDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/zui/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/zui/launcher/touch/SwipeDetector$Listener;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    iput-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mSwipeDirection:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->k()V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->k:F

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/anim/AnimatorPlaybackController;)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    return-object p1
.end method

.method static synthetic g(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;J)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->l(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;J)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/LauncherState;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->j:Lcom/zui/launcher/LauncherState;

    return-object p1
.end method

.method static synthetic i(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->r()V

    return-void
.end method

.method private j()V
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/133867119"

    const-string v1, "cancelAnimationControllers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->k()V

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    :cond_0
    iput-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    return-void
.end method

.method private l(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;J)Landroid/animation/AnimatorSet;
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getAnimatorSetBuilderForStates(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/anim/AnimatorSetBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v4, 0x2

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/LauncherStateManager;->createAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;IJ)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private m()J
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    sget-boolean v3, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private n()I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;

    move-result-object p0

    if-eq p0, v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    return v1
.end method

.method private q(ILcom/zui/launcher/LauncherState;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getDirectionForLog()I

    move-result v3

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->getDownX()I

    move-result v4

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->getDownY()I

    move-result v5

    iget v6, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    iget v7, v0, Lcom/zui/launcher/LauncherState;->containerType:I

    iget v8, p2, Lcom/zui/launcher/LauncherState;->containerType:I

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v9

    move v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/zui/launcher/logging/UserEventDispatcher;->logStateChangeAction(IIIIIIII)V

    return-void
.end method

.method private r()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    iget v4, v4, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;->a:F

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    iget-wide v2, v2, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    iput-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;-><init>(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/anim/AnimatorPlaybackController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private s(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;F)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->goingBetweenNormalAndOverview(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    const/4 v0, 0x1

    if-ltz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->h:Z

    if-eq p3, v1, :cond_5

    if-eqz p3, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    if-eqz p3, :cond_3

    move-object p1, p2

    :cond_3
    iput-boolean p3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->h:Z

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-wide p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->ATOMIC_DURATION:J

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->l(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;J)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;-><init>(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_5
    return-void
.end method

.method private t(ZZ)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    if-eq p1, p2, :cond_3

    :cond_2
    if-ne v0, p1, :cond_4

    :cond_3
    return v1

    :cond_4
    iput-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->b:F

    iput-boolean v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->h:Z

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setOnCancelRunnable(Ljava/lang/Runnable;)V

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->goingBetweenNormalAndOverview(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    move p1, p2

    goto :goto_1

    :cond_6
    const/4 p1, 0x7

    :goto_1
    iput-boolean v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->f:Z

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    iput-boolean p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->f:Z

    move p1, p2

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->goingBetweenNormalAndOverview(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->j:Lcom/zui/launcher/LauncherState;

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    if-eq v0, v1, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->k()V

    :cond_9
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_a

    and-int/lit8 p1, p1, -0x3

    :cond_a
    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->initCurrentAnimation(I)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    :cond_b
    return p2
.end method


# virtual methods
.method protected abstract canInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method protected clearState()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->j()V

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->f:Z

    return-void
.end method

.method protected getAnimatorSetBuilderForStates(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/anim/AnimatorSetBuilder;
    .locals 0

    new-instance p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    return-object p0
.end method

.method protected getAtomicDuration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method protected getDirectionForLog()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    iget v0, v0, Lcom/zui/launcher/LauncherState;->ordinal:I

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget p0, p0, Lcom/zui/launcher/LauncherState;->ordinal:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method protected abstract getLogContainerTypeForNormalState()I
.end method

.method protected getShiftRange()F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    return p0
.end method

.method protected abstract getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;
.end method

.method protected goingBetweenNormalAndOverview(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p2, p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract initCurrentAnimation(I)F
.end method

.method public synthetic o(Lcom/zui/launcher/LauncherState;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/133867119"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControllerInterceptTouchEvent 1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->a:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->n()I

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->a:Z

    return v2

    :cond_3
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v4, v0, v3}, Lcom/zui/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_4
    iget-boolean v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->a:Z

    if-eqz v0, :cond_5

    return v2

    :cond_5
    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_6

    const-string v0, "onControllerInterceptTouchEvent 2 "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/zui/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .locals 4

    iget v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    iget v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->c:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->b:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->updateProgress(F)V

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mSwipeDirection:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iget v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->c:F

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/touch/SwipeDetector$Direction;->e(F)Z

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->t(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->c:F

    iget-boolean p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->d:Z

    if-eqz p1, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/zui/launcher/util/FlingBlockCheck;->blockFling()V

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->t(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->c:F

    iget-boolean p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->d:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/zui/launcher/util/FlingBlockCheck;->onEvent()V

    :cond_2
    :goto_1
    return v3
.end method

.method protected onDragCancel(ZF)V
    .locals 13

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/133867119"

    const-string v1, "onDragCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/zui/launcher/util/FlingBlockCheck;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    move p1, v2

    :cond_3
    iget-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-nez v4, :cond_4

    const-string p1, "ASCTouchController"

    const-string p2, "onDragCancel, error, mCurrentAnimation ==== null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    return-void

    :cond_4
    iget-object v11, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v4

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    if-ne v11, v3, :cond_5

    invoke-static {p2}, Lcom/zui/launcher/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ne v11, v5, :cond_7

    cmpl-float v5, v4, v8

    if-ltz v5, :cond_6

    move v3, v8

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    iget v6, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5, v9, v8}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v5

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v4, v8, v4

    invoke-static {p2, v4}, Lcom/zui/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    int-to-long v3, v3

    mul-long/2addr v6, v3

    move v3, v8

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getOnCancelRunnable()Ljava/lang/Runnable;

    move-result-object v5

    iget-object v10, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setOnCancelRunnable(Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    iget-object v10, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v10, v5}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setOnCancelRunnable(Ljava/lang/Runnable;)V

    cmpg-float v5, v4, v9

    if-gtz v5, :cond_8

    move v3, v9

    :goto_3
    move v5, v3

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    iget v6, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5, v9, v8}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v5

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v4, v9

    invoke-static {p2, v4}, Lcom/zui/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    int-to-long v3, v3

    mul-long/2addr v6, v3

    move v3, v9

    :goto_4
    iget-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    new-instance v10, Lcom/zui/launcher/touch/d;

    invoke-direct {v10, p0, v11, v0}, Lcom/zui/launcher/touch/d;-><init>(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/LauncherState;I)V

    invoke-virtual {v4, v10}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v5, v4, v2

    aput v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    if-ne v11, v2, :cond_9

    goto :goto_5

    :cond_9
    move v8, v9

    :goto_5
    invoke-direct {p0, v1, v11, v8}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->s(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;F)V

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->m()J

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v4, p0

    move-object v5, v0

    move-object v8, v11

    move v9, p2

    move v10, p1

    invoke-virtual/range {v4 .. v10}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/zui/launcher/LauncherState;FZ)V

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v1, v3, p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStartWithVelocity(FF)V

    if-eqz p1, :cond_a

    sget-object p1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne v11, p1, :cond_a

    sget-object p1, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;F)V

    :cond_a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance p1, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-direct {p1, v3, v0, v1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;-><init>(FJ)V

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->r()V

    return-void
.end method

.method public onDragEnd(FZ)V
    .locals 13

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/133867119"

    const-string v1, "onDragEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/zui/launcher/util/FlingBlockCheck;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    move p2, v2

    :cond_3
    iget-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-nez v4, :cond_4

    const-string p1, "ASCTouchController"

    const-string p2, "onDragEnd, error, mCurrentAnimation ==== null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    return-void

    :cond_4
    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v5

    if-eqz p2, :cond_6

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v6, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_5

    :goto_2
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    :goto_3
    move-object v11, v5

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    sget-object v7, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    goto :goto_2

    :goto_4
    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    if-ne v11, v3, :cond_7

    invoke-static {p1}, Lcom/zui/launcher/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v3

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ne v11, v5, :cond_9

    cmpl-float v5, v4, v8

    if-ltz v5, :cond_8

    move v3, v8

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget v6, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5, v9, v8}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v5

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v4, v8, v4

    invoke-static {p1, v4}, Lcom/zui/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    int-to-long v3, v3

    mul-long/2addr v6, v3

    move v3, v8

    goto :goto_7

    :cond_9
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getOnCancelRunnable()Ljava/lang/Runnable;

    move-result-object v5

    iget-object v10, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setOnCancelRunnable(Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    iget-object v10, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v10, v5}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setOnCancelRunnable(Ljava/lang/Runnable;)V

    cmpg-float v5, v4, v9

    if-gtz v5, :cond_a

    move v3, v9

    :goto_6
    move v5, v3

    goto :goto_7

    :cond_a
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget v6, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5, v9, v8}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v5

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v4, v9

    invoke-static {p1, v4}, Lcom/zui/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    int-to-long v3, v3

    mul-long/2addr v6, v3

    move v3, v9

    :goto_7
    iget-object v4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    new-instance v10, Lcom/zui/launcher/touch/c;

    invoke-direct {v10, p0, v11, v0}, Lcom/zui/launcher/touch/c;-><init>(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/LauncherState;I)V

    invoke-virtual {v4, v10}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v5, v4, v2

    aput v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    if-ne v11, v2, :cond_b

    goto :goto_8

    :cond_b
    move v8, v9

    :goto_8
    invoke-direct {p0, v1, v11, v8}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->s(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;F)V

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->m()J

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v4, p0

    move-object v5, v0

    move-object v8, v11

    move v9, p1

    move v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/zui/launcher/LauncherState;FZ)V

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v1, v3, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStartWithVelocity(FF)V

    if-eqz p2, :cond_c

    sget-object p2, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne v11, p2, :cond_c

    sget-object p2, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p2}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;F)V

    :cond_c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance p1, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-direct {p1, v3, v0, v1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;-><init>(FJ)V

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->r()V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/133867119"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStart 1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getLauncherDownLoadDialog()Lcom/zui/launcher/LauncherDownLoadDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherDownLoadDialog;->dismissDownLoadDialog()V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getLogContainerTypeForNormalState()I

    move-result p1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_3

    const/16 p1, 0xc

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_4

    const-string p1, "onDragStart 2"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iput-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->j()V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/zui/launcher/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->t(ZZ)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->c:F

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->pause()V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->b:F

    iput-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g:Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->pause()V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->d:Z

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e:Lcom/zui/launcher/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/zui/launcher/util/FlingBlockCheck;->unblockFling()V

    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V
    .locals 6

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/133867119"

    if-eqz v0, :cond_0

    const-string v0, "onSwipeInteractionCompleted 1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->j()V

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    if-ne v0, p1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-object v5, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    invoke-virtual {v5, v0, p2}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    iput-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    xor-int/2addr v4, v0

    :cond_3
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    if-eq p1, v0, :cond_4

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->q(ILcom/zui/launcher/LauncherState;)V

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_5

    const-string p0, "onSwipeInteractionCompleted 2"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public synthetic p(Lcom/zui/launcher/LauncherState;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    return-void
.end method

.method public shouldDrag(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method protected updateProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->k:F

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    sub-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_1
    return-void
.end method

.method protected updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/zui/launcher/LauncherState;FZ)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {p5}, Lcom/zui/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
