.class public Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;
.super Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;
.source ""


# instance fields
.field private final p:Lcom/zui/quickstep/util/MotionPauseDetector;

.field private final q:F

.field private final r:F

.field private s:Landroid/animation/AnimatorSet;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/zui/launcher/Launcher;Z)V

    new-instance v0, Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->q:F

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getShiftRange()F

    move-result p1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->r:F

    return-void
.end method

.method static synthetic A(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->ATOMIC_DURATION:J

    return-wide v0
.end method

.method static synthetic B(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->s:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private C()Z
    .locals 2

    sget-object v0, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/OverviewInteractionState;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewInteractionState;->getSystemUiStateFlags()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartState:Lcom/zui/launcher/LauncherState;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p0, v1, :cond_0

    and-int/lit16 p0, v0, 0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static D(Lcom/zui/launcher/Launcher;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public synthetic E(Z)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion paused listener, isPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PortraitStatesTouchCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zui/quickstep/BaseRecentsView;->setOverviewStateEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->s:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

    :goto_0
    move-object v3, v1

    if-eqz p1, :cond_3

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :goto_1
    move-object v4, v1

    if-eqz p1, :cond_4

    const-wide/16 v1, 0xf0

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x64

    :goto_2
    move-wide v7, v1

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v2

    new-instance v5, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v5}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    const/4 v6, 0x4

    invoke-virtual/range {v2 .. v8}, Lcom/zui/launcher/LauncherStateManager;->createAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;IJ)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->s:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/zui/launcher/uioverrides/touchcontrollers/l;

    invoke-direct {v1, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/l;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    const/16 v0, 0x23

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1, p1}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIZ)Z

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p1}, Lcom/zui/quickstep/BaseRecentsView;->performHapticFeedback(II)Z

    :cond_6
    :goto_3
    return-void
.end method

.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->D(Lcom/zui/launcher/Launcher;Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->u:Z

    :cond_0
    return v0
.end method

.method protected clearState()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->clearState()V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->u:Z

    return-void
.end method

.method protected getAnimatorSetBuilderForStates(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/anim/AnimatorSetBuilder;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p2, v0, :cond_0

    new-instance p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    const/4 p1, 0x1

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p1, 0x2

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p1, 0x3

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->getAnimatorSetBuilderForStates(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/anim/AnimatorSetBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected getAtomicDuration()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method protected getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;
    .locals 1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->u:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    return-object p0

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_2

    sget-object p2, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/OverviewInteractionState;

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewInteractionState;->getSystemUiStateFlags()I

    move-result p0

    invoke-static {}, Lcom/zui/quickstep/TouchInteractionService;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_1

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    :cond_1
    return-object p1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .locals 5

    neg-float v0, p1

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    iget v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->q:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->r:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lcom/zui/quickstep/util/MotionPauseDetector;->addPosition(FJ)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->t:Z

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->onDrag(FLandroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnd, single layer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PortraitStatesTouchCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd, isTouchOnDraglayerBottom:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd, handlingOverviewAnim:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->C()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->u:Z

    if-eqz v0, :cond_7

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->C()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->s:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v5, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v5}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    const/4 v0, 0x0

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0, v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    iget-object v2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0, v3}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v0, 0x5

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0, v3}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragEnd, fling:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragEnd, velocity:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragEnd, isTouchHover:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->t:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragEnd, mMotionPauseDetector.isPaused():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {v3}, Lcom/zui/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    const-string v0, "fling and velocity > 0--------"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onDragCancel(ZF)V

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->t:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p2}, Lcom/zui/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onDragCancel(ZF)V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->moveToDefaultPage()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/views/BaseDragLayer;->getDeviceState()Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getCurrentActiveRotation()I

    move-result v0

    invoke-virtual {p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getDisplayRotation()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/quickstep/views/RecentsView;->setLayoutRotation(II)V

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    sget-object v4, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v6, 0x7

    iget-wide v7, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->ATOMIC_DURATION:J

    invoke-virtual/range {v2 .. v8}, Lcom/zui/launcher/LauncherStateManager;->createAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;IJ)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController$a;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByRecents()Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->s:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onDragEnd(FZ)V

    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->t:Z

    invoke-super {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onDragStart(Z)V

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->u:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->p:Lcom/zui/quickstep/util/MotionPauseDetector;

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/a;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)V

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    :cond_1
    return-void
.end method

.method protected updateAnimatorBuilderOnReinit(Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->addFlag(I)V

    :cond_0
    return-void
.end method
