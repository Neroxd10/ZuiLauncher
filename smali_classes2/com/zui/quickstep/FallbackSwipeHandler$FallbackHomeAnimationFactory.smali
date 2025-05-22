.class public Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/FallbackSwipeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FallbackHomeAnimationFactory"
.end annotation


# instance fields
.field private final a:Lcom/zui/quickstep/util/TransformParams;

.field private final b:Lcom/zui/quickstep/AnimatedFloat;

.field private final c:Lcom/zui/quickstep/AnimatedFloat;

.field private final d:Lcom/zui/quickstep/AnimatedFloat;

.field private final e:J

.field final synthetic f:Lcom/zui/quickstep/FallbackSwipeHandler;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/FallbackSwipeHandler;J)V
    .locals 2

    iput-object p1, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/quickstep/util/TransformParams;

    invoke-direct {v0}, Lcom/zui/quickstep/util/TransformParams;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->a:Lcom/zui/quickstep/util/TransformParams;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->c:Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->d:Lcom/zui/quickstep/AnimatedFloat;

    iput-wide p2, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->e:J

    invoke-static {p1}, Lcom/zui/quickstep/FallbackSwipeHandler;->U0(Lcom/zui/quickstep/FallbackSwipeHandler;)Z

    move-result p2

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    new-instance p2, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {p2}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->b:Lcom/zui/quickstep/AnimatedFloat;

    iget-object v1, p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/zui/quickstep/AnimatedFloat;->value:F

    sub-float v1, v0, v1

    invoke-static {v1, p3, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p3

    iput p3, p2, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object p2, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->c:Lcom/zui/quickstep/AnimatedFloat;

    iget-object p3, p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget p3, p3, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iput p3, p2, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object p2, p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    new-instance p3, Lcom/zui/quickstep/m;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/m;-><init>(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/zui/quickstep/AnimatedFloat;

    new-instance v1, Lcom/zui/quickstep/n;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/n;-><init>(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-direct {p2, v1}, Lcom/zui/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->b:Lcom/zui/quickstep/AnimatedFloat;

    iput p3, p2, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object p2, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->a:Lcom/zui/quickstep/util/TransformParams;

    new-instance p3, Lcom/zui/quickstep/m;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/m;-><init>(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    :goto_0
    invoke-virtual {p2, p3}, Lcom/zui/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)Lcom/zui/quickstep/util/TransformParams;

    iget-object p2, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->d:Lcom/zui/quickstep/AnimatedFloat;

    iput v0, p2, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object p1, p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    new-instance p2, Lcom/zui/quickstep/o;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/o;-><init>(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/util/TransformParams;->setBaseBuilderProxy(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)Lcom/zui/quickstep/util/TransformParams;

    return-void
.end method

.method public static synthetic a(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->d(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V

    return-void
.end method

.method private d(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 1

    iget-object p3, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->c:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->b:Lcom/zui/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-static {p3, p1, p2, v0, p0}, Lcom/zui/quickstep/FallbackSwipeHandler;->V0(Lcom/zui/quickstep/FallbackSwipeHandler;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->a:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TransformParams;->getTargetSet()Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->a:Lcom/zui/quickstep/util/TransformParams;

    sget-object v0, Lcom/zui/quickstep/util/TransformParams$BuilderProxy;->NO_OP:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/TransformParams;->createSurfaceParams(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    :cond_0
    return-void
.end method

.method private f(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->d:Lcom/zui/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->d:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v1, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-wide v2, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->e:J

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    iget-object v0, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    check-cast v0, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    iget-object p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    check-cast p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, p0, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public handleHomeTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->isAnimatingHome()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->a:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/TransformParams;->setTargetSet(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Lcom/zui/quickstep/util/TransformParams;

    invoke-direct {p0}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->e()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public playAtomicAnimation(F)V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->b:Lcom/zui/quickstep/AnimatedFloat;

    iget v1, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v3, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->e:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    invoke-static {v0}, Lcom/zui/quickstep/FallbackSwipeHandler;->U0(Lcom/zui/quickstep/FallbackSwipeHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/anim/SpringAnimationBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    iget-object v1, v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->c:Lcom/zui/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v0

    neg-float p1, p1

    iget-object v1, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    iget v1, v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setStartVelocity(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f:Lcom/zui/quickstep/FallbackSwipeHandler;

    iget-object v0, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setMinimumVisibleChange(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object p1

    const/high16 v0, 0x44480000    # 800.0f

    invoke-virtual {p1, v0}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->c:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v0, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
