.class public final Lcom/amap/api/col/l3s/ii;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/IRouteSearch;


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

.field private b:Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

.field private c:Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ii;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ii;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    return-object p0
.end method

.method private static a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ii;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/ii;)Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->b:Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/ii;)Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->c:Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;

    return-object p0
.end method


# virtual methods
.method public final calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/gg;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/gg;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/route/BusRouteResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/BusRouteResult;->setBusQuery(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateBusRoute"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ii$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ii$2;-><init>(Lcom/amap/api/col/l3s/ii;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateBusRouteAsyn"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final calculateDrivePlan(Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)Lcom/amap/api/services/route/DriveRoutePlanResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/gp;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3s/gp;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/route/DriveRoutePlanResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/DriveRoutePlanResult;->setDrivePlanQuery(Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateDrivePlan"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateDrivePlanAsyn(Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ii$6;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ii$6;-><init>(Lcom/amap/api/col/l3s/ii;Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateTruckRouteAsyn"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getPassedByPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hk;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getAvoidpolygons()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hk;->b(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/gq;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/gq;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/route/DriveRouteResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/DriveRouteResult;->setDriveQuery(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateDriveRoute"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ii$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ii$3;-><init>(Lcom/amap/api/col/l3s/ii;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateDriveRouteAsyn"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final calculateRideRoute(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)Lcom/amap/api/services/route/RideRouteResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hk;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)V

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/hm;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/hm;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/route/RideRouteResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/RideRouteResult;->setRideQuery(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculaterideRoute"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateRideRouteAsyn(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ii$4;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ii$4;-><init>(Lcom/amap/api/col/l3s/ii;Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateRideRouteAsyn"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final calculateTruckRoute(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)Lcom/amap/api/services/route/TruckRouteRestult;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->getPassedByPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/hk;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;Ljava/util/List;)V

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->getPassedByPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hk;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/hs;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/hs;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/route/TruckRouteRestult;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/TruckRouteRestult;->setTruckQuery(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateDriveRoute"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateTruckRouteAsyn(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ii$5;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ii$5;-><init>(Lcom/amap/api/col/l3s/ii;Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateTruckRouteAsyn"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hk;->b(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)V

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/ht;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii;->d:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/ht;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/route/WalkRouteResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/WalkRouteResult;->setWalkQuery(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateWalkRoute"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ii$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ii$1;-><init>(Lcom/amap/api/col/l3s/ii;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RouteSearch"

    const-string v0, "calculateWalkRouteAsyn"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setOnRoutePlanSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ii;->c:Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;

    return-void
.end method

.method public final setOnTruckRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ii;->b:Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

    return-void
.end method

.method public final setRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ii;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    return-void
.end method
