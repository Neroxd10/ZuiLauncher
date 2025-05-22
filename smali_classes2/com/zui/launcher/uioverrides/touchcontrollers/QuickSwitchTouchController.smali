.class public Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;
.super Lcom/zui/launcher/touch/AbstractStateChangeTouchController;
.source ""


# instance fields
.field private l:Lcom/zui/quickstep/views/TaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method

.method protected constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method

.method public static synthetic u(Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->clearState()V

    return-void
.end method

.method private w(Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x6

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 p0, 0x8

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 p0, 0x9

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method private x(F)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/TaskView;->setFullscreenProgress(F)V

    const v0, 0x3f59999a    # 0.85f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method protected getDirectionForLog()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method protected getLogContainerTypeForNormalState()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method protected getShiftRange()F
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method protected getTargetState(Lcom/zui/launcher/LauncherState;Z)Lcom/zui/launcher/LauncherState;
    .locals 0

    sget-object p1, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/OverviewInteractionState;

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewInteractionState;->getSystemUiStateFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p0, Lcom/zui/launcher/LauncherState;->QUICK_SWITCH:Lcom/zui/launcher/LauncherState;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    :goto_0
    return-object p0
.end method

.method protected initCurrentAnimation(I)F
    .locals 7

    new-instance v2, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->w(Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->getShiftRange()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-long v3, p1

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    new-instance v5, Lcom/zui/launcher/uioverrides/touchcontrollers/g;

    invoke-direct {v5, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/g;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;)V

    const/4 v6, 0x7

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;JLjava/lang/Runnable;I)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/f;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->getShiftRange()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/zui/launcher/touch/SwipeDetector;->getActivePointerId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v1}, Lcom/zui/launcher/touch/SwipeDetector;->getDownY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float/2addr v1, v0

    cmpl-float v0, v1, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->m:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->onDrag(FLandroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mDetector:Lcom/zui/launcher/touch/SwipeDetector;

    invoke-virtual {v1}, Lcom/zui/launcher/touch/SwipeDetector;->getYVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->m:Z

    if-eqz v1, :cond_3

    new-instance v5, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v5}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    iget-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, p1, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p1, 0x5

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, p1, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    sget-object v4, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v6, 0x7

    iget-wide v7, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->ATOMIC_DURATION:J

    invoke-virtual/range {v2 .. v8}, Lcom/zui/launcher/LauncherStateManager;->createAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;IJ)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController$a;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByRecents()Z

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    const/16 p1, 0x23

    const/16 v0, 0x19

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIZ)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onDragEnd(FZ)V

    :goto_1
    return-void
.end method

.method public onDragStart(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onDragStart(Z)V

    const/16 p1, 0xb

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->l:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method

.method protected updateProgress(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->updateProgress(F)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->x(F)V

    return-void
.end method

.method public synthetic v(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->x(F)V

    return-void
.end method
