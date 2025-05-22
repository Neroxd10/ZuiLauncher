.class public final Lcom/amap/api/col/l3s/y;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/nio/FloatBuffer;

.field private d:Ljava/nio/FloatBuffer;

.field private e:I

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/y;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/y;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/y;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3s/y;->g:F

    iput v1, p0, Lcom/amap/api/col/l3s/y;->h:F

    iput-object p1, p0, Lcom/amap/api/col/l3s/y;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/amap/api/col/l3s/y;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/col/l3s/y;->c:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/y;->c:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/y;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const v2, 0x49742400    # 1000000.0f

    const/4 v3, 0x1

    move v4, v1

    move v5, v2

    move v6, v5

    move v7, v3

    move v8, v7

    move v2, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v3

    if-ge v7, v9, :cond_4

    add-int/lit8 v9, v7, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    iget-object v10, p0, Lcom/amap/api/col/l3s/y;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    if-ne v8, v3, :cond_1

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_1
    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_2
    const/4 v10, 0x3

    if-ne v8, v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v8, v0

    :cond_3
    add-int/2addr v8, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_5

    move v3, p1

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    iput v3, p0, Lcom/amap/api/col/l3s/y;->g:F

    if-lez v2, :cond_6

    move p1, v1

    :cond_6
    iput p1, p0, Lcom/amap/api/col/l3s/y;->h:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/y;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/amap/api/col/l3s/y;->d:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/y;->d:Ljava/nio/FloatBuffer;

    :cond_7
    iget-object p1, p0, Lcom/amap/api/col/l3s/y;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    iget-object v1, p0, Lcom/amap/api/col/l3s/y;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/amap/api/col/l3s/y;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/y;->g:F

    return p0
.end method

.method public final a(F)V
    .locals 0

    neg-float p1, p1

    iput p1, p0, Lcom/amap/api/col/l3s/y;->f:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/y;->e:I

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/dl$b;[F)V
    .locals 10

    iget v2, p0, Lcom/amap/api/col/l3s/y;->f:F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget v0, p1, Lcom/amap/api/col/l3s/dk;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    iget v2, p0, Lcom/amap/api/col/l3s/y;->e:I

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, p1, Lcom/amap/api/col/l3s/dl$b;->h:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, p1, Lcom/amap/api/col/l3s/dl$b;->h:I

    iget-object v9, p0, Lcom/amap/api/col/l3s/y;->d:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, p1, Lcom/amap/api/col/l3s/dl$b;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, p1, Lcom/amap/api/col/l3s/dl$b;->c:I

    iget-object v9, p0, Lcom/amap/api/col/l3s/y;->c:Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    const/16 v8, 0xc

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, p1, Lcom/amap/api/col/l3s/dl$b;->g:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/y;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    const/4 p2, 0x4

    invoke-static {p2, v4, p0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget p0, p1, Lcom/amap/api/col/l3s/dl$b;->c:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p1, Lcom/amap/api/col/l3s/dl$b;->h:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/y;->h:F

    return p0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/y;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method
