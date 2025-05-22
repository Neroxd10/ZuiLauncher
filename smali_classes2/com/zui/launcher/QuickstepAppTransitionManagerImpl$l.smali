.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;
.super Lcom/zui/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->m(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic A:Landroid/graphics/Point;

.field final synthetic B:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic C:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

.field final synthetic D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

.field b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field g:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field h:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field i:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field j:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field k:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field l:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field m:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

.field final synthetic o:F

.field final synthetic p:F

.field final synthetic q:F

.field final synthetic r:Landroid/graphics/RectF;

.field final synthetic s:Landroid/graphics/Rect;

.field final synthetic t:I

.field final synthetic u:Landroid/graphics/RectF;

.field final synthetic v:[I

.field final synthetic w:Landroid/graphics/RectF;

.field final synthetic x:Lcom/zui/launcher/views/FloatingIconView;

.field final synthetic y:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic z:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/RectF;[ILandroid/graphics/RectF;Lcom/zui/launcher/views/FloatingIconView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/Point;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    move-object v1, p2

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    move v1, p3

    iput v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->o:F

    move v1, p4

    iput v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->p:F

    move v1, p5

    iput v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->q:F

    move-object v1, p6

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->r:Landroid/graphics/RectF;

    move-object v1, p7

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    move v1, p8

    iput v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->t:I

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->u:Landroid/graphics/RectF;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->v:[I

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->w:Landroid/graphics/RectF;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->x:Lcom/zui/launcher/views/FloatingIconView;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->y:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->A:Landroid/graphics/Point;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->B:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->C:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/zui/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->i:F

    iget-wide v4, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->k:J

    long-to-float v2, v4

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object p1, v1

    move-object p2, p0

    move p3, v5

    move p4, v3

    move p5, v6

    move p6, v2

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->j:F

    iget-wide v4, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->l:J

    long-to-float v2, v4

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    move-object p1, v1

    move p3, v5

    move p4, v3

    move p6, v2

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->n:F

    iget v2, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->o:F

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x43e10000    # 450.0f

    move-object p1, v1

    move p3, v3

    move p4, v2

    move p5, v5

    move p6, v6

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->p:F

    iget-wide v4, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->m:J

    long-to-float v2, v4

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    const/high16 v6, 0x41c80000    # 25.0f

    move-object p1, v1

    move p3, v3

    move p4, v5

    move p5, v6

    move p6, v2

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->o:F

    iget v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->p:F

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    const v6, 0x43bb8000    # 375.0f

    move-object p1, v1

    move p3, v2

    move p4, v3

    move p5, v5

    move p6, v6

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->q:F

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v6, 0x43e10000    # 450.0f

    move-object p1, v1

    move p3, v4

    move p4, v2

    move p6, v6

    move-object p7, v3

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->g:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->a:I

    int-to-float v3, v3

    iget v2, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->e:I

    int-to-float v2, v2

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    const v6, 0x43bb8000    # 375.0f

    move-object p1, v1

    move p3, v3

    move p4, v2

    move p6, v6

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->h:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->b:I

    int-to-float v3, v3

    iget v2, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->f:I

    int-to-float v2, v2

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v3

    move p4, v2

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->i:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->c:I

    int-to-float v3, v3

    iget v2, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->g:I

    int-to-float v2, v2

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v3

    move p4, v2

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->j:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->n:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget v3, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->d:I

    int-to-float v3, v3

    iget v2, v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->h:I

    int-to-float v2, v2

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    move-object p1, v1

    move p3, v3

    move p4, v2

    move-object p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->k:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

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

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->l:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

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

    iput-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->m:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v1, v2

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->h:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v4, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->j:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v6, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->i:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v7, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->k:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float v8, v7, v5

    sub-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v8, v3

    add-float/2addr v8, v4

    float-to-int v4, v8

    int-to-float v8, v6

    add-float/2addr v8, v7

    float-to-int v7, v8

    iget-object v8, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    invoke-virtual {v8, v3, v6, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v6, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->t:I

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v7}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget-object v8, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v8}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v8

    iget v8, v8, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget v9, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->t:I

    invoke-static {v6, v7, v8, v9}, Lcom/zui/launcher/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_0
    int-to-float v3, v3

    div-float v6, v1, v3

    int-to-float v4, v4

    div-float v7, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    sub-float v1, v3, v1

    div-float/2addr v1, v5

    sub-float v2, v4, v2

    div-float/2addr v2, v5

    iget-object v5, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->u:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->r:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->u:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->v:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v8, v8, v11

    int-to-float v8, v8

    invoke-virtual {v5, v10, v8}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->u:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v5, v8, v10}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->u:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v5, v8}, Lcom/zui/launcher/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    iget-object v5, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->u:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v1

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    sub-float/2addr v8, v12

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v5, v10

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->w:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->r:Landroid/graphics/RectF;

    invoke-virtual {v10, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->w:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v12, v12, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v10, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->w:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->d:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v12, v12, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v10, v12}, Lcom/zui/launcher/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    iget-object v14, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->w:Landroid/graphics/RectF;

    iget v10, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v1

    iput v10, v14, Landroid/graphics/RectF;->left:F

    iget v10, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v2

    iput v10, v14, Landroid/graphics/RectF;->top:F

    iget v10, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v1

    iput v10, v14, Landroid/graphics/RectF;->right:F

    iget v1, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v14, Landroid/graphics/RectF;->bottom:F

    if-eqz p2, :cond_1

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->x:Lcom/zui/launcher/views/FloatingIconView;

    iget-object v1, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v15, v1, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/16 v17, 0x0

    iget-object v0, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float v18, v0, v6

    const/16 v19, 0x1

    move/from16 v16, p1

    invoke-virtual/range {v13 .. v19}, Lcom/zui/launcher/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZ)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->y:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v2, v2

    sub-int/2addr v2, v11

    :goto_0
    if-ltz v2, :cond_9

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->y:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v10, v10, v2

    new-instance v12, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v13, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-direct {v12, v13}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;)V

    iget v13, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v14, 0x2

    if-nez v13, :cond_5

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->t:I

    if-ne v10, v11, :cond_2

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v13}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v13

    iget v13, v13, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float v13, v13

    add-float v14, v8, v3

    sub-float/2addr v13, v14

    invoke-virtual {v10, v5, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_2
    if-ne v10, v14, :cond_3

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v13}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v13

    iget v13, v13, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float v13, v13

    add-float v14, v8, v3

    sub-float/2addr v13, v14

    iget-object v14, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v14}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v14

    iget v14, v14, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v14, v14

    add-float v15, v5, v4

    sub-float/2addr v14, v15

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_3
    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->D:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {v13}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v13

    iget v13, v13, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v13, v13

    add-float v14, v5, v4

    sub-float/2addr v13, v14

    invoke-virtual {v10, v13, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_4
    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->x:Lcom/zui/launcher/views/FloatingIconView;

    iget-object v14, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->w:Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v15, v10, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/16 v17, 0x0

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float v18, v10, v6

    const/16 v19, 0x1

    move/from16 v16, p1

    invoke-virtual/range {v13 .. v19}, Lcom/zui/launcher/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZ)V

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v10

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v10

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->e:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    sub-float v13, v7, v13

    invoke-virtual {v10, v13}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v10

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->f:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v10, v13}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v10

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->g:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v10, v13}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withShadowRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_3

    :cond_5
    if-ne v13, v11, :cond_8

    iget-object v13, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v13, :cond_6

    iget-object v15, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->A:Landroid/graphics/Point;

    iget v7, v13, Landroid/graphics/Rect;->left:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15, v7, v13}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    :cond_6
    iget-object v7, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->A:Landroid/graphics/Point;

    iget-object v13, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v15, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v15, v13}, Landroid/graphics/Point;->set(II)V

    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    iget-object v10, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v9, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->t:I

    rem-int/2addr v10, v14

    if-ne v10, v11, :cond_7

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v13, v7, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Landroid/graphics/Rect;->right:I

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->A:Landroid/graphics/Point;

    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v10, Landroid/graphics/Point;->y:I

    iput v14, v10, Landroid/graphics/Point;->x:I

    iput v13, v10, Landroid/graphics/Point;->y:I

    :cond_7
    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->A:Landroid/graphics/Point;

    iget v14, v13, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v10, v14, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v10, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_4

    :cond_8
    :goto_3
    move v10, v7

    :goto_4
    invoke-virtual {v12}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    move v7, v10

    goto/16 :goto_0

    :cond_9
    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->B:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v2, :cond_b

    new-instance v3, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-direct {v3, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;)V

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->m:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v2, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v2}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_a

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->z:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->s:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->m:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v2, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_5

    :cond_a
    iget-object v2, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->l:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :goto_5
    invoke-virtual {v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->C:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method
