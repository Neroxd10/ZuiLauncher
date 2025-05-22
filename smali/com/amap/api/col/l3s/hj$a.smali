.class final Lcom/amap/api/col/l3s/hj$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/services/core/LatLonPoint;

.field b:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/hj$a;->a:Lcom/amap/api/services/core/LatLonPoint;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hj$a;->b:D

    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hj$a;->a:Lcom/amap/api/services/core/LatLonPoint;

    iput-wide p5, p0, Lcom/amap/api/col/l3s/hj$a;->b:D

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/amap/api/col/l3s/hj$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/hj$a;->a:Lcom/amap/api/services/core/LatLonPoint;

    check-cast p1, Lcom/amap/api/col/l3s/hj$a;

    iget-object v2, p1, Lcom/amap/api/col/l3s/hj$a;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0, v2}, Lcom/amap/api/col/l3s/gm;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)F

    move-result p0

    float-to-double v2, p0

    iget-wide p0, p1, Lcom/amap/api/col/l3s/hj$a;->b:D

    cmpg-double p0, v2, p0

    if-gtz p0, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method
