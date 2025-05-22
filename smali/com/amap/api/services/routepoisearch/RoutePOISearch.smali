.class public Lcom/amap/api/services/routepoisearch/RoutePOISearch;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;,
        Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    }
.end annotation


# static fields
.field public static final DrivingAvoidCongestion:I = 0x4

.field public static final DrivingDefault:I = 0x0

.field public static final DrivingNoExpressways:I = 0x3

.field public static final DrivingNoHighAvoidCongestionSaveMoney:I = 0x9

.field public static final DrivingNoHighWay:I = 0x6

.field public static final DrivingNoHighWaySaveMoney:I = 0x7

.field public static final DrivingSaveMoney:I = 0x1

.field public static final DrivingSaveMoneyAvoidCongestion:I = 0x8

.field public static final DrivingShortDistance:I = 0x2


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IRoutePOISearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/ih;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/l3s/ih;-><init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;
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
.method public searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public searchRoutePOIAsyn()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->searchRoutePOIAsyn()V

    :cond_0
    return-void
.end method

.method public setPoiSearchListener(Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->setRoutePOISearchListener(Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;)V

    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->setQuery(Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    :cond_0
    return-void
.end method
