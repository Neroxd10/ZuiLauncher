.class Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;
.super Landroid/graphics/RectF;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/OrientationTouchTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationRectF"
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field final synthetic d:Lcom/zui/quickstep/OrientationTouchTransformer;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/OrientationTouchTransformer;FFFFI)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput p6, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a:I

    iput p5, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->b:F

    iput p4, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->c:F

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a:I

    return p0
.end method

.method static synthetic b(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->b:F

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->c:F

    return p0
.end method


# virtual methods
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

.method d(Landroid/view/MotionEvent;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->a(Lcom/zui/quickstep/OrientationTouchTransformer;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->b(Lcom/zui/quickstep/OrientationTouchTransformer;)I

    move-result v0

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a:I

    invoke-static {v0, v1}, Lcom/zui/launcher/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->b:F

    iget v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->c:F

    iget-object v3, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v3}, Lcom/zui/quickstep/OrientationTouchTransformer;->a(Lcom/zui/quickstep/OrientationTouchTransformer;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zui/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :goto_0
    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {p0}, Lcom/zui/quickstep/OrientationTouchTransformer;->a(Lcom/zui/quickstep/OrientationTouchTransformer;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->a(Lcom/zui/quickstep/OrientationTouchTransformer;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v2}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "original: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " new: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v4}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v2}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " forceTransform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " contains: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {p2}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object p2

    aget p2, p2, v3

    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v2}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->contains(FF)Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OrientationTouchTransformer"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {p2}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object p2

    aget p2, p2, v3

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-static {v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->contains(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_0

    :cond_1
    return v3
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

    iget p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
