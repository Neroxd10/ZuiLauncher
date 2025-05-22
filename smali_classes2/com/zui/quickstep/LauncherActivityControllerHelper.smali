.class public final Lcom/zui/quickstep/LauncherActivityControllerHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/quickstep/ActivityControlHelper<",
        "Lcom/zui/launcher/Launcher;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/LauncherActivityControllerHelper;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;JLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->d(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;JLjava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/LauncherActivityControllerHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/quickstep/LauncherActivityControllerHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method private d(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;JLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/Launcher;",
            "Lcom/zui/launcher/LauncherState;",
            "J",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v2

    sget-object v3, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p2, p1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0, p1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v6

    aput v6, v3, v4

    invoke-virtual {v2, v5, v3}, Lcom/zui/launcher/LauncherStateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->h(Landroid/animation/AnimatorSet;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V

    const-wide/16 v2, 0x2

    mul-long/2addr p3, v2

    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/zui/launcher/anim/PendingAnimation;

    invoke-direct {v1, p3, p4}, Lcom/zui/launcher/anim/PendingAnimation;-><init>(J)V

    invoke-virtual {p0, p1, v1}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->createBackgroundToOverviewAnim(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/anim/PendingAnimation;)V

    invoke-virtual {v1}, Lcom/zui/launcher/anim/PendingAnimation;->createPlaybackController()Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/zui/launcher/LauncherStateManager;->setCurrentUserControlledAnimation(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V

    new-instance p3, Lcom/zui/quickstep/w;

    invoke-direct {p3, p1, p0, v0, p2}, Lcom/zui/quickstep/w;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setEndAction(Ljava/lang/Runnable;)V

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private e()Lcom/zui/launcher/Launcher;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getInterpolatedProgress()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    return-void
.end method

.method private g(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getCurrentActiveRotation()I

    move-result v0

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getDisplayRotation()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/views/RecentsView;->setLayoutRotation(II)V

    return-void
.end method

.method private h(Landroid/animation/AnimatorSet;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V
    .locals 6

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {p0}, Lcom/zui/quickstep/BaseRecentsView;->getCurrentPage()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/zui/quickstep/BaseRecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v0

    invoke-virtual {p4, p2}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p2

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherState;->getOverviewFullscreenProgress()F

    move-result p3

    invoke-virtual {p4}, Lcom/zui/launcher/LauncherState;->getOverviewFullscreenProgress()F

    move-result p4

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget v0, v0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    const/4 v5, 0x0

    aput v0, v4, v5

    iget p2, p2, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    const/4 v0, 0x1

    aput p2, v4, v0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object v1, Lcom/zui/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-array v2, v3, [F

    aput p3, v2, v5

    aput p4, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array p3, v3, [Landroid/animation/Animator;

    aput-object p2, p3, v5

    aput-object p0, p3, v0

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/zui/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;"
        }
    .end annotation

    new-instance p0, Lcom/zui/launcher/LauncherInitListenerEx;

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherInitListenerEx;-><init>(Ljava/util/function/BiPredicate;)V

    return-object p0
.end method

.method protected createBackgroundToOverviewAnim(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/anim/PendingAnimation;)V
    .locals 6

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    sget-object v2, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    sget-object v5, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/zui/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    sget-object v5, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public getContainerType()I
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->e()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/LauncherState;->containerType:I

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    :goto_0
    return p0
.end method

.method public bridge synthetic getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/zui/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedActivity()Lcom/zui/launcher/Launcher;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
    .locals 0

    return-object p1
.end method

.method public getSwipeUpDestinationAndLength(Lcom/zui/launcher/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I
    .locals 0

    invoke-static {p2, p1, p3}, Lcom/zui/quickstep/util/LayoutUtils;->calculateLauncherTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    sget-object p3, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq p0, p3, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    add-int/2addr p1, p0

    return p1

    :cond_1
    invoke-static {p2, p1}, Lcom/zui/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;)I

    move-result p0

    return p0
.end method

.method public getVisibleRecentsView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->e()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isInLiveTileMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->onAssistantVisibilityChanged(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLaunchTaskFailed(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->onLaunchTaskFailed(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public onLaunchTaskFailed(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public bridge synthetic onLaunchTaskSuccess(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->onLaunchTaskSuccess(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public onLaunchTaskSuccess(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->moveToRestState()V

    return-void
.end method

.method public bridge synthetic onSwipeUpToHomeComplete(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->onSwipeUpToHomeComplete(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public onSwipeUpToHomeComplete(Lcom/zui/launcher/Launcher;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSwipeUpToRecentsComplete(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->onSwipeUpToRecentsComplete(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public onSwipeUpToRecentsComplete(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    invoke-static {p1}, Lcom/zui/launcher/allapps/DiscoveryBounce;->showForOverviewIfNeeded(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public bridge synthetic onTransitionCancelled(Lcom/zui/launcher/BaseDraggingActivity;Z)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->onTransitionCancelled(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method

.method public onTransitionCancelled(Lcom/zui/launcher/Launcher;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getRestState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic prepareHomeUI(Lcom/zui/launcher/BaseDraggingActivity;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->prepareHomeUI(Lcom/zui/launcher/Launcher;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;

    move-result-object p0

    return-object p0
.end method

.method public prepareHomeUI(Lcom/zui/launcher/Launcher;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/zui/quickstep/BaseRecentsView;

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/zui/quickstep/BaseRecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/zui/launcher/Workspace;->getFirstMatchForAppClose(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->canUseWorkspaceIcon()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    invoke-static {p1, v8, v1, v5, v2}, Lcom/zui/launcher/views/FloatingIconView;->getFloatingIconView(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/zui/launcher/views/FloatingIconView;

    move-result-object v0

    :cond_3
    move-object v2, v0

    new-instance v9, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;-><init>(Lcom/zui/quickstep/LauncherActivityControllerHelper;Lcom/zui/launcher/views/FloatingIconView;Lcom/zui/launcher/DeviceProfile;ZLandroid/graphics/RectF;Lcom/zui/launcher/Launcher;Lcom/zui/quickstep/BaseRecentsView;Landroid/view/View;)V

    return-object v9
.end method

.method public bridge synthetic prepareRecentsUI(Lcom/zui/launcher/BaseDraggingActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual/range {p0 .. p5}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->prepareRecentsUI(Lcom/zui/launcher/Launcher;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    move-result-object p0

    return-object p0
.end method

.method public prepareRecentsUI(Lcom/zui/launcher/Launcher;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/Launcher;",
            "ZZ",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;",
            ">;",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            ")",
            "Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;"
        }
    .end annotation

    sget-boolean p2, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p2, :cond_0

    const-string p2, "b/134532571"

    const-string v0, "prepareRecentsUI"

    invoke-static {p2, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p5}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->g(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v5

    iget-boolean p2, v5, Lcom/zui/launcher/LauncherState;->disableRestore:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherStateManager;->getRestState()Lcom/zui/launcher/LauncherState;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v5

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/zui/launcher/LauncherStateManager;->setRestState(Lcom/zui/launcher/LauncherState;)V

    if-eqz p3, :cond_2

    sget-object p2, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    :goto_1
    move-object v3, p2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, v3, p3}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->reset(Z)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;-><init>(Lcom/zui/quickstep/LauncherActivityControllerHelper;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Ljava/util/function/Consumer;Lcom/zui/launcher/LauncherState;)V

    return-object p2
.end method

.method public setRestState(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->setRestState(Lcom/zui/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method public shouldMinimizeSplitScreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public switchToRecentsIfVisible(Lcom/zui/quickstep/RecentsAnimationDeviceState;Ljava/lang/Runnable;)Z
    .locals 5

    invoke-direct {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->e()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->getContainerType()I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(III)V

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->g(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->shouldAnimateStateChange()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;ZLjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
