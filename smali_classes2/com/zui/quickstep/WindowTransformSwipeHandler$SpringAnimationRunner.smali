.class public Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""

# interfaces
.implements Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;
.implements Lcom/zui/quickstep/util/TransformParams$BuilderProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/WindowTransformSwipeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SpringAnimationRunner"
.end annotation


# instance fields
.field final a:Landroid/graphics/Rect;

.field final b:Landroid/graphics/Matrix;

.field final c:Landroid/graphics/RectF;

.field final d:Landroid/graphics/Matrix;

.field final e:Lcom/zui/launcher/views/FloatingIconView;

.field final f:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field final g:Landroid/graphics/RectF;

.field final h:F

.field final i:F

.field final j:F

.field final synthetic k:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->k:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->c:Landroid/graphics/RectF;

    invoke-interface {p2}, Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->f:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->g:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->d:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->a:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-interface {p2}, Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;->getFloatingView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/views/FloatingIconView;

    iput-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->e:Lcom/zui/launcher/views/FloatingIconView;

    iget-object p1, p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->h:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->i:F

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->e:Lcom/zui/launcher/views/FloatingIconView;

    if-eqz p1, :cond_0

    const p1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->j:F

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->f:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->f:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object p0

    invoke-virtual {p3}, Lcom/zui/quickstep/util/TransformParams;->getCornerRadius()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    return-void
.end method

.method public onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->e:Lcom/zui/launcher/views/FloatingIconView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/views/FloatingIconView;->fastFinish()V

    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;F)V
    .locals 10

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->f:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->c:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->h:F

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->i:F

    invoke-static {p2, v0, v1}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->k:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object v2, v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v1, p2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getWindowAlpha(F)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/zui/quickstep/util/TransformParams;->setTargetAlpha(F)Lcom/zui/quickstep/util/TransformParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/TransformParams;->setCornerRadius(F)Lcom/zui/quickstep/util/TransformParams;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->k:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object v1, v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v1, p0}, Lcom/zui/quickstep/util/TransformParams;->createSurfaceParams(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->e:Lcom/zui/launcher/views/FloatingIconView;

    if-eqz v3, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->j:F

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v8

    const/4 v9, 0x0

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/zui/launcher/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZ)V

    :cond_0
    return-void
.end method
