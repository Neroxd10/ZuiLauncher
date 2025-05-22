.class final Lcom/amap/api/col/l3s/ad$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ad;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

.field final synthetic b:Lcom/amap/api/col/l3s/ad;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ad;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ad$1;->b:Lcom/amap/api/col/l3s/ad;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ad$1;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ad$1;->b:Lcom/amap/api/col/l3s/ad;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ad;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ad$1;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p0

    const/16 v1, 0x32

    invoke-static {p0, v1}, Lcom/amap/api/col/l3s/ao;->a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
