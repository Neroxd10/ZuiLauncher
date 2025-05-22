.class public final Lcom/zui/launcher/LauncherAppTransitionManagerImpl;
.super Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;
.source ""


# static fields
.field public static final INDEX_RECENTS_FADE_ANIM:I = 0x1

.field public static final INDEX_RECENTS_TRANSLATE_X_ANIM:I = 0x2

.field public static final INDEX_SHELF_ANIM:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic A(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    return-void
.end method

.method protected composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .locals 5
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsView;

    xor-int/lit8 v1, p5, 0x1

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v2, p2, p3}, Lcom/zui/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/views/TaskView;

    move-result-object p2

    new-instance v2, Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-direct {v2, v3}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1, p3, p4, v2}, Lcom/zui/quickstep/TaskViewUtils;->getRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v3, 0x96

    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    invoke-interface {v0, p2, v2}, Lcom/zui/quickstep/BaseRecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object p2

    sget-object p4, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/Animator;

    new-instance p4, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$a;

    invoke-direct {p4, p0}, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$a;-><init>(Lcom/zui/launcher/LauncherAppTransitionManagerImpl;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p2

    sget-object p3, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p2, p3, v3, v4}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    invoke-virtual {p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p3

    invoke-virtual {p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p4, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$b;

    invoke-direct {p4, p0}, Lcom/zui/launcher/LauncherAppTransitionManagerImpl$b;-><init>(Lcom/zui/launcher/LauncherAppTransitionManagerImpl;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p5, 0x0

    aput-object p3, p2, p5

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;
    .locals 3
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zui/quickstep/views/RecentsView;

    sget-object v0, Lcom/zui/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    invoke-static {p3, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/zui/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "composeViewContentAnimator, CONTENT_ALPHA, alpha:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickstepTransition"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/zui/launcher/u1;

    invoke-direct {p1, p0, p3}, Lcom/zui/launcher/u1;-><init>(Lcom/zui/launcher/LauncherAppTransitionManagerImpl;Lcom/zui/quickstep/views/RecentsView;)V

    return-object p1
.end method

.method public varargs createStateElementAnimation(I[F)Landroid/animation/Animator;
    .locals 7

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/LauncherAppTransitionManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/zui/launcher/anim/SpringObjectAnimator;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x437a0000    # 250.0f

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/anim/SpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V

    return-object p1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/BaseRecentsView;

    sget-object p1, Lcom/zui/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->createSpringAnimation([F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public getStateElementAnimationsCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1, p2}, Lcom/zui/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
