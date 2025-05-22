.class public final Lcom/amap/api/col/l3s/dc$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Lcom/amap/api/maps/model/LatLng;

    check-cast p3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    float-to-double p0, p1

    iget-wide v2, p3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide p2, p3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr p2, v2

    mul-double/2addr p0, p2

    add-double/2addr v2, p0

    new-instance p0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object p0
.end method
