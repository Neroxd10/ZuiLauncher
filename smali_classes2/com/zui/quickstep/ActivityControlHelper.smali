.class public interface abstract Lcom/zui/quickstep/ActivityControlHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;,
        Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;,
        Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseDraggingActivity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;"
        }
    .end annotation
.end method

.method public deferStartingActivity(Lcom/zui/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isInDeferredGestureRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public abstract getContainerType()I
.end method

.method public abstract getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
.end method

.method public abstract getSwipeUpDestinationAndLength(Lcom/zui/launcher/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I
.end method

.method public abstract getVisibleRecentsView()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract isInLiveTileMode()Z
.end method

.method public isResumed()Z
    .locals 0

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->hasBeenResumed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract onAssistantVisibilityChanged(F)V
.end method

.method public abstract onLaunchTaskFailed(Lcom/zui/launcher/BaseDraggingActivity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onLaunchTaskSuccess(Lcom/zui/launcher/BaseDraggingActivity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSwipeUpToHomeComplete(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onSwipeUpToRecentsComplete(Lcom/zui/launcher/BaseDraggingActivity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onTransitionCancelled(Lcom/zui/launcher/BaseDraggingActivity;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract prepareHomeUI(Lcom/zui/launcher/BaseDraggingActivity;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;"
        }
    .end annotation
.end method

.method public abstract prepareRecentsUI(Lcom/zui/launcher/BaseDraggingActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;",
            ">;",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            ")",
            "Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;"
        }
    .end annotation
.end method

.method public setRestState(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public abstract shouldMinimizeSplitScreen()Z
.end method

.method public abstract switchToRecentsIfVisible(Lcom/zui/quickstep/RecentsAnimationDeviceState;Ljava/lang/Runnable;)Z
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
