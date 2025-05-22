.class public final Lcom/amap/api/col/l3s/gw;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/gw$j;,
        Lcom/amap/api/col/l3s/gw$k;,
        Lcom/amap/api/col/l3s/gw$l;,
        Lcom/amap/api/col/l3s/gw$c;,
        Lcom/amap/api/col/l3s/gw$d;,
        Lcom/amap/api/col/l3s/gw$f;,
        Lcom/amap/api/col/l3s/gw$i;,
        Lcom/amap/api/col/l3s/gw$e;,
        Lcom/amap/api/col/l3s/gw$h;,
        Lcom/amap/api/col/l3s/gw$g;,
        Lcom/amap/api/col/l3s/gw$b;,
        Lcom/amap/api/col/l3s/gw$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/col/l3s/gw;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/col/l3s/gw;
    .locals 3

    const-class v0, Lcom/amap/api/col/l3s/gw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/gw;->a:Lcom/amap/api/col/l3s/gw;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/amap/api/col/l3s/gw;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/gw;-><init>()V

    :goto_0
    sput-object v1, Lcom/amap/api/col/l3s/gw;->a:Lcom/amap/api/col/l3s/gw;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Lcom/amap/api/col/l3s/gw;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/col/l3s/gw;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_2
    :goto_2
    sget-object v1, Lcom/amap/api/col/l3s/gw;->a:Lcom/amap/api/col/l3s/gw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    :try_start_0
    iget p0, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x68

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const-string v3, "result"

    const-string v4, "errorCode"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    :try_start_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;

    if-eqz p0, :cond_24

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_24

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/DriveRoutePlanResult;

    if-eqz p0, :cond_24

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;->onDriveRoutePlanSearched(Lcom/amap/api/services/route/DriveRoutePlanResult;I)V

    goto/16 :goto_7

    :pswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

    if-eqz p0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/TruckRouteRestult;

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;->onTruckRouteSearched(Lcom/amap/api/services/route/TruckRouteRestult;I)V

    :cond_0
    return-void

    :pswitch_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;

    if-eqz p0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/DistanceResult;

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;->onDistanceSearched(Lcom/amap/api/services/route/DistanceResult;I)V

    :cond_1
    return-void

    :pswitch_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$j;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;->onRoutePoiSearched(Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;I)V

    :cond_2
    return-void

    :pswitch_5
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x515

    if-ne p0, v0, :cond_4

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$l;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherLiveSearched(Lcom/amap/api/services/weather/LocalWeatherLiveResult;I)V

    :cond_3
    return-void

    :cond_4
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x516

    if-ne p0, v0, :cond_5

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$k;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherForecastSearched(Lcom/amap/api/services/weather/LocalWeatherForecastResult;I)V

    :cond_5
    return-void

    :pswitch_6
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2bc

    if-ne p0, v0, :cond_6

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$d;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$d;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$d;->a:Lcom/amap/api/services/cloud/CloudResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudSearched(Lcom/amap/api/services/cloud/CloudResult;I)V

    return-void

    :cond_6
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2bd

    if-ne p0, v0, :cond_7

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$c;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudItemDetailSearched(Lcom/amap/api/services/cloud/CloudItemDetail;I)V

    :cond_7
    return-void

    :pswitch_7
    iget p0, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "shareurlkey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_8

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_8
    invoke-interface {v0, v1, p0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onWalkRouteShareUrlSearched(Ljava/lang/String;I)V

    return-void

    :pswitch_9
    invoke-interface {v0, v1, p0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onDrivingRouteShareUrlSearched(Ljava/lang/String;I)V

    return-void

    :pswitch_a
    invoke-interface {v0, v1, p0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onBusRouteShareUrlSearched(Ljava/lang/String;I)V

    return-void

    :pswitch_b
    invoke-interface {v0, v1, p0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onNaviShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_c
    invoke-interface {v0, v1, p0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onLocationShareUrlSearched(Ljava/lang/String;I)V

    return-void

    :pswitch_d
    invoke-interface {v0, v1, p0}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onPoiShareUrlSearched(Ljava/lang/String;I)V

    :cond_8
    :goto_0
    return-void

    :pswitch_e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoUploaded(I)V

    goto :goto_1

    :cond_a
    :goto_2
    return-void

    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$f;

    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$f;->a:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_c

    iget-object v2, p0, Lcom/amap/api/col/l3s/gw$f;->b:Lcom/amap/api/services/nearby/NearbySearchResult;

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V

    goto :goto_3

    :cond_d
    :goto_4
    return-void

    :pswitch_10
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onUserInfoCleared(I)V

    goto :goto_5

    :cond_f
    :goto_6
    return-void

    :pswitch_11
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$b;

    if-eqz p0, :cond_11

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    if-eqz v0, :cond_11

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_10

    iget-object v2, p0, Lcom/amap/api/col/l3s/gw$b;->a:Lcom/amap/api/services/busline/BusStationResult;

    :cond_10
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2, p0}, Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;->onBusStationSearched(Lcom/amap/api/services/busline/BusStationResult;I)V

    :cond_11
    return-void

    :pswitch_12
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x258

    if-ne p0, v0, :cond_13

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$h;

    if-eqz p0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V

    :cond_12
    return-void

    :cond_13
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x25a

    if-ne p0, v0, :cond_14

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$g;

    if-eqz p0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$g;->a:Lcom/amap/api/services/core/PoiItem;

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V

    :cond_14
    return-void

    :pswitch_13
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    if-eqz p0, :cond_16

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_15

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_15
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {p0, v2, p1}, Lcom/amap/api/services/help/Inputtips$InputtipsListener;->onGetInputtips(Ljava/util/List;I)V

    :cond_16
    return-void

    :pswitch_14
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/district/DistrictResult;

    invoke-interface {p0, p1}, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;->onDistrictSearched(Lcom/amap/api/services/district/DistrictResult;)V

    :cond_17
    return-void

    :pswitch_15
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$a;

    if-eqz p0, :cond_19

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    if-eqz v0, :cond_19

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_18

    iget-object v2, p0, Lcom/amap/api/col/l3s/gw$a;->a:Lcom/amap/api/services/busline/BusLineResult;

    :cond_18
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2, p0}, Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;->onBusLineSearched(Lcom/amap/api/services/busline/BusLineResult;I)V

    :cond_19
    return-void

    :pswitch_16
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_1a

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$i;

    if-eqz p0, :cond_1b

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$i;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$i;->a:Lcom/amap/api/services/geocoder/RegeocodeResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V

    return-void

    :cond_1a
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_1b

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/col/l3s/gw$e;

    if-eqz p0, :cond_1b

    iget-object v0, p0, Lcom/amap/api/col/l3s/gw$e;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/amap/api/col/l3s/gw$e;->a:Lcom/amap/api/services/geocoder/GeocodeResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, p1}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V

    :cond_1b
    return-void

    :pswitch_17
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    if-eqz p0, :cond_24

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1d

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/BusRouteResult;

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V

    :cond_1c
    return-void

    :cond_1d
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1f

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V

    :cond_1e
    return-void

    :cond_1f
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_21

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V

    :cond_20
    return-void

    :cond_21
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_23

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/RideRouteResult;

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V

    :cond_22
    return-void

    :cond_23
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_24

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/RideRouteResult;

    invoke-interface {p0, p1, v0}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_24
    :goto_7
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "MessageHandler"

    const-string v0, "handleMessage"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44c
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
