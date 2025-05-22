.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;
.super Lcom/zui/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->n(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:F

.field final c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final g:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final h:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final i:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final j:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final k:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic l:F

.field final synthetic m:F

.field final synthetic n:Landroid/graphics/RectF;

.field final synthetic o:Landroid/graphics/Rect;

.field final synthetic p:Landroid/graphics/Rect;

.field final synthetic q:Landroid/graphics/Matrix;

.field final synthetic r:Z

.field final synthetic s:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic t:Lcom/zui/quickstep/views/FloatingWidgetView;

.field final synthetic u:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic v:Lcom/zui/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;FFLandroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/views/FloatingWidgetView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V
    .locals 7

    move-object v0, p0

    move v1, p2

    iput v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->l:F

    move v1, p3

    iput v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->m:F

    move-object v1, p4

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    move-object v1, p5

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->o:Landroid/graphics/Rect;

    move-object v1, p6

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->p:Landroid/graphics/Rect;

    move-object v1, p7

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->q:Landroid/graphics/Matrix;

    move v1, p8

    iput-boolean v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->r:Z

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->s:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->t:Lcom/zui/quickstep/views/FloatingWidgetView;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->u:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->v:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/zui/quickstep/util/MultiValueUpdateListener;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->b:F

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42780000    # 62.0f

    move-object p1, v1

    move-object p2, p0

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    move-object p7, v2

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x42960000    # 75.0f

    move-object p1, v1

    move p3, v3

    move p4, v4

    move p6, v6

    move-object p7, v2

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x42780000    # 62.0f

    const/high16 v6, 0x42780000    # 62.0f

    move-object p1, v1

    move p5, v5

    move p6, v6

    move-object p7, v2

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->l:F

    iget v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->m:F

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    const v6, 0x43bb8000    # 375.0f

    move-object p1, v1

    move p3, v2

    move p4, v3

    move p5, v5

    move p6, v6

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object p1, v1

    move p3, v3

    move p4, v4

    move-object p7, v2

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->g:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x437a0000    # 250.0f

    move-object p1, v1

    move p3, v2

    move p4, v3

    move p6, v6

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->h:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x43e10000    # 450.0f

    move-object p1, v1

    move p3, v2

    move p4, v3

    move p6, v6

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->i:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v2

    move p4, v3

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->j:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v2

    move p4, v3

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->k:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v6, 0x43050000    # 133.0f

    move-object p1, v1

    move p3, v3

    move p4, v4

    move p6, v6

    move-object p7, v2

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x43380000    # 184.0f

    const/high16 v6, 0x43850000    # 266.0f

    move-object p1, v1

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    move-object p7, v2

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 8

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->h:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->j:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->i:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v4, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->k:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float v5, v4, v1

    sub-float v5, v3, v5

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v5, p2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->o:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->b:F

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->p:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->o:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->b:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->q:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->q:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->b:F

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p2, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->r:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    sub-float/2addr v0, p2

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->s:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->s:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v1, v1, p2

    new-instance v7, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-direct {v7, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;)V

    iget v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->t:Lcom/zui/quickstep/views/FloatingWidgetView;

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->n:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v3, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v3, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->g:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v3, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFF)V

    iget-object v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->q:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->p:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->b:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->u:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz p2, :cond_3

    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-direct {v0, p2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;)V

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;->v:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method
