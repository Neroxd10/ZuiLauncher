.class public final Lcom/amap/api/col/l3s/ad;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ad$a;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field b:[F

.field public c:Lcom/amap/api/col/l3s/dl$d;

.field d:I

.field e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/af;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amap/api/col/l3s/ad$a;

.field private j:Z

.field private k:Lcom/autonavi/amap/mapcore/IPoint;

.field private l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

.field private n:Lcom/amap/api/col/l3s/fh;

.field private o:Lcom/amap/api/col/l3s/el;

.field private p:Ljava/nio/FloatBuffer;

.field private volatile q:Z

.field private r:[I

.field private s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    new-instance v0, Lcom/amap/api/col/l3s/ad$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ad$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->i:Lcom/amap/api/col/l3s/ad$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ad;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ad;->q:Z

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->r:[I

    const v0, 0x2bf20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->b:[F

    iput v1, p0, Lcom/amap/api/col/l3s/ad;->d:I

    iput v1, p0, Lcom/amap/api/col/l3s/ad;->e:I

    new-instance v0, Lcom/amap/api/col/l3s/ad$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/ad$2;-><init>(Lcom/amap/api/col/l3s/ad;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->s:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance p1, Lcom/amap/api/col/l3s/fh;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/fh;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    new-instance p1, Lcom/amap/api/col/l3s/el;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/el;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ad;->o:Lcom/amap/api/col/l3s/el;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ad;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    return-object p0
.end method

.method private a(I)V
    .locals 10

    const/16 v0, 0x1388

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3s/ad;->d:I

    const v2, 0x88e4

    if-nez v1, :cond_2

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v3, v4

    iput v1, p0, Lcom/amap/api/col/l3s/ad;->d:I

    const/4 v1, 0x1

    aget v1, v3, v1

    iput v1, p0, Lcom/amap/api/col/l3s/ad;->e:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->o:Lcom/amap/api/col/l3s/el;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/el;->b()Ljava/nio/ShortBuffer;

    move-result-object v1

    const/16 v3, 0x7530

    new-array v3, v3, [S

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v5, 0x0

    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v7, 0x0

    int-to-short v8, v8

    aput-short v8, v3, v6

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    aput-short v9, v3, v6

    add-int/lit8 v6, v5, 0x2

    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v6

    add-int/lit8 v6, v5, 0x3

    aput-short v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    aput-short v9, v3, v6

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v7, v7, 0x3

    int-to-short v6, v7

    aput-short v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    iget v0, p0, Lcom/amap/api/col/l3s/ad;->e:I

    const v3, 0x8893

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0xea60

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_2
    iget v0, p0, Lcom/amap/api/col/l3s/ad;->d:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x24

    mul-int/lit8 p1, p1, 0x4

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->p:Ljava/nio/FloatBuffer;

    invoke-static {v1, p1, p0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method private a(IIII)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->o:Lcom/amap/api/col/l3s/el;

    mul-int/lit8 v1, p2, 0x24

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/el;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->p:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->b:[F

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p3, p0, Lcom/amap/api/col/l3s/ad;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/ad;->a(I)V

    iget-object p3, p0, Lcom/amap/api/col/l3s/ad;->p:Ljava/nio/FloatBuffer;

    iget-object p4, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/col/l3s/ad;->a(IILjava/nio/FloatBuffer;Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->o:Lcom/amap/api/col/l3s/el;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/el;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(IILjava/nio/FloatBuffer;Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 8

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p3, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ad;->h()V

    :cond_2
    iget-object p3, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    if-eqz p3, :cond_4

    iget v0, p0, Lcom/amap/api/col/l3s/ad;->d:I

    if-eqz v0, :cond_4

    iget v0, p3, Lcom/amap/api/col/l3s/dl$d;->c:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/amap/api/col/l3s/ad;->e:I

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget p3, p3, Lcom/amap/api/col/l3s/dk;->d:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object p3, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget p3, p3, Lcom/amap/api/col/l3s/dl$d;->h:I

    invoke-virtual {p4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p4

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object p3, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget p3, p3, Lcom/amap/api/col/l3s/dl$d;->b:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p3, p0, Lcom/amap/api/col/l3s/ad;->d:I

    const p4, 0x8892

    invoke-static {p4, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object p3, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget v0, p3, Lcom/amap/api/col/l3s/dl$d;->b:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/16 p3, 0xbe2

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x303

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget p1, p1, Lcom/amap/api/col/l3s/dl$d;->c:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p1, p0, Lcom/amap/api/col/l3s/ad;->d:I

    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget v2, p1, Lcom/amap/api/col/l3s/dl$d;->c:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/16 v6, 0x24

    const/16 v7, 0x10

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget p1, p1, Lcom/amap/api/col/l3s/dl$d;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p1, p0, Lcom/amap/api/col/l3s/ad;->d:I

    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget v2, p1, Lcom/amap/api/col/l3s/dl$d;->g:I

    const/4 v3, 0x3

    const/16 v7, 0x18

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget p1, p1, Lcom/amap/api/col/l3s/dl$d;->a:I

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ad;->i()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget p1, p0, Lcom/amap/api/col/l3s/ad;->e:I

    const v1, 0x8893

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 p1, 0x4

    mul-int/lit8 p2, p2, 0x6

    const/16 v2, 0x1403

    invoke-static {p1, p2, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {p4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget p1, p1, Lcom/amap/api/col/l3s/dl$d;->b:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    iget p0, p0, Lcom/amap/api/col/l3s/dl$d;->c:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {p3}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ad;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->i:Lcom/amap/api/col/l3s/ad$a;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "MapOverlayImageView"

    const-string v1, "changeOverlayIndex"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ad;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "MapOverlayImageView"

    const-string v0, "addMarker"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/col/l3s/dk;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/dl$d;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->c:Lcom/amap/api/col/l3s/dl$d;

    :cond_0
    return-void
.end method

.method private i()[F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x10

    new-array p0, p0, [F

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3s/db;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/col/l3s/db;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/col/l3s/ad;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/ad;->d(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/eh;->a(I)V

    new-instance p0, Lcom/amap/api/maps/model/Marker;

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3s/di;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/col/l3s/di;-><init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/col/l3s/ad;)V

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/ad;->d(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    new-instance p0, Lcom/amap/api/maps/model/Text;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/model/Text;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Landroid/view/MotionEvent;)Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    instance-of v3, v2, Lcom/amap/api/col/l3s/db;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Rect;II)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/amap/api/col/l3s/db;

    iput-object v2, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/MarkerOptions;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ao;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/amap/api/col/l3s/ad$1;

    invoke-direct {p2, p0, v1}, Lcom/amap/api/col/l3s/ad$1;-><init>(Lcom/amap/api/col/l3s/ad;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImpGLSurfaceView"

    const-string p2, "addMarkers"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/af;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->g:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->k:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->k:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_0
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->k:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "MapOverlayImageView"

    const-string v0, "showInfoWindow"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/amap/api/col/l3s/fc;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "infowindow show failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amap/api/col/l3s/fd;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->setOnTap(Z)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->setOnTap(Z)V

    :cond_3
    iput-object p1, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "MapOverlayImageView"

    const-string v0, "set2Top"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a(Landroid/graphics/Bitmap;Lcom/amap/api/col/l3s/af;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v3}, Lcom/amap/api/col/l3s/fh;->a(IILjava/lang/String;)Lcom/amap/api/col/l3s/fh$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fh;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3s/af;->f(F)V

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fh;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3s/af;->e(F)V

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->a:I

    iget v1, p1, Lcom/amap/api/col/l3s/fh$c;->c:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fh;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3s/af;->g(F)V

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->b:I

    iget v1, p1, Lcom/amap/api/col/l3s/fh$c;->d:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/fh;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3s/af;->h(F)V

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/fh;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3s/af;->c(F)V

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->b:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/fh;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3s/af;->d(F)V

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->a:I

    iget v3, p1, Lcom/amap/api/col/l3s/fh$c;->c:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iget-object v3, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/fh;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3s/af;->a(F)V

    iget v0, p1, Lcom/amap/api/col/l3s/fh$c;->b:I

    iget p1, p1, Lcom/amap/api/col/l3s/fh$c;->d:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    int-to-float p1, v0

    sub-float/2addr p1, v1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fh;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3s/af;->b(F)V

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/af;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ad;->b(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final a(Z)Z
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/col/l3s/ad;->q:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/ad;->s:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ad;->q:Z

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->g:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getBaseOverlayTextureID()I

    move-result v5

    move v6, v1

    :goto_0
    iget-object v7, p0, Lcom/amap/api/col/l3s/ad;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/amap/api/col/l3s/ad;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/col/l3s/af;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->o()V

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->p()I

    move-result v8

    if-gtz v8, :cond_3

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v8

    if-ne v8, v5, :cond_2

    iget-object v8, p0, Lcom/amap/api/col/l3s/ad;->n:Lcom/amap/api/col/l3s/fh;

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amap/api/col/l3s/fh;->a(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/amap/api/col/l3s/ad;->r:[I

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v9

    aput v9, v8, v1

    iget-object v8, p0, Lcom/amap/api/col/l3s/ad;->r:[I

    invoke-static {v0, v8, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-virtual {v7, v1}, Lcom/amap/api/col/l3s/af;->a(I)V

    :goto_1
    iget-object v8, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/amap/api/col/l3s/ad;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    monitor-exit v3

    return v1

    :cond_5
    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_2
    const/high16 v6, 0x4f000000

    if-ge v5, v4, :cond_a

    iget-object v7, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    if-nez p1, :cond_6

    invoke-interface {v7}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result v8

    cmpl-float v6, v8, v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_6
    invoke-interface {v7}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result v8

    cmpl-float v6, v8, v6

    if-nez v6, :cond_9

    :cond_7
    invoke-interface {v7}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isOnTap()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isAllowLow()Z

    move-result v6

    iput-boolean v6, p0, Lcom/amap/api/col/l3s/ad;->j:Z

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->checkInBounds()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isInfoWindowShown()Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_9

    :cond_8
    :try_start_4
    iget-object v6, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result p1

    cmpl-float p1, p1, v6

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    :goto_4
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result p1

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    goto :goto_4

    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_12

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_6
    if-ge v4, p1, :cond_11

    iget-object v9, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    monitor-enter v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v10, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9, v10}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->loadTexture(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    if-nez v4, :cond_d

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getTextureId()I

    move-result v6

    goto :goto_7

    :cond_d
    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getTextureId()I

    move-result v10

    if-eq v10, v6, :cond_e

    invoke-direct {p0, v6, v5, v7, v8}, Lcom/amap/api/col/l3s/ad;->a(IIII)V

    move v5, v1

    move v7, v5

    move v8, v7

    move v6, v10

    :cond_e
    :goto_7
    iget-object v10, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v11, p0, Lcom/amap/api/col/l3s/ad;->b:[F

    invoke-interface {v9, v10, v11, v8, v2}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getTextureId()I

    move-result v10

    if-eq v10, v6, :cond_f

    invoke-direct {p0, v6, v5, v7, v8}, Lcom/amap/api/col/l3s/ad;->a(IIII)V

    move v5, v1

    move v7, v8

    move v6, v10

    move v8, v5

    :cond_f
    add-int/lit8 v8, v8, 0x24

    add-int/2addr v5, v0

    const/16 v10, 0x1388

    if-ne v5, v10, :cond_10

    invoke-direct {p0, v6, v5, v7, v8}, Lcom/amap/api/col/l3s/ad;->a(IIII)V

    move v5, v1

    move v7, v5

    move v8, v7

    :cond_10
    monitor-exit v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :catchall_1
    move-exception p0

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0

    :cond_11
    if-lez v5, :cond_12

    invoke-direct {p0, v6, v5, v7, v8}, Lcom/amap/api/col/l3s/ad;->a(IIII)V

    :cond_12
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_2
    move-exception p0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    :goto_8
    return v0
.end method

.method public final b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method public final b(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->hideInfoWindow()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/amap/api/col/l3s/fc;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "infowindow hide failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amap/api/col/l3s/fd;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    iput-object v2, p0, Lcom/amap/api/col/l3s/ad;->k:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v2, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    iget-object v3, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v4, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isOnTap()Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz p1, :cond_5

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    iput-object v2, p0, Lcom/amap/api/col/l3s/ad;->m:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    :cond_5
    :goto_4
    monitor-exit v3

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    const-string p1, "MapOverlayImageView"

    const-string v0, "clear"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    instance-of v4, v3, Lcom/amap/api/col/l3s/db;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/amap/api/col/l3s/db;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/db;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Rect;II)Z

    move-result v5

    if-eqz v5, :cond_0

    iget p1, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget v1, v4, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v1}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ad;->k:Lcom/autonavi/amap/mapcore/IPoint;

    check-cast v3, Lcom/amap/api/col/l3s/db;

    iput-object v3, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->l:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    return-object p0
.end method

.method public final c(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    instance-of v3, v2, Lcom/amap/api/col/l3s/db;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->checkInBounds()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/amap/api/maps/model/Marker;

    check-cast v2, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v3, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    const-string v2, "MapOverlayImageView"

    const-string v3, "getMapScreenMarkers"

    invoke-static {p0, v2, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ad;->q:Z

    return-void
.end method

.method protected final f()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->destroy(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/ad;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "MapOverlayImageView"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MapOverlayImageView clear erro"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "amapApi"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
