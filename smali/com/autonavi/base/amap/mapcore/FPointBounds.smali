.class public Lcom/autonavi/base/amap/mapcore/FPointBounds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;
    }
.end annotation


# instance fields
.field private final mVersionCode:I

.field public final northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

.field public final southwest:Lcom/autonavi/base/amap/mapcore/FPoint;


# direct methods
.method constructor <init>(ILcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->mVersionCode:I

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    iput-object p3, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/autonavi/base/amap/mapcore/FPointBounds;-><init>(ILcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)V

    return-void
.end method

.method public static builder()Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;
    .locals 1

    new-instance v0, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v0}, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;-><init>()V

    return-object v0
.end method

.method private containsx(D)Z
    .locals 4

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget p0, p0, Landroid/graphics/PointF;->x:F

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

.method private containsy(D)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private intersect(Lcom/autonavi/base/amap/mapcore/FPointBounds;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v3

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v6, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    float-to-double v7, v4

    sub-float/2addr v5, v6

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    float-to-double v3, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float v5, v1, p1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p0

    float-to-double v5, v5

    sub-float/2addr v2, p0

    add-float/2addr v2, v1

    sub-float/2addr v2, p1

    float-to-double p0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p0, v1, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public contains(Lcom/autonavi/base/amap/mapcore/FPoint;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/base/amap/mapcore/FPointBounds;->containsy(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/base/amap/mapcore/FPointBounds;->containsx(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public contains(Lcom/autonavi/base/amap/mapcore/FPointBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-virtual {p0, v1}, Lcom/autonavi/base/amap/mapcore/FPointBounds;->contains(Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/FPointBounds;->contains(Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v3, p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-virtual {v1, v3}, Lcom/autonavi/base/amap/mapcore/FPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object p1, p1, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/FPoint;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method getVersionCode()I
    .locals 0

    iget p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->mVersionCode:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public intersects(Lcom/autonavi/base/amap/mapcore/FPointBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/base/amap/mapcore/FPointBounds;->intersect(Lcom/autonavi/base/amap/mapcore/FPointBounds;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p1, p0}, Lcom/autonavi/base/amap/mapcore/FPointBounds;->intersect(Lcom/autonavi/base/amap/mapcore/FPointBounds;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "southwest = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") northeast = ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
