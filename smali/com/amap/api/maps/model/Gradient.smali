.class public Lcom/amap/api/maps/model/Gradient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/Gradient$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR_MAP_SIZE:I = 0x3e8


# instance fields
.field private isAvailable:Z

.field private mColorMapSize:I

.field private mColors:[I

.field private mStartPoints:[F


# direct methods
.method public constructor <init>([I[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/maps/model/Gradient;-><init>([I[FB)V

    return-void
.end method

.method private constructor <init>([I[FB)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    :try_start_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    array-length v1, p1

    if-eqz v1, :cond_2

    move v1, p3

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, p2, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "startPoints should be in increasing order"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    array-length v2, p2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean p3, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    return-void

    :cond_2
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "No colors have been defined"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "colors and startPoints should be same length"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "colors and startPoints should not be null"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "amap"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static a(IIF)I
    .locals 7

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x3

    new-array v2, v1, [F

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v3, v4, p0, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    new-array p0, v1, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v3, v4, p1, p0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 p1, 0x0

    aget v3, v2, p1

    aget v4, p0, p1

    sub-float/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    const/high16 v5, 0x43b40000    # 360.0f

    if-lez v3, :cond_0

    aget v3, p0, p1

    add-float/2addr v3, v5

    aput v3, p0, p1

    goto :goto_0

    :cond_0
    aget v3, p0, p1

    aget v6, v2, p1

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    aget v3, v2, p1

    add-float/2addr v3, v5

    aput v3, v2, p1

    :cond_1
    :goto_0
    new-array v3, v1, [F

    :goto_1
    if-ge p1, v1, :cond_2

    aget v4, p0, p1

    aget v5, v2, p1

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    aget v5, v2, p1

    add-float/2addr v4, v5

    aput v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected generateColorMap(D)[I
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v1, v1, v2

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v1, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v4, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v4, v4, v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v4, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v5, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    invoke-direct {v4, v1, v5, v6, v2}, Lcom/amap/api/maps/model/Gradient$a;-><init>(IIFB)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget v5, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v8, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v9, v8, v7

    aget v8, v8, v4

    iget v10, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    aget v12, v11, v4

    aget v7, v11, v7

    sub-float/2addr v12, v7

    mul-float/2addr v10, v12

    invoke-direct {v6, v9, v8, v10, v2}, Lcom/amap/api/maps/model/Gradient$a;-><init>(IIFB)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    array-length v5, v4

    sub-int/2addr v5, v1

    aget v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    array-length v5, v4

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v1, v1

    aget v4, v4, v5

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v7, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v8, v7, v5

    aget v7, v7, v5

    iget v9, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    aget v5, v10, v5

    sub-float/2addr v6, v5

    mul-float/2addr v9, v6

    invoke-direct {v4, v8, v7, v9, v2}, Lcom/amap/api/maps/model/Gradient$a;-><init>(IIFB)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    new-array v1, v1, [I

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/Gradient$a;

    move v4, v2

    move v5, v4

    :goto_1
    iget v6, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    if-ge v4, v6, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/Gradient$a;

    move v5, v4

    :cond_3
    sub-int v6, v4, v5

    int-to-float v6, v6

    invoke-static {v3}, Lcom/amap/api/maps/model/Gradient$a;->a(Lcom/amap/api/maps/model/Gradient$a;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v3}, Lcom/amap/api/maps/model/Gradient$a;->b(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v7

    invoke-static {v3}, Lcom/amap/api/maps/model/Gradient$a;->c(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v8

    invoke-static {v7, v8, v6}, Lcom/amap/api/maps/model/Gradient;->a(IIF)I

    move-result v6

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v3

    if-eqz v0, :cond_5

    :goto_2
    iget v0, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    if-ge v2, v0, :cond_5

    aget v0, v1, v2

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, p1

    double-to-int v3, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method public getColors()[I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    return-object p0
.end method

.method public getStartPoints()[F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    return-object p0
.end method

.method protected isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    return p0
.end method
