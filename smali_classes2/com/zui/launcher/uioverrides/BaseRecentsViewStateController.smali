.class public abstract Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zui/launcher/LauncherStateManager$StateHandler;"
    }
.end annotation


# instance fields
.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field protected final mRecentsView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method abstract a()Landroid/util/FloatProperty;
.end method

.method b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method c(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 8
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

    invoke-virtual {p3, p2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Lcom/zui/launcher/anim/PropertySetter;

    move-result-object p3

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x7

    invoke-virtual {p2, v2, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/16 v4, 0x8

    invoke-virtual {p2, v4, v3}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    iget v0, v0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationX:F

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    neg-float v0, v0

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p3, v3, v5, v0, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndOffset(Lcom/zui/launcher/Launcher;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    sget-object v3, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x6

    sget-object v7, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v6, v7}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {p3, v1, v3, v5, v6}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    sget-object v3, Lcom/zui/quickstep/views/RecentsView;->ADJACENT_PAGE_OFFSET:Landroid/util/FloatProperty;

    aget v0, v0, v4

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2, v4}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p3, v1, v3, v0, v2}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->a()Landroid/util/FloatProperty;

    move-result-object p0

    iget-boolean p1, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x9

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p3, v0, p0, p1, p2}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setState(Lcom/zui/launcher/LauncherState;)V
    .locals 5
    .param p1    # Lcom/zui/launcher/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationX:F

    iget-object v1, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    neg-float v0, v0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndOffset(Lcom/zui/launcher/Launcher;)[F

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v1, Lcom/zui/quickstep/views/RecentsView;->ADJACENT_PAGE_OFFSET:Landroid/util/FloatProperty;

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {p0}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->a()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->mRecentsView:Landroid/view/View;

    iget-boolean v1, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setState, CONTENT_ALPHA, alpha:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseRecentsViewStateController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 2
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

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playAtomicOverviewScaleComponent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playAtomicOverviewPeekComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/uioverrides/BaseRecentsViewStateController;->c(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    return-void
.end method
