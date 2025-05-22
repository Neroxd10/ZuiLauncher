.class public Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;
.super Lcom/zui/launcher/touch/AbstractStateChangeTouchController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PortraitStatesTouchCtrl"


# instance fields
.field private final l:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

.field private final m:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;

.field private final n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Z)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$a;)V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->m:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    invoke-direct {v0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->l:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    iput-boolean p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->n:Z

    return-void
.end method

.method public static getOverviewToAllAppsAnimation()Lcom/zui/launcher/anim/AnimatorSetBuilder;
    .locals 4

    new-instance v0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const v3, 0x3da3d70a    # 0.08f

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    const v2, 0x3f6147ae    # 0.88f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static isTouchOverHotseat(Lcom/zui/launcher/Launcher;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070846

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    sub-int/2addr p0, v1

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    :cond_0
    return-void
.end method

.method private v()Lcom/zui/launcher/anim/AnimatorSetBuilder;
    .locals 3

    new-instance p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    const v1, 0x3f6b851f    # 0.92f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const v2, 0x3df5c290    # 0.120000005f

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method private w()Lcom/zui/launcher/anim/AnimatorSetBuilder;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->m:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    iput-object v1, v0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;->a:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->m:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private x(Landroid/animation/ValueAnimator;JLcom/zui/launcher/LauncherState;FZ)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    sget-object v2, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p4, v0, :cond_0

    iput-boolean v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->o:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v2, :cond_1

    if-ne p4, v2, :cond_1

    iput-boolean v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->o:Z

    if-eqz p6, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p4

    iget-object p6, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->m:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;

    invoke-static {p5}, Lcom/zui/launcher/anim/Interpolators;->overshootInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p5, p4, v0}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p4

    iput-object p4, p6, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;->a:Landroid/animation/TimeInterpolator;

    iget-wide p4, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->ATOMIC_DURATION:J

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->o:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic z(Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->clearState()V

    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->o:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->skipToEnd()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v3

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getProgress()F

    move-result v0

    mul-float/2addr v3, v0

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v3, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v3, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->l:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v3, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->n:Z

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->isTouchOverHotseat(Lcom/zui/launcher/Launcher;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    const p1, 0x7fcbf

    invoke-static {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v1
.end method

.method protected getAnimatorSetBuilderForStates(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/anim/AnimatorSetBuilder;
    .locals 2

    new-instance v0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p2, v1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->w()Lcom/zui/launcher/anim/AnimatorSetBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p2, v1, :cond_1

    invoke-static {}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->getOverviewToAllAppsAnimation()Lcom/zui/launcher/anim/AnimatorSetBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p2, p1, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->v()Lcom/zui/launcher/anim/AnimatorSetBuilder;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected getLogContainerTypeForNormalState()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/zui/quickstep/TouchInteractionService;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getLastState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :goto_1
    return-object p0

    :cond_4
    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_8

    if-eqz p2, :cond_8

    sget-object p1, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/OverviewInteractionState;

    invoke-virtual {p1}, Lcom/zui/quickstep/OverviewInteractionState;->getSystemUiStateFlags()I

    move-result p1

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p2

    iget-boolean p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->n:Z

    if-eqz p2, :cond_6

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/zui/quickstep/TouchInteractionService;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_5

    and-int/lit16 p0, p1, 0x80

    if-nez p0, :cond_5

    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :goto_2
    return-object p0

    :cond_6
    if-eqz p0, :cond_7

    invoke-static {}, Lcom/zui/quickstep/TouchInteractionService;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_7

    and-int/lit16 p0, p1, 0x80

    if-nez p0, :cond_7

    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    goto :goto_3

    :cond_7
    sget-object p0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    :goto_3
    return-object p0

    :cond_8
    return-object p1
.end method

.method protected initCurrentAnimation(I)F
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v5, v1

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v2

    mul-float/2addr v2, v0

    sub-float v0, v2, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    new-instance v2, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v2, v3}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->getAnimatorSetBuilderForStates(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/anim/AnimatorSetBuilder;

    move-result-object v2

    :goto_0
    move-object v4, v2

    invoke-virtual {p0, v4}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->updateAnimatorBuilderOnReinit(Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->u()V

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    sget-object v3, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    sget-object v3, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->l:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    invoke-virtual {v2}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->l:Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    invoke-virtual {p1, v5, v6}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->b(J)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    iget-object p1, p1, Lcom/zui/launcher/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/zui/launcher/uioverrides/touchcontrollers/d;

    invoke-direct {p1, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/d;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;)V

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mPendingAnimation:Lcom/zui/launcher/util/PendingAnimation;

    iget-object v0, v0, Lcom/zui/launcher/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    invoke-static {v0, v5, v6, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherStateManager;->setCurrentUserControlledAnimation(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;)I

    move-result p1

    int-to-float v0, p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    new-instance v7, Lcom/zui/launcher/uioverrides/touchcontrollers/e;

    invoke-direct {v7, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/e;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;)V

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;JLjava/lang/Runnable;I)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    :goto_1
    cmpl-float p1, v0, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget p1, p1, Lcom/zui/launcher/LauncherState;->ordinal:I

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    iget v0, v0, Lcom/zui/launcher/LauncherState;->ordinal:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getDefaultSwipeHeight(Lcom/zui/launcher/Launcher;)F

    move-result p0

    mul-float v0, p1, p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    return p0
.end method

.method protected onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, p2, :cond_0

    sget-object p2, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/quickstep/SystemUiProxy;

    const/4 v0, 0x1

    const-string v1, "PortraitStatesTouchCtrl"

    invoke-virtual {p2, v0, v1}, Lcom/zui/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/zui/quickstep/SystemUiProxy;->exitSplitScreenOnStartHome()V

    :cond_1
    return-void
.end method

.method protected updateAnimatorBuilderOnReinit(Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    return-void
.end method

.method protected updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/zui/launcher/LauncherState;FZ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/zui/launcher/LauncherState;FZ)V

    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->x(Landroid/animation/ValueAnimator;JLcom/zui/launcher/LauncherState;FZ)V

    return-void
.end method

.method public synthetic y()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->u()V

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->clearState()V

    return-void
.end method
