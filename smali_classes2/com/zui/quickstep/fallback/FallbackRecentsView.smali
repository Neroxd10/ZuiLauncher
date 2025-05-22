.class public Lcom/zui/quickstep/fallback/FallbackRecentsView;
.super Lcom/zui/quickstep/views/RecentsView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/views/RecentsView<",
        "Lcom/zui/quickstep/RecentsActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final ZOOM_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/fallback/FallbackRecentsView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private E0:F

.field private F0:Z

.field private G0:F

.field private H0:F

.field private I0:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/quickstep/fallback/FallbackRecentsView$a;

    const-string v1, "zoomInProgress"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/fallback/FallbackRecentsView$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->ZOOM_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/fallback/FallbackRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->E0:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->F0:Z

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->G0:F

    iput p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->H0:F

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/views/RecentsView;->setOverlayEnabled(Z)V

    return-void
.end method

.method static synthetic X0(Lcom/zui/quickstep/fallback/FallbackRecentsView;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->E0:F

    return p0
.end method


# virtual methods
.method public synthetic Y0(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setCurrentTask(I)V

    return-void
.end method

.method protected applyLoadPlan(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v4, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    if-ne v1, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p1, v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    iget-object v1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1, v1, v3}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_2
    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    return-void
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

    invoke-static {p0, p1, p2}, Lcom/zui/quickstep/util/LayoutUtils;->calculateFallbackTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onGestureAnimationEnd()V
    .locals 7

    invoke-super {p0}, Lcom/zui/quickstep/views/RecentsView;->onGestureAnimationEnd()V

    iget-object v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x96

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/fallback/a;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/fallback/a;-><init>(Lcom/zui/quickstep/fallback/FallbackRecentsView;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->runDismissAnimation(Lcom/zui/launcher/util/PendingAnimation;)V

    :cond_0
    return-void
.end method

.method public onGestureAnimationStartOnHome(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->onGestureAnimationStart(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/zui/quickstep/views/RecentsView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->G0:F

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTempClipAnimationHelper()Lcom/zui/quickstep/util/ClipAnimationHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateForFullscreenOverview(Lcom/zui/quickstep/views/TaskView;)Lcom/zui/quickstep/util/ClipAnimationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->getScaleAndTranslation()Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p1

    iget p2, p1, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    iput p2, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->G0:F

    iget p1, p1, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    :goto_0
    iput p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->H0:F

    iget p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->E0:F

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setZoomProgress(F)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/zui/quickstep/views/RecentsView;->reset()V

    invoke-virtual {p0}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->resetViewUI()V

    return-void
.end method

.method public resetViewUI()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setZoomProgress(F)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void
.end method

.method public setCurrentTask(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setCurrentTask(I)V

    iget-object v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setRunningTaskHidden(Z)V

    :cond_0
    return-void
.end method

.method public setInOverviewState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->F0:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->F0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setZoomProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRunningTaskHidden(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    return-void
.end method

.method public setZoomProgress(F)V
    .locals 3

    iput p1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->E0:F

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget v1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->G0:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v1}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object p1, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->E0:F

    iget v1, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->H0:F

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/zui/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    iget v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->E0:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method protected shouldAddDummyTaskView(I)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;->I0:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->shouldAddDummyTaskView(I)Z

    move-result p0

    return p0
.end method

.method public shouldUseMultiWindowTaskSizeStrategy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startHome()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    check-cast p0, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->startHome()V

    return-void
.end method
