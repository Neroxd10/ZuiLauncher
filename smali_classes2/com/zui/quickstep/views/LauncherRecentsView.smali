.class public Lcom/zui/quickstep/views/LauncherRecentsView;
.super Lcom/zui/quickstep/views/RecentsView;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/views/RecentsView<",
        "Lcom/zui/launcher/Launcher;",
        ">;",
        "Lcom/zui/launcher/LauncherStateManager$StateListener;"
    }
.end annotation


# instance fields
.field private final E0:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/views/LauncherRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/views/LauncherRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-direct {p1}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/LauncherRecentsView;->E0:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setContentAlpha(F)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method


# virtual methods
.method public createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-static {p2}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p2

    iget-boolean p2, p2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const p2, 0x3fa72a8b

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v1, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p2, Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p2, v0

    div-float/2addr v0, p2

    add-float p2, v0, v1

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p2, Lcom/zui/launcher/Launcher;

    const v0, 0x7f0a030f

    invoke-virtual {p2, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/views/ScrimView;

    sget-object p2, Lcom/zui/launcher/views/ScrimView;->DRAG_HANDLE_ALPHA:Landroid/util/Property;

    new-array v0, v2, [I

    aput v4, v0, v4

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getTaskSize(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/zui/quickstep/util/LayoutUtils;->calculateLauncherTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/LauncherRecentsView;->reset()V

    :cond_1
    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setOverlayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iget-boolean p1, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/LauncherRecentsView;->setOverviewStateEnabled(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    return-void
.end method

.method protected onTaskLaunchAnimationUpdate(FLcom/zui/quickstep/views/TaskView;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    iget-object v0, v0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/quickstep/views/LauncherRecentsView;->E0:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setForLiveTile(Z)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    iget-object p2, p2, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-object p0, p0, Lcom/zui/quickstep/views/LauncherRecentsView;->E0:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/LauncherRecentsView;->redrawLiveTile()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onTaskLaunched(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v1, Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->setState(Lcom/zui/launcher/LauncherState;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->onTaskLaunched(Z)V

    return-void
.end method

.method protected onTaskStackUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public redrawLiveTile()V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskWidth:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskHeight:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-eqz v3, :cond_2

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v5, v4, v1

    if-gez v5, :cond_1

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_0
    if-lez v2, :cond_3

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    :cond_3
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/zui/quickstep/views/LauncherRecentsView;->E0:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setCurrentRectAndTargetAlpha(Landroid/graphics/RectF;F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    iget-object v0, v0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object p0, p0, Lcom/zui/quickstep/views/LauncherRecentsView;->E0:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v1, v0, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    :cond_4
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/zui/quickstep/views/RecentsView;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/quickstep/views/RecentsView;->setLayoutRotation(II)V

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->switchClient(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/PagedView;->scrollTo(II)V

    sget-object p1, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/LauncherRecentsView;->redrawLiveTile()V

    :cond_0
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setDisallowScrollToClearAll(Z)V

    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    sget-object p1, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/LauncherRecentsView;->redrawLiveTile()V

    :cond_1
    return-void
.end method

.method protected shouldStealTouchFromSiblingsBelow(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast v1, Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v2

    return p0

    :cond_1
    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->shouldStealTouchFromSiblingsBelow(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public shouldUseMultiWindowTaskSizeStrategy()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public startHome()V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method
