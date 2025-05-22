.class public final Lcom/amap/api/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEast:D

.field private mNorth:D

.field private mSouth:D

.field private mWest:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    return-void
.end method


# virtual methods
.method public final build()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 14

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LatLngBounds"

    const-string v0, "no included points"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    iput-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    :cond_1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    iput-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    :cond_2
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v9, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    iget-wide v11, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-direct {v0, v7, v1}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    return-object v0
.end method

.method public final include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;
    .locals 8

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    cmpg-double p1, v2, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gtz p1, :cond_2

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_4

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_4

    goto :goto_0

    :cond_2
    cmpg-double p1, v2, v0

    if-lez p1, :cond_3

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_4

    :cond_3
    :goto_0
    move v6, v7

    :cond_4
    if-nez v6, :cond_6

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    invoke-static {v4, v5, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_5

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    goto :goto_2

    :cond_5
    :goto_1
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    :cond_6
    :goto_2
    return-object p0
.end method
