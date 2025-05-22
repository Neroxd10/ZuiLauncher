.class public final Lcom/zui/quickstep/FallbackActivityControllerHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/quickstep/ActivityControlHelper<",
        "Lcom/zui/quickstep/RecentsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/zui/quickstep/RecentsActivity;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;"
        }
    .end annotation

    new-instance p0, Lcom/zui/quickstep/RecentsActivityTracker;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/RecentsActivityTracker;-><init>(Ljava/util/function/BiPredicate;)V

    return-object p0
.end method

.method protected createBackgroundToOverviewAnim(Lcom/zui/quickstep/RecentsActivity;Lcom/zui/launcher/anim/PendingAnimation;Z)V
    .locals 8

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/zui/quickstep/views/RecentsView;

    move-object v3, v1

    check-cast v3, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    sget-object v4, Lcom/zui/quickstep/fallback/FallbackRecentsView;->ZOOM_PROGRESS:Landroid/util/FloatProperty;

    sget-object v7, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    sget-object v2, Lcom/zui/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_0
    return-void
.end method

.method public getContainerType()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->getCreatedActivity()Lcom/zui/quickstep/RecentsActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/16 p0, 0xf

    goto :goto_1

    :cond_1
    const/16 p0, 0xd

    :goto_1
    return p0
.end method

.method public bridge synthetic getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->getCreatedActivity()Lcom/zui/quickstep/RecentsActivity;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedActivity()Lcom/zui/quickstep/RecentsActivity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/zui/quickstep/RecentsActivityTracker;->getCurrentActivity()Lcom/zui/quickstep/BaseRecentsActivity;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/RecentsActivity;

    return-object p0
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSwipeUpDestinationAndLength(Lcom/zui/launcher/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I
    .locals 0

    invoke-static {p2, p1, p3}, Lcom/zui/quickstep/util/LayoutUtils;->calculateFallbackTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    sget-object p2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq p0, p2, :cond_1

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
    iget p0, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic getVisibleRecentsView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->getVisibleRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleRecentsView()Lcom/zui/quickstep/views/RecentsView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->getCreatedActivity()Lcom/zui/quickstep/RecentsActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInLiveTileMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLaunchTaskFailed(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->onLaunchTaskFailed(Lcom/zui/quickstep/RecentsActivity;)V

    return-void
.end method

.method public onLaunchTaskFailed(Lcom/zui/quickstep/RecentsActivity;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    return-void
.end method

.method public bridge synthetic onLaunchTaskSuccess(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->onLaunchTaskSuccess(Lcom/zui/quickstep/RecentsActivity;)V

    return-void
.end method

.method public onLaunchTaskSuccess(Lcom/zui/quickstep/RecentsActivity;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsActivity;->onTaskLaunched()V

    return-void
.end method

.method public bridge synthetic onSwipeUpToRecentsComplete(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->onSwipeUpToRecentsComplete(Lcom/zui/quickstep/RecentsActivity;)V

    return-void
.end method

.method public onSwipeUpToRecentsComplete(Lcom/zui/quickstep/RecentsActivity;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getClearAllButton()Lcom/zui/quickstep/views/ClearAllButton;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/views/ClearAllButton;->setVisibilityAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setDisallowScrollToClearAll(Z)V

    return-void
.end method

.method public bridge synthetic onTransitionCancelled(Lcom/zui/launcher/BaseDraggingActivity;Z)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->onTransitionCancelled(Lcom/zui/quickstep/RecentsActivity;Z)V

    return-void
.end method

.method public onTransitionCancelled(Lcom/zui/quickstep/RecentsActivity;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic prepareHomeUI(Lcom/zui/launcher/BaseDraggingActivity;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->prepareHomeUI(Lcom/zui/quickstep/RecentsActivity;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;

    move-result-object p0

    return-object p0
.end method

.method public prepareHomeUI(Lcom/zui/quickstep/RecentsActivity;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    new-instance v0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;-><init>(Lcom/zui/quickstep/FallbackActivityControllerHelper;Lcom/zui/quickstep/views/RecentsView;)V

    return-object v0
.end method

.method public bridge synthetic prepareRecentsUI(Lcom/zui/launcher/BaseDraggingActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
    .locals 0

    check-cast p1, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual/range {p0 .. p5}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->prepareRecentsUI(Lcom/zui/quickstep/RecentsActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    move-result-object p0

    return-object p0
.end method

.method public prepareRecentsUI(Lcom/zui/quickstep/RecentsActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/quickstep/RecentsActivity;",
            "ZZ",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;",
            ">;",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            ")",
            "Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v3}, Lcom/zui/quickstep/views/RecentsView;->getClearAllButton()Lcom/zui/quickstep/views/ClearAllButton;

    move-result-object p2

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Lcom/zui/quickstep/views/ClearAllButton;->setVisibilityAlpha(F)V

    const/4 p2, 0x1

    invoke-virtual {v3, p2}, Lcom/zui/quickstep/views/RecentsView;->setDisallowScrollToClearAll(Z)V

    xor-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setInOverviewState(Z)V

    new-instance p2, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;-><init>(Lcom/zui/quickstep/FallbackActivityControllerHelper;Lcom/zui/quickstep/RecentsActivity;Lcom/zui/quickstep/fallback/FallbackRecentsView;ZLjava/util/function/Consumer;)V

    return-object p2
.end method

.method public shouldMinimizeSplitScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public switchToRecentsIfVisible(Lcom/zui/quickstep/RecentsAnimationDeviceState;Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
