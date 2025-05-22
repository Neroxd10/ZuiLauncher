.class public Lcom/zui/quickstep/views/GroupedTaskView;
.super Lcom/zui/quickstep/views/TaskView;
.source ""


# instance fields
.field private h0:Lcom/android/systemui/shared/recents/model/Task;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i0:Lcom/zui/quickstep/views/TaskThumbnailView;

.field private j0:Lcom/zui/quickstep/views/IconView;

.field private k0:Lcom/zui/quickstep/util/CancellableTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/quickstep/util/CancellableTask<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private l0:Lcom/zui/quickstep/util/CancellableTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m0:[F

.field private n0:Lcom/zui/launcher/util/TransformingTouchDelegate;

.field private o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final p0:Lcom/zui/quickstep/views/DigitalWellBeingToast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->m0:[F

    new-instance p1, Lcom/zui/quickstep/views/DigitalWellBeingToast;

    iget-object p2, p0, Lcom/zui/quickstep/views/TaskView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {p1, p2, p0}, Lcom/zui/quickstep/views/DigitalWellBeingToast;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->p0:Lcom/zui/quickstep/views/DigitalWellBeingToast;

    return-void
.end method

.method static synthetic B0(Lcom/zui/launcher/util/RunnableList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method private E0()V
    .locals 10

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v8

    iget v4, v8, Lcom/zui/launcher/DeviceProfile;->overviewTaskIconSizePx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskView;->mIconView:Lcom/zui/quickstep/views/IconView;

    iget-object v3, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView;->mSnapshotView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView;->mSnapshotView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v9, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-interface/range {v1 .. v9}, Lcom/zui/launcher/touch/PagedOrientationHandler;->setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIZLcom/zui/launcher/DeviceProfile;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V

    return-void
.end method


# virtual methods
.method public synthetic C0(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public synthetic D0(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/views/TaskView;->setIcon(Lcom/zui/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->p0:Lcom/zui/quickstep/views/DigitalWellBeingToast;

    iget-object p0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/quickstep/util/RecentsOrientedState;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 7
    .param p4    # Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p3}, Lcom/zui/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/quickstep/util/RecentsOrientedState;)V

    iput-object p2, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mTaskIdContainer:[I

    iget-object p3, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p3, p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v0, 0x1

    aput p3, p1, v0

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-instance p3, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v4, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    iget-object v5, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;-><init>(Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/views/IconView;I)V

    aput-object p3, p1, v0

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p1, p3}, Lcom/zui/quickstep/views/TaskView$TaskIdAttributeContainer;->a(I)V

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/views/TaskThumbnailView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    iput-object p4, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    return-void
.end method

.method protected cancelPendingLoadTasks()V
    .locals 2

    invoke-super {p0}, Lcom/zui/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->k0:Lcom/zui/quickstep/util/CancellableTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->k0:Lcom/zui/quickstep/util/CancellableTask;

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->l0:Lcom/zui/quickstep/util/CancellableTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->l0:Lcom/zui/quickstep/util/CancellableTask;

    :cond_1
    return-void
.end method

.method public getSplitRatio()F
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    :goto_0
    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getThumbnails()[Lcom/zui/quickstep/views/TaskThumbnailView;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zui/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskView;->mSnapshotView:Lcom/zui/quickstep/views/TaskThumbnailView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .locals 8
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/zui/quickstep/util/SplitSelectStateController;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v7

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/zui/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;ILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public launchTaskAnimated()Lcom/zui/launcher/util/RunnableList;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/util/RunnableList;

    invoke-direct {v0}, Lcom/zui/launcher/util/RunnableList;-><init>()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/zui/quickstep/util/SplitSelectStateController;

    move-result-object v2

    new-instance v3, Lcom/zui/quickstep/views/g;

    invoke-direct {v3, v0}, Lcom/zui/quickstep/views/g;-><init>(Lcom/zui/launcher/util/RunnableList;)V

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/zui/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/zui/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/zui/launcher/util/RunnableList;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    iget-object v1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->m0:[F

    iget-object v2, p0, Lcom/zui/quickstep/views/GroupedTaskView;->n0:Lcom/zui/launcher/util/TransformingTouchDelegate;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/quickstep/views/TaskView;->computeAndSetIconTouchDelegate(Lcom/zui/quickstep/views/IconView;[FLcom/zui/launcher/util/TransformingTouchDelegate;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->n0:Lcom/zui/launcher/util/TransformingTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/TransformingTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zui/quickstep/views/TaskView;->onFinishInflate()V

    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/TaskThumbnailView;

    iput-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/IconView;

    iput-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    new-instance v0, Lcom/zui/launcher/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->n0:Lcom/zui/launcher/util/TransformingTouchDelegate;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mSnapshotView:Lcom/zui/quickstep/views/TaskThumbnailView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskView;->mSnapshotView:Lcom/zui/quickstep/views/TaskThumbnailView;

    iget-object v2, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    iget-object v5, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/zui/launcher/touch/PagedOrientationHandler;->measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/zui/launcher/DeviceProfile;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/GroupedTaskView;->E0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecycle()V
    .locals 3

    invoke-super {p0}, Lcom/zui/quickstep/views/TaskView;->onRecycle()V

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iput-object v2, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsModel;->getIconCache()Lcom/zui/quickstep/TaskIconCache;

    move-result-object p1

    invoke-virtual {p0, p2, v1}, Lcom/zui/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v3, Lcom/zui/quickstep/views/h;

    invoke-direct {v3, p0}, Lcom/zui/quickstep/views/h;-><init>(Lcom/zui/quickstep/views/GroupedTaskView;)V

    invoke-virtual {v2, v1, v3}, Lcom/zui/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->k0:Lcom/zui/quickstep/util/CancellableTask;

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/zui/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/zui/quickstep/views/i;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/views/i;-><init>(Lcom/zui/quickstep/views/GroupedTaskView;)V

    invoke-virtual {p1, p2, v0}, Lcom/zui/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->l0:Lcom/zui/quickstep/util/CancellableTask;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/zui/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, v1, v1}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->h0:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/zui/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p0, p1, v1}, Lcom/zui/quickstep/views/TaskView;->setIcon(Lcom/zui/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setColorTint(FI)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/views/TaskView;->setColorTint(FI)V

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {v0, p2, p1}, Lcom/zui/quickstep/views/IconView;->setIconColorTint(IF)V

    iget-object p0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    return-void
.end method

.method protected setIconAndDimTransitionProgress(FZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/views/TaskView;->setIconAndDimTransitionProgress(FZ)V

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mIconView:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setOrientationState(Lcom/zui/quickstep/util/RecentsOrientedState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/quickstep/views/TaskView;->setOrientationState(Lcom/zui/quickstep/util/RecentsOrientedState;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean v0, p1, Lcom/zui/launcher/DeviceProfile;->overviewShowAsGrid:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    :goto_1
    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {v0, p1, p1}, Lcom/zui/quickstep/views/IconView;->setDrawableSize(II)V

    iget-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->j0:Lcom/zui/quickstep/views/IconView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/GroupedTaskView;->E0()V

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    iget-object p0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->setOverlayEnabled(Z)V

    return-void
.end method

.method protected updateSnapshotRadius()V
    .locals 1

    invoke-super {p0}, Lcom/zui/quickstep/views/TaskView;->updateSnapshotRadius()V

    iget-object v0, p0, Lcom/zui/quickstep/views/GroupedTaskView;->i0:Lcom/zui/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->setFullscreenParams(Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;)V

    return-void
.end method

.method public updateSplitBoundsConfig(Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/GroupedTaskView;->o0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
