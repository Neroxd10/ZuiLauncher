.class public Lcom/amap/api/services/busline/BusStationSearch;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IBusStationSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/hz;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/l3s/hz;-><init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->getQuery()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->searchBusStation()Lcom/amap/api/services/busline/BusStationResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchBusStationAsyn()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->searchBusStationAsyn()V

    :cond_0
    return-void
.end method

.method public setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IBusStationSearch;->setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V

    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IBusStationSearch;->setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V

    :cond_0
    return-void
.end method
