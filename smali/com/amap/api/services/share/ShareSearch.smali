.class public Lcom/amap/api/services/share/ShareSearch;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;,
        Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;,
        Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;,
        Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;,
        Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;,
        Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;
    }
.end annotation


# static fields
.field public static final BusComfortable:I = 0x4

.field public static final BusDefault:I = 0x0

.field public static final BusLeaseChange:I = 0x2

.field public static final BusLeaseWalk:I = 0x3

.field public static final BusNoSubway:I = 0x5

.field public static final BusSaveMoney:I = 0x1

.field public static final DrivingAvoidCongestion:I = 0x4

.field public static final DrivingDefault:I = 0x0

.field public static final DrivingNoHighWay:I = 0x3

.field public static final DrivingNoHighWayAvoidCongestion:I = 0x6

.field public static final DrivingNoHighWaySaveMoney:I = 0x5

.field public static final DrivingNoHighWaySaveMoneyAvoidCongestion:I = 0x8

.field public static final DrivingSaveMoney:I = 0x1

.field public static final DrivingSaveMoneyAvoidCongestion:I = 0x7

.field public static final DrivingShortDistance:I = 0x2

.field public static final NaviAvoidCongestion:I = 0x4

.field public static final NaviDefault:I = 0x0

.field public static final NaviNoHighWay:I = 0x3

.field public static final NaviNoHighWayAvoidCongestion:I = 0x6

.field public static final NaviNoHighWaySaveMoney:I = 0x5

.field public static final NaviNoHighWaySaveMoneyAvoidCongestion:I = 0x8

.field public static final NaviSaveMoney:I = 0x1

.field public static final NaviSaveMoneyAvoidCongestion:I = 0x7

.field public static final NaviShortDistance:I = 0x2


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IShareSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/ij;

    invoke-direct {v0, p1}, Lcom/amap/api/col/l3s/ij;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;
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
.method public searchBusRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchBusRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchBusRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchBusRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V

    :cond_0
    return-void
.end method

.method public searchDrivingRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchDrivingRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchDrivingRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchDrivingRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)V

    :cond_0
    return-void
.end method

.method public searchLocationShareUrl(Lcom/amap/api/services/core/LatLonSharePoint;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchLocationShareUrl(Lcom/amap/api/services/core/LatLonSharePoint;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchLocationShareUrlAsyn(Lcom/amap/api/services/core/LatLonSharePoint;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchLocationShareUrlAsyn(Lcom/amap/api/services/core/LatLonSharePoint;)V

    :cond_0
    return-void
.end method

.method public searchNaviShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchNaviShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchNaviShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchNaviShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)V

    :cond_0
    return-void
.end method

.method public searchPoiShareUrl(Lcom/amap/api/services/core/PoiItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchPoiShareUrl(Lcom/amap/api/services/core/PoiItem;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchPoiShareUrlAsyn(Lcom/amap/api/services/core/PoiItem;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchPoiShareUrlAsyn(Lcom/amap/api/services/core/PoiItem;)V

    :cond_0
    return-void
.end method

.method public searchWalkRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchWalkRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchWalkRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchWalkRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)V

    :cond_0
    return-void
.end method

.method public setOnShareSearchListener(Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->setOnShareSearchListener(Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;)V

    :cond_0
    return-void
.end method
