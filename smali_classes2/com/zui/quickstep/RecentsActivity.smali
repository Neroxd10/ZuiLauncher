.class public final Lcom/zui/quickstep/RecentsActivity;
.super Lcom/zui/quickstep/BaseRecentsActivity;
.source ""


# instance fields
.field private l:Landroid/os/Handler;

.field private m:Lcom/zui/quickstep/fallback/RecentsRootView;

.field private n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

.field private o:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/quickstep/BaseRecentsActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsActivity;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic f(Lcom/zui/quickstep/RecentsActivity;Lcom/zui/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/RecentsActivity;->i(Lcom/zui/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/zui/quickstep/RecentsActivity;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsActivity;->j()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/zui/quickstep/RecentsActivity;)Lcom/zui/quickstep/fallback/FallbackRecentsView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    return-object p0
.end method

.method private i(Lcom/zui/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/zui/quickstep/TaskUtils;->taskIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;II)Z

    move-result v1

    new-instance v2, Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    xor-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, p2, p3, v2}, Lcom/zui/quickstep/TaskViewUtils;->getRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v3, 0x96

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p2, p1, v2}, Lcom/zui/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/Animator;

    new-instance p2, Lcom/zui/quickstep/RecentsActivity$b;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/RecentsActivity$b;-><init>(Lcom/zui/quickstep/RecentsActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-object v0
.end method

.method private j()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    new-instance v0, Lcom/zui/quickstep/RecentsActivity$c;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/RecentsActivity$c;-><init>(Lcom/zui/quickstep/RecentsActivity;)V

    return-object v0
.end method


# virtual methods
.method protected createDeviceProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 2

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    invoke-virtual {v1}, Lcom/zui/quickstep/fallback/RecentsRootView;->getLastKnownSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->createDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 10

    instance-of v0, p1, Lcom/zui/quickstep/views/TaskView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lcom/zui/quickstep/views/TaskView;

    new-instance v0, Lcom/zui/launcher/util/RunnableList;

    invoke-direct {v0}, Lcom/zui/launcher/util/RunnableList;-><init>()V

    new-instance v1, Lcom/zui/quickstep/RecentsActivity$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/quickstep/RecentsActivity$a;-><init>(Lcom/zui/quickstep/RecentsActivity;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/util/RunnableList;)V

    iput-object v1, p0, Lcom/zui/quickstep/RecentsActivity;->o:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance v3, Lcom/zui/launcher/LauncherAnimationRunner;

    iget-object p1, p0, Lcom/zui/quickstep/RecentsActivity;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsActivity;->o:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v9, 0x1

    invoke-direct {v3, p1, v1, v9}, Lcom/zui/launcher/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    new-instance p1, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    const-wide/16 v4, 0x96

    const-wide/16 v6, -0x5b

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v8

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    new-instance p0, Lcom/zui/launcher/util/ActivityOptionsWrapper;

    invoke-static {p1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/zui/launcher/util/RunnableList;)V

    iget-object p1, p0, Lcom/zui/launcher/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v9}, Landroid/app/ActivityOptions;->setSplashscreenStyle(I)V

    iget-object p0, p0, Lcom/zui/launcher/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    return-object p0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    return-object p0
.end method

.method protected initViews()V
    .locals 1

    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/fallback/RecentsRootView;

    iput-object v0, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    iput-object v0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    invoke-virtual {p0}, Lcom/zui/quickstep/fallback/RecentsRootView;->setup()V

    return-void
.end method

.method public isFallBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onHandleConfigChanged()V
    .locals 0

    invoke-super {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->onHandleConfigChanged()V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    invoke-virtual {p0}, Lcom/zui/quickstep/fallback/RecentsRootView;->setup()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsActivity;->onHandleConfigChanged()V

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onRootViewSizeChanged()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsActivity;->onHandleConfigChanged()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->setContentAlpha(F)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getClearAllButton()Lcom/zui/quickstep/views/ClearAllButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/ClearAllButton;->setVisibilityAlpha(F)V

    invoke-super {p0}, Lcom/zui/launcher/BaseDraggingActivity;->onStart()V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->onStop()V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->resetViewUI()V

    :cond_0
    return-void
.end method

.method public onTaskLaunched()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->n:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void
.end method

.method protected reapplyUi()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity;->m:Lcom/zui/quickstep/fallback/RecentsRootView;

    invoke-virtual {p0}, Lcom/zui/quickstep/fallback/RecentsRootView;->dispatchInsets()V

    return-void
.end method
