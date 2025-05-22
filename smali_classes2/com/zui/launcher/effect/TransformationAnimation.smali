.class public Lcom/zui/launcher/effect/TransformationAnimation;
.super Landroid/view/animation/Animation;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:F

.field private t:F


# direct methods
.method public constructor <init>(IFFFFFFFFFF)V
    .locals 14

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/zui/launcher/effect/TransformationAnimation;-><init>(IFFFFFFFFIFIF)V

    return-void
.end method

.method public constructor <init>(IFFFFFFFFIFIF)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->a:I

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->c:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->d:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->e:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->f:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->o:I

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->p:I

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->q:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->r:F

    iput p2, p0, Lcom/zui/launcher/effect/TransformationAnimation;->c:F

    iput p3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->d:F

    iput p4, p0, Lcom/zui/launcher/effect/TransformationAnimation;->e:F

    iput p5, p0, Lcom/zui/launcher/effect/TransformationAnimation;->f:F

    iput p6, p0, Lcom/zui/launcher/effect/TransformationAnimation;->k:F

    iput p7, p0, Lcom/zui/launcher/effect/TransformationAnimation;->l:F

    iput p8, p0, Lcom/zui/launcher/effect/TransformationAnimation;->m:F

    iput p9, p0, Lcom/zui/launcher/effect/TransformationAnimation;->n:F

    iput p10, p0, Lcom/zui/launcher/effect/TransformationAnimation;->o:I

    iput p12, p0, Lcom/zui/launcher/effect/TransformationAnimation;->p:I

    iput p11, p0, Lcom/zui/launcher/effect/TransformationAnimation;->q:F

    iput p13, p0, Lcom/zui/launcher/effect/TransformationAnimation;->r:F

    invoke-direct {p0}, Lcom/zui/launcher/effect/TransformationAnimation;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->a:I

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->c:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->d:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->e:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->f:F

    const/4 p2, 0x1

    iput p2, p0, Lcom/zui/launcher/effect/TransformationAnimation;->o:I

    iput p2, p0, Lcom/zui/launcher/effect/TransformationAnimation;->p:I

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->q:F

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->r:F

    return-void
.end method

.method private a()V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->o:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->q:F

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->s:F

    :cond_0
    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->p:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->r:F

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->t:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getScaleFactor()F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->l:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->k:F

    iget v3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->l:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    :goto_1
    iget v3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->m:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    iget v3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->n:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/zui/launcher/effect/TransformationAnimation;->m:F

    iget v3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->n:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    :cond_3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->g:F

    iget v2, p0, Lcom/zui/launcher/effect/TransformationAnimation;->i:F

    iget v3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->h:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_4

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    :cond_4
    iget v3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->i:F

    iget v4, p0, Lcom/zui/launcher/effect/TransformationAnimation;->j:F

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_5

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    :cond_5
    iget p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->s:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_6

    iget p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->t:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->s:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->t:F

    mul-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    neg-float v3, p1

    neg-float v4, v0

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    add-float/2addr v1, p1

    add-float/2addr v2, v0

    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->a:I

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->c:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->g:F

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->b:I

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->d:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->h:F

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->a:I

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->e:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->i:F

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->b:I

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->f:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->j:F

    iget v0, p0, Lcom/zui/launcher/effect/TransformationAnimation;->o:I

    iget v1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->q:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->s:F

    iget p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->p:I

    iget p3, p0, Lcom/zui/launcher/effect/TransformationAnimation;->r:F

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/effect/TransformationAnimation;->t:F

    return-void
.end method
