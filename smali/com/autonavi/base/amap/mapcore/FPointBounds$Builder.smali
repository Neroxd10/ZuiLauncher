.class public final Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/base/amap/mapcore/FPointBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEast:F

.field private mNorth:F

.field private mSouth:F

.field private mWest:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mSouth:F

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    iput v1, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mNorth:F

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mWest:F

    iput v1, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mEast:F

    return-void
.end method

.method private containsx(D)Z
    .locals 4

    iget v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mEast:F

    cmpg-float v1, v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    float-to-double v0, v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    float-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    float-to-double v0, v0

    cmpg-double v0, v0, p1

    if-lez v0, :cond_3

    float-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method


# virtual methods
.method public final build()Lcom/autonavi/base/amap/mapcore/FPointBounds;
    .locals 3

    new-instance v0, Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iget v1, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mSouth:F

    invoke-static {v1, v2}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mEast:F

    iget p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mNorth:F

    invoke-static {v2, p0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/autonavi/base/amap/mapcore/FPointBounds;-><init>(Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)V

    return-object v0
.end method

.method public final include(Lcom/autonavi/base/amap/mapcore/FPoint;)Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;
    .locals 2

    iget v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mSouth:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mSouth:F

    iget v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mNorth:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mNorth:F

    iget v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mEast:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->mEast:F

    return-object p0
.end method
