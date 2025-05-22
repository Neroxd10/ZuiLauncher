.class public Lcom/zui/quickstep/OrientationRectF;
.super Landroid/graphics/RectF;
.source ""


# instance fields
.field private final a:I

.field private final b:F

.field private final c:F

.field private final d:Landroid/graphics/Matrix;

.field private final e:[F


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/OrientationRectF;->d:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    iput p5, p0, Lcom/zui/quickstep/OrientationRectF;->a:I

    iput p4, p0, Lcom/zui/quickstep/OrientationRectF;->b:F

    iput p3, p0, Lcom/zui/quickstep/OrientationRectF;->c:F

    return-void
.end method

.method private a(Landroid/view/MotionEvent;IZ)Z
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/OrientationRectF;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/zui/quickstep/OrientationRectF;->b:F

    iget v1, p0, Lcom/zui/quickstep/OrientationRectF;->c:F

    iget-object v2, p0, Lcom/zui/quickstep/OrientationRectF;->d:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/zui/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    const-string v0, " this: "

    const-string v1, "OrientationRectF"

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transforming rotation due to forceTransform, deltaRotation: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mRotation: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/zui/quickstep/OrientationRectF;->a:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/zui/quickstep/OrientationRectF;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->applyTransform(Landroid/graphics/Matrix;)V

    return v2

    :cond_0
    iget-object p2, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, p2, v4

    iget-object p2, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, p2, v2

    iget-object p2, p0, Lcom/zui/quickstep/OrientationRectF;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " new: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    aget v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    aget v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " rect: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " forceTransform: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " contains: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    aget v3, p3, v4

    aget p3, p3, v2

    invoke-virtual {p0, v3, p3}, Lcom/zui/quickstep/OrientationRectF;->contains(FF)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/zui/quickstep/OrientationRectF;->e:[F

    aget p3, p2, v4

    aget p2, p2, v2

    invoke-virtual {p0, p3, p2}, Lcom/zui/quickstep/OrientationRectF;->contains(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_0

    :cond_1
    return v4
.end method


# virtual methods
.method public applyTransformFromRotation(Landroid/view/MotionEvent;IZ)Z
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/OrientationRectF;->a:I

    invoke-static {p2, v0}, Lcom/zui/launcher/states/RotationHelper;->deltaRotation(II)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/OrientationRectF;->a(Landroid/view/MotionEvent;IZ)Z

    move-result p0

    return p0
.end method

.method public applyTransformToRotation(Landroid/view/MotionEvent;IZ)Z
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/OrientationRectF;->a:I

    invoke-static {v0, p2}, Lcom/zui/launcher/states/RotationHelper;->deltaRotation(II)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/OrientationRectF;->a(Landroid/view/MotionEvent;IZ)Z

    move-result p0

    return p0
.end method

.method b()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OrientationRectF;->a:I

    return p0
.end method

.method public contains(FF)Z
    .locals 4

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v2, p0

    if-gez v3, :cond_0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p2, v2

    if-ltz p1, :cond_0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rotation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/quickstep/OrientationRectF;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
