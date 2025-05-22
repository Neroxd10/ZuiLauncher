.class public interface abstract Lcom/zui/quickstep/BaseRecentsView;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract animateUpRunningTaskIconScale()V
.end method

.method public abstract computeScroll()V
.end method

.method public abstract createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;
.end method

.method public abstract createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;
.end method

.method public abstract createTaskLauncherAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;
.end method

.method public abstract createTaskMenuViewAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;
.end method

.method public abstract dismissTask(Lcom/zui/quickstep/views/TaskView;ZZ)V
.end method

.method public abstract finishRecentsAnimation(ZLjava/lang/Runnable;)V
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getCurrentPage()I
.end method

.method public abstract getEventDispatcher(Lcom/zui/launcher/graphics/RotationMode;)Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/graphics/RotationMode;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextPage()I
.end method

.method public abstract getPageNearestToCenterOfScreen()I
.end method

.method public abstract getPageSpacing()I
.end method

.method public abstract getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;
.end method

.method public abstract getRunningTaskIndex()I
.end method

.method public abstract getRunningTaskView()Lcom/zui/quickstep/views/TaskView;
.end method

.method public abstract getScrollOffset()I
.end method

.method public abstract getScroller()Landroid/widget/OverScroller;
.end method

.method public abstract getTaskSize(Landroid/graphics/Rect;)V
.end method

.method public abstract getTaskView(I)Lcom/zui/quickstep/views/TaskView;
.end method

.method public abstract getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;
.end method

.method public abstract getTaskViewCount()I
.end method

.method public abstract getTempClipAnimationHelper()Lcom/zui/quickstep/util/ClipAnimationHelper;
.end method

.method public abstract getTranlateYWhenClick()J
.end method

.method public abstract getTranslationX()F
.end method

.method public abstract getVisibility()I
.end method

.method public abstract indexOfChild(Lcom/zui/quickstep/views/TaskView;)I
.end method

.method public abstract isRtl()Z
.end method

.method public abstract isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z
.end method

.method public abstract onDigitalWellbeingToastShown()V
.end method

.method public abstract onGestureAnimationEnd()V
.end method

.method public abstract onGestureAnimationStart(I)V
.end method

.method public abstract onSwipeUpAnimationSuccess()V
.end method

.method public abstract performHapticFeedback(II)Z
.end method

.method public abstract reset()V
.end method

.method public abstract resetTaskVisuals()V
.end method

.method public abstract setCleanupAlpha(F)V
.end method

.method public abstract setClipAnimationHelper(Lcom/zui/quickstep/util/ClipAnimationHelper;)V
.end method

.method public abstract setCurrentTask(I)V
.end method

.method public abstract setLiveTileOverlay(Lcom/zui/quickstep/views/LiveTileOverlay;)V
.end method

.method public abstract setOverviewStateEnabled(Z)V
.end method

.method public abstract setRecentsAnimationWrapper(Lcom/zui/quickstep/RecentsAnimationWrapper;)V
.end method

.method public abstract setRunningTaskHidden(Z)V
.end method

.method public abstract setRunningTaskIconScaledDown(Z)V
.end method

.method public abstract setTranslationX(F)V
.end method

.method public abstract shouldUseMultiWindowTaskSizeStrategy()Z
.end method

.method public abstract showHintIfNeeded(Z)V
.end method

.method public abstract showNextTask()V
.end method

.method public abstract snapToPage(I)Z
.end method

.method public abstract snapToPage(II)Z
.end method

.method public abstract startHome()V
.end method

.method public abstract updateLiveTileIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/zui/quickstep/views/TaskView;
.end method
