.class public Lcom/amap/api/services/route/RouteSearch;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;,
        Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;,
        Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;,
        Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;,
        Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;,
        Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    }
.end annotation


# static fields
.field public static final BUS_COMFORTABLE:I = 0x4

.field public static final BUS_DEFAULT:I = 0x0

.field public static final BUS_LEASE_CHANGE:I = 0x2

.field public static final BUS_LEASE_WALK:I = 0x3

.field public static final BUS_NO_SUBWAY:I = 0x5

.field public static final BUS_SAVE_MONEY:I = 0x1

.field public static final BusComfortable:I = 0x4

.field public static final BusDefault:I = 0x0

.field public static final BusLeaseChange:I = 0x2

.field public static final BusLeaseWalk:I = 0x3

.field public static final BusNoSubway:I = 0x5

.field public static final BusSaveMoney:I = 0x1

.field public static final DRIVEING_PLAN_AVOID_CONGESTION_CHOICE_HIGHWAY:I = 0x9

.field public static final DRIVEING_PLAN_AVOID_CONGESTION_FASTEST_SAVE_MONEY:I = 0xb

.field public static final DRIVEING_PLAN_AVOID_CONGESTION_NO_HIGHWAY:I = 0x4

.field public static final DRIVEING_PLAN_AVOID_CONGESTION_SAVE_MONEY:I = 0x6

.field public static final DRIVEING_PLAN_AVOID_CONGESTION_SAVE_MONEY_NO_HIGHWAY:I = 0x7

.field public static final DRIVEING_PLAN_CHOICE_HIGHWAY:I = 0x8

.field public static final DRIVEING_PLAN_DEFAULT:I = 0x1

.field public static final DRIVEING_PLAN_FASTEST_SHORTEST:I = 0xa

.field public static final DRIVEING_PLAN_NO_HIGHWAY:I = 0x2

.field public static final DRIVEING_PLAN_SAVE_MONEY:I = 0x3

.field public static final DRIVEING_PLAN_SAVE_MONEY_NO_HIGHWAY:I = 0x5

.field public static final DRIVING_EXCLUDE_FERRY:Ljava/lang/String; = "ferry"

.field public static final DRIVING_EXCLUDE_MOTORWAY:Ljava/lang/String; = "motorway"

.field public static final DRIVING_EXCLUDE_TOLL:Ljava/lang/String; = "toll"

.field public static final DRIVING_MULTI_CHOICE_AVOID_CONGESTION:I = 0xc

.field public static final DRIVING_MULTI_CHOICE_AVOID_CONGESTION_NO_HIGHWAY:I = 0xf

.field public static final DRIVING_MULTI_CHOICE_AVOID_CONGESTION_NO_HIGHWAY_SAVE_MONEY:I = 0x12

.field public static final DRIVING_MULTI_CHOICE_AVOID_CONGESTION_SAVE_MONEY:I = 0x11

.field public static final DRIVING_MULTI_CHOICE_HIGHWAY:I = 0x13

.field public static final DRIVING_MULTI_CHOICE_HIGHWAY_AVOID_CONGESTION:I = 0x14

.field public static final DRIVING_MULTI_CHOICE_NO_HIGHWAY:I = 0xd

.field public static final DRIVING_MULTI_CHOICE_SAVE_MONEY:I = 0xe

.field public static final DRIVING_MULTI_CHOICE_SAVE_MONEY_NO_HIGHWAY:I = 0x10

.field public static final DRIVING_MULTI_STRATEGY_FASTEST_SAVE_MONEY_SHORTEST:I = 0x5

.field public static final DRIVING_MULTI_STRATEGY_FASTEST_SHORTEST:I = 0xb

.field public static final DRIVING_MULTI_STRATEGY_FASTEST_SHORTEST_AVOID_CONGESTION:I = 0xa

.field public static final DRIVING_NORMAL_CAR:I = 0x0

.field public static final DRIVING_PLUGIN_HYBRID_CAR:I = 0x2

.field public static final DRIVING_PURE_ELECTRIC_VEHICLE:I = 0x1

.field public static final DRIVING_SINGLE_AVOID_CONGESTION:I = 0x4

.field public static final DRIVING_SINGLE_DEFAULT:I = 0x0

.field public static final DRIVING_SINGLE_NO_EXPRESSWAYS:I = 0x3

.field public static final DRIVING_SINGLE_NO_HIGHWAY:I = 0x6

.field public static final DRIVING_SINGLE_NO_HIGHWAY_SAVE_MONEY:I = 0x7

.field public static final DRIVING_SINGLE_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION:I = 0x9

.field public static final DRIVING_SINGLE_SAVE_MONEY:I = 0x1

.field public static final DRIVING_SINGLE_SAVE_MONEY_AVOID_CONGESTION:I = 0x8

.field public static final DRIVING_SINGLE_SHORTEST:I = 0x2

.field public static final DrivingAvoidCongestion:I = 0x4

.field public static final DrivingDefault:I = 0x0

.field public static final DrivingMultiStrategy:I = 0x5

.field public static final DrivingNoExpressways:I = 0x3

.field public static final DrivingNoHighAvoidCongestionSaveMoney:I = 0x9

.field public static final DrivingNoHighWay:I = 0x6

.field public static final DrivingNoHighWaySaveMoney:I = 0x7

.field public static final DrivingSaveMoney:I = 0x1

.field public static final DrivingSaveMoneyAvoidCongestion:I = 0x8

.field public static final DrivingShortDistance:I = 0x2

.field public static final EXTENSIONS_ALL:Ljava/lang/String; = "all"

.field public static final EXTENSIONS_BASE:Ljava/lang/String; = "base"

.field public static final RIDING_DEFAULT:I = 0x0

.field public static final RIDING_FAST:I = 0x2

.field public static final RIDING_RECOMMEND:I = 0x1

.field public static final RidingDefault:I = 0x0

.field public static final RidingFast:I = 0x2

.field public static final RidingRecommend:I = 0x1

.field public static final TRUCK_AVOID_CONGESTION:I = 0x1

.field public static final TRUCK_AVOID_CONGESTION_CHOICE_HIGHWAY:I = 0x9

.field public static final TRUCK_AVOID_CONGESTION_NO_HIGHWAY:I = 0x4

.field public static final TRUCK_AVOID_CONGESTION__SAVE_MONEY:I = 0x6

.field public static final TRUCK_AVOID_CONGESTION__SAVE_MONEY_NO_HIGHWAY:I = 0x7

.field public static final TRUCK_CHOICE_HIGHWAY:I = 0x8

.field public static final TRUCK_NO_HIGHWAY:I = 0x2

.field public static final TRUCK_SAVE_MONEY:I = 0x3

.field public static final TRUCK_SAVE_MONEY_NO_HIGHWAY:I = 0x5

.field public static final TRUCK_SIZE_HEAVY:I = 0x4

.field public static final TRUCK_SIZE_LIGHT:I = 0x2

.field public static final TRUCK_SIZE_MEDIUM:I = 0x3

.field public static final TRUCK_SIZE_MINI:I = 0x1

.field public static final WALK_DEFAULT:I = 0x0

.field public static final WALK_MULTI_PATH:I = 0x1

.field public static final WalkDefault:I = 0x0

.field public static final WalkMultipath:I = 0x1


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IRouteSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/ii;

    invoke-direct {v0, p1}, Lcom/amap/api/col/l3s/ii;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;
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
.method public calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    :cond_0
    return-void
.end method

.method public calculateDrivePlan(Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)Lcom/amap/api/services/route/DriveRoutePlanResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateDrivePlan(Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)Lcom/amap/api/services/route/DriveRoutePlanResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateDrivePlanAsyn(Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateDrivePlanAsyn(Lcom/amap/api/services/route/RouteSearch$DrivePlanQuery;)V

    :cond_0
    return-void
.end method

.method public calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    :cond_0
    return-void
.end method

.method public calculateRideRoute(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)Lcom/amap/api/services/route/RideRouteResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateRideRoute(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)Lcom/amap/api/services/route/RideRouteResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateRideRouteAsyn(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateRideRouteAsyn(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    :cond_0
    return-void
.end method

.method public calculateTruckRoute(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)Lcom/amap/api/services/route/TruckRouteRestult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateTruckRoute(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)Lcom/amap/api/services/route/TruckRouteRestult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateTruckRouteAsyn(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateTruckRouteAsyn(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V

    :cond_0
    return-void
.end method

.method public calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    :cond_0
    return-void
.end method

.method public setOnRoutePlanSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->setOnRoutePlanSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRoutePlanSearchListener;)V

    :cond_0
    return-void
.end method

.method public setOnTruckRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->setOnTruckRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;)V

    :cond_0
    return-void
.end method

.method public setRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch;->a:Lcom/amap/api/services/interfaces/IRouteSearch;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/amap/api/services/interfaces/IRouteSearch;->setRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;)V

    :cond_0
    return-void
.end method
