.class public final Lcom/amap/api/col/l3s/ef;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ef$a;,
        Lcom/amap/api/col/l3s/ef$c;,
        Lcom/amap/api/col/l3s/ef$b;
    }
.end annotation


# static fields
.field private static a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [F

    sput-object v0, Lcom/amap/api/col/l3s/ef;->a:[F

    return-void
.end method

.method private static a(ILjava/nio/FloatBuffer;FI[FIF)V
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p3

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v12, v2, v3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float v9, v2, v3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float v10, v2, v3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float v11, v2, v3

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v5, v1, 0x3

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    add-int/lit8 v2, v5, 0x3

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amap/api/col/l3s/ef;->a:[F

    if-eqz v1, :cond_2

    sget-object v1, Lcom/amap/api/col/l3s/ef;->a:[F

    array-length v1, v1

    if-ge v1, v5, :cond_3

    :cond_2
    new-array v1, v5, [F

    sput-object v1, Lcom/amap/api/col/l3s/ef;->a:[F

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_4

    sget-object v2, Lcom/amap/api/col/l3s/ef;->a:[F

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/amap/api/col/l3s/ef;->a:[F

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v17, p4

    invoke-static/range {v4 .. v20}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "GlesUtility"

    const-string v2, "drawCircleLine"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FII[F)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lcom/amap/api/col/l3s/dk;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v7, 0x0

    aput v4, v3, v7

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v5, 0x2

    aput v6, v3, v5

    const/4 v5, 0x3

    aput v2, v3, v5

    invoke-static/range {p4 .. p4}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v2, v0, Lcom/amap/api/col/l3s/dl$e;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v8, v0, Lcom/amap/api/col/l3s/dl$e;->b:I

    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/amap/api/col/l3s/dl$e;->c:I

    invoke-static {v2, v4, v3, v7}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v2, v0, Lcom/amap/api/col/l3s/dl$e;->a:I

    move-object/from16 v3, p7

    invoke-static {v2, v4, v7, v3, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-static {p1, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, v0, Lcom/amap/api/col/l3s/dl$e;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method private static a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[F)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FII[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[FFIFZZ)V
    .locals 10

    const/4 v1, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    move-object v3, p3

    move v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[F)V

    if-eqz p11, :cond_0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FFIFZ)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[FIFFIIZZ)V
    .locals 12

    const/4 v1, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    move-object/from16 v3, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[F)V

    if-eqz p15, :cond_0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    move/from16 v11, p14

    invoke-static/range {v0 .. v11}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FIFFIIZ)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[F)V
    .locals 8

    add-int/lit8 v6, p4, -0x1

    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FII[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FFIFZ)V
    .locals 8

    if-eqz p9, :cond_0

    const/4 v0, -0x1

    move v6, p7

    if-eq v6, v0, :cond_0

    mul-float v3, p3, p6

    move v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/l3s/ef;->a(ILjava/nio/FloatBuffer;FI[FIF)V

    return-void

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FIFFIIZ)V
    .locals 23

    move-object/from16 v3, p2

    move/from16 v5, p4

    if-eqz p11, :cond_5

    const/4 v0, -0x1

    move/from16 v1, p6

    if-eq v1, v0, :cond_5

    mul-float v8, p8, p3

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v14, v0, v2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float v11, v0, v2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float v12, v0, v2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float v13, v0, v2

    const/4 v0, 0x3

    if-ge v5, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v7, v5, 0x3

    if-eqz v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    if-ge v0, v7, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amap/api/col/l3s/ef;->a:[F

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/api/col/l3s/ef;->a:[F

    array-length v0, v0

    if-ge v0, v7, :cond_3

    :cond_2
    new-array v0, v7, [F

    sput-object v0, Lcom/amap/api/col/l3s/ef;->a:[F

    :cond_3
    sget-object v0, Lcom/amap/api/col/l3s/ef;->a:[F

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2, v7}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    sget-object v6, Lcom/amap/api/col/l3s/ef;->a:[F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v22, 0x1

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v19, p5

    move/from16 v20, p9

    move/from16 v21, p10

    invoke-static/range {v6 .. v22}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    return-void

    :catchall_0
    :cond_5
    const/4 v1, 0x2

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[F)V

    return-void
.end method

.method public static a(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;)V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/ef$b;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ef$b;-><init>()V

    invoke-interface {p0, v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setEGLContextFactory(Lcom/amap/api/col/l3s/ee;)V

    new-instance v0, Lcom/amap/api/col/l3s/ef$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ef$a;-><init>()V

    invoke-interface {p0, v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setEGLConfigChooser(Lcom/amap/api/col/l3s/ed;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "amap"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
