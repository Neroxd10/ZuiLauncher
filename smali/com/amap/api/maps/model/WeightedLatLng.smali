.class public Lcom/amap/api/maps/model/WeightedLatLng;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_INTENSITY:D = 1.0


# instance fields
.field public final intensity:D

.field public final latLng:Lcom/amap/api/maps/model/LatLng;

.field private mPoint:Lcom/autonavi/amap/mapcore/DPoint;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/maps/model/WeightedLatLng;-><init>(Lcom/amap/api/maps/model/LatLng;D)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/WeightedLatLng;->mPoint:Lcom/autonavi/amap/mapcore/DPoint;

    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-ltz p1, :cond_0

    iput-wide p2, p0, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    return-void

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "latLng can not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getPoint()Lcom/autonavi/amap/mapcore/DPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/WeightedLatLng;->mPoint:Lcom/autonavi/amap/mapcore/DPoint;

    return-object p0
.end method
