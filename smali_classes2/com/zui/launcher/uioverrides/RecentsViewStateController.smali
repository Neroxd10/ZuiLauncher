.class public final Lcom/zui/launcher/uioverrides/RecentsViewStateController;
.super Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController<",
        "Lcom/zui/quickstep/views/LauncherRecentsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;-><init>(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method private e(Lcom/zui/launcher/anim/PropertySetter;I)V
    .locals 2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast p0, Lcom/zui/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getClearAllButton()Lcom/zui/quickstep/views/ClearAllButton;

    move-result-object p0

    sget-object v0, Lcom/zui/quickstep/views/ClearAllButton;->VISIBILITY_ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method a()Landroid/util/FloatProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/BaseRecentsView;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/zui/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    return-object p0
.end method

.method c(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 3
    .param p1    # Lcom/zui/launcher/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/anim/AnimatorSetBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zui/launcher/LauncherStateManager$AnimationConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->c(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    iget-boolean v0, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast v0, Lcom/zui/quickstep/views/LauncherRecentsView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/uioverrides/i;

    invoke-direct {v1, v0}, Lcom/zui/launcher/uioverrides/i;-><init>(Lcom/zui/quickstep/views/LauncherRecentsView;)V

    invoke-virtual {p2, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->addOnFinishRunnable(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/uioverrides/d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/uioverrides/d;-><init>(Lcom/zui/launcher/uioverrides/RecentsViewStateController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v1, p3, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast v0, Lcom/zui/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    :cond_1
    invoke-virtual {p3, p2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Lcom/zui/launcher/anim/PropertySetter;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p3}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/uioverrides/RecentsViewStateController;->e(Lcom/zui/launcher/anim/PropertySetter;I)V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherState;->getOverviewFullscreenProgress()F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast p0, Lcom/zui/quickstep/BaseRecentsView;

    sget-object p3, Lcom/zui/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p0, p3, p1, v0}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast p0, Lcom/zui/quickstep/views/LauncherRecentsView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    return-void
.end method

.method public setState(Lcom/zui/launcher/LauncherState;)V
    .locals 2
    .param p1    # Lcom/zui/launcher/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->setState(Lcom/zui/launcher/LauncherState;)V

    iget-boolean v0, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast v0, Lcom/zui/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast v0, Lcom/zui/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    :cond_0
    sget-object v0, Lcom/zui/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/zui/launcher/anim/PropertySetter;

    iget-object v1, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/uioverrides/RecentsViewStateController;->e(Lcom/zui/launcher/anim/PropertySetter;I)V

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    check-cast p0, Lcom/zui/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherState;->getOverviewFullscreenProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setFullscreenProgress(F)V

    return-void
.end method
