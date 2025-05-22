.class Lcom/zui/quickstep/TaskViewUtils$b;
.super Lcom/zui/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/TaskViewUtils;->getRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final d:Landroid/graphics/RectF;

.field final synthetic e:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field final synthetic f:Lcom/zui/quickstep/views/TaskView;

.field final synthetic g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

.field final synthetic h:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

.field final synthetic i:Lcom/zui/quickstep/BaseRecentsView;

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/ClipAnimationHelper;Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Lcom/zui/quickstep/BaseRecentsView;Z)V
    .locals 8

    iput-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->e:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iput-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/zui/quickstep/TaskViewUtils$b;->g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iput-object p4, p0, Lcom/zui/quickstep/TaskViewUtils$b;->h:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iput-object p5, p0, Lcom/zui/quickstep/TaskViewUtils$b;->i:Lcom/zui/quickstep/BaseRecentsView;

    iput-boolean p6, p0, Lcom/zui/quickstep/TaskViewUtils$b;->j:Z

    invoke-direct {p0}, Lcom/zui/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v7, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x42960000    # 75.0f

    const/high16 v5, 0x42960000    # 75.0f

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/zui/quickstep/TaskViewUtils$b;->b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v7, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/zui/quickstep/TaskViewUtils$b;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->e:Lcom/zui/quickstep/util/ClipAnimationHelper;

    new-instance v1, Lcom/zui/quickstep/v1;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/v1;-><init>(Lcom/zui/quickstep/TaskViewUtils$b;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->setTaskAlphaCallback(Ljava/util/function/BiFunction;)V

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->e:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/util/ClipAnimationHelper;->prepareAnimation(Lcom/zui/launcher/DeviceProfile;Z)V

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v1, v1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    iget-object v5, p0, Lcom/zui/quickstep/TaskViewUtils$b;->g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v5, v5, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v6, p0, Lcom/zui/quickstep/TaskViewUtils$b;->g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v6, v6, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v5, v6, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->e:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v5, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lcom/zui/quickstep/BaseRecentsView;

    iget-object v7, p0, Lcom/zui/quickstep/TaskViewUtils$b;->g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v7, v7, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v4, v7, v4

    invoke-virtual {v1, v5, v6, v4}, Lcom/zui/quickstep/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->e:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v2

    check-cast v0, Lcom/zui/quickstep/BaseRecentsView;

    iget-object v4, p0, Lcom/zui/quickstep/TaskViewUtils$b;->g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v4, v4, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v5, v4

    if-nez v5, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    aget-object v3, v4, v3

    :goto_3
    invoke-virtual {v1, v2, v0, v3}, Lcom/zui/quickstep/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->e:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->d:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public onUpdate(FZ)V
    .locals 2

    iget-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->h:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    iget-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->e:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->g:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->h:Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->i:Lcom/zui/quickstep/BaseRecentsView;

    instance-of v0, p2, Lcom/zui/quickstep/views/RecentsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/zui/quickstep/views/RecentsView;

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p2, v0}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    invoke-virtual {p2}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p2

    if-eq v0, p2, :cond_0

    const/4 p2, 0x1

    move v1, p2

    :cond_0
    iget-boolean p2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->j:Z

    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$b;->f:Lcom/zui/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/zui/quickstep/TaskViewUtils$b;->b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method
