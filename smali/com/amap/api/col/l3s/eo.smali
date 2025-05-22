.class public final Lcom/amap/api/col/l3s/eo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Z = false


# instance fields
.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/eo;->d:Z

    iput v0, p0, Lcom/amap/api/col/l3s/eo;->e:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/col/l3s/eo;->f:I

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/col/l3s/eo;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/col/l3s/eo;->a:Z

    return v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/col/l3s/eo;->b:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/col/l3s/eo;->b:Z

    return v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/col/l3s/eo;->c:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/col/l3s/eo;->c:Z

    return v0
.end method

.method public static g()V
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "BlackScreen"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v1, "PureScreenCheckTool"

    const-string v2, "uploadInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Z
    .locals 11

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v5, -0x1

    move v6, v5

    :goto_0
    int-to-float v7, v3

    mul-int/lit8 v8, v1, 0x3

    int-to-float v8, v8

    div-float/2addr v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v7, v7

    :goto_1
    int-to-float v8, v7

    mul-int/lit8 v9, v2, 0x3

    int-to-float v9, v9

    div-float/2addr v9, v4

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v5, :cond_0

    move v6, v8

    :cond_0
    const/4 v9, 0x0

    if-eq v8, v6, :cond_1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/eo;->d:Z

    return v9

    :cond_1
    const/high16 v10, -0x1000000

    if-eq v8, v10, :cond_2

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/eo;->d:Z

    return v9

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v1, "AMapdelegate"

    const-string v2, "checkBlackScreen"

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/eo;->d:Z

    goto :goto_2

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/eo;->d:Z

    throw p1

    :goto_2
    return v0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/eo;->d:Z

    return p0
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/eo;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/eo;->e:I

    return-void
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/eo;->e:I

    iget p0, p0, Lcom/amap/api/col/l3s/eo;->f:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
