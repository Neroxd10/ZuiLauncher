.class public Lcom/amap/api/maps/AMapUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/AMapUtils$a;
    }
.end annotation


# static fields
.field private static final AMAPNAVIURL:Ljava/lang/String; = "androidamap://navi?sourceApplication=%s&lat=%f&lon=%f&dev=0&style=%d"

.field private static final AMAPPOISEARCHURL:Ljava/lang/String; = "androidamap://arroundpoi?sourceApplication=%s&keywords=%s&dev=0"

.field private static final AMAPROUTEURL:Ljava/lang/String; = "androidamap://route?sourceApplication=%s&slat=%f&slon=%f&sname=%s&dlat=%f&dlon=%f&dname=%s&dev=0&t=%d"

.field public static final BUS_COMFORT:I = 0x4

.field public static final BUS_MONEY_LITTLE:I = 0x1

.field public static final BUS_NO_SUBWAY:I = 0x5

.field public static final BUS_TIME_FIRST:I = 0x0

.field public static final BUS_TRANSFER_LITTLE:I = 0x2

.field public static final BUS_WALK_LITTLE:I = 0x3

.field private static final DEG_TO_RAD:D = 0.017453292519943295

.field private static final DRING_ROUTE_MODEL:I = 0x2

.field public static final DRIVING_AVOID_CONGESTION:I = 0x4

.field public static final DRIVING_DEFAULT:I = 0x0

.field public static final DRIVING_NO_HIGHWAY:I = 0x3

.field public static final DRIVING_NO_HIGHWAY_AVOID_CONGESTION:I = 0x6

.field public static final DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY:I = 0x5

.field public static final DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION:I = 0x8

.field public static final DRIVING_SAVE_MONEY:I = 0x1

.field public static final DRIVING_SAVE_MONEY_AVOID_CONGESTION:I = 0x7

.field public static final DRIVING_SHORT_DISTANCE:I = 0x2

.field private static final EARTHRADIUS:D = 6378137.0

.field private static final NF_PI:D = 0.01745329251994329

.field private static final R:D = 6378137.0

.field private static final TRANSIT_ROUTE_MODEL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V
    .locals 3

    invoke-static {p1}, Lcom/amap/api/maps/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1, p2}, Lcom/amap/api/maps/AMapUtils;->b(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "com.autonavi.minimap"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/amap/api/maps/AMapUtils$a;

    const-string p2, "oan"

    invoke-direct {p0, p2, p1}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u975e\u6cd5\u53c2\u6570"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/amap/api/maps/AMapException;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.autonavi.minimap"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static a(Lcom/amap/api/maps/model/RoutePara;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/amap/api/col/l3s/iu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v1, v4

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v4, 0x4

    aput-object p1, v1, v4

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v4, 0x5

    aput-object p1, v1, v4

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x6

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x7

    aput-object p1, v1, v4

    const-string p1, "androidamap://route?sourceApplication=%s&slat=%f&slon=%f&sname=%s&dlat=%f&dlon=%f&dname=%s&dev=0&t=%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&m="

    if-ne p2, v2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getTransitRouteStyle()I

    move-result p0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-ne p2, v3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/RoutePara;->getDrivingRouteStyle()I

    move-result p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static calculateArea(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-wide v1, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-wide v7, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v7, v3

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide p0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-double/2addr v3, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    div-double/2addr v3, p0

    const-wide/16 p0, 0x0

    cmpg-double p0, v3, p0

    if-gez p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, p0

    :cond_0
    const-wide p0, 0x42ed0f0dce469631L    # 2.5560394669790553E14

    mul-double/2addr v1, p0

    mul-double/2addr v1, v3

    double-to-float p0, v1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    :cond_1
    :try_start_1
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u975e\u6cd5\u5750\u6807\u503c"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/amap/api/maps/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static calculateArea(Ljava/util/List;)F
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz v0, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/model/LatLng;

    add-int/lit8 v4, v4, 0x1

    rem-int v6, v4, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide v9, 0x40fb2d77da4a0c31L    # 111319.49079327357

    mul-double/2addr v7, v9

    iget-wide v11, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v13, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v7, v11

    iget-wide v11, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v11, v9

    iget-wide v13, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    mul-double/2addr v13, v9

    iget-wide v9, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v9, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v13, v9

    iget-wide v5, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v9, 0x40fb2d77da4a0c31L    # 111319.49079327357

    mul-double/2addr v5, v9

    mul-double/2addr v7, v5

    mul-double/2addr v13, v11

    sub-double/2addr v7, v13

    add-double/2addr v1, v7

    goto :goto_0

    :cond_1
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    double-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v0, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v9, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v3, v9

    mul-double/2addr v5, v9

    mul-double/2addr v7, v9

    mul-double/2addr v0, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/4 v2, 0x3

    move-wide/from16 p0, v15

    new-array v15, v2, [D

    new-array v2, v2, [D

    mul-double/2addr v3, v5

    const/16 v16, 0x0

    aput-wide v3, v15, v16

    mul-double/2addr v5, v9

    const/4 v3, 0x1

    aput-wide v5, v15, v3

    const/4 v4, 0x2

    aput-wide v11, v15, v4

    mul-double/2addr v7, v0

    aput-wide v7, v2, v16

    mul-double/2addr v0, v13

    aput-wide v0, v2, v3

    aput-wide p0, v2, v4

    aget-wide v0, v15, v16

    aget-wide v5, v2, v16

    sub-double/2addr v0, v5

    aget-wide v5, v15, v16

    aget-wide v7, v2, v16

    sub-double/2addr v5, v7

    mul-double/2addr v0, v5

    aget-wide v5, v15, v3

    aget-wide v7, v2, v3

    sub-double/2addr v5, v7

    aget-wide v7, v15, v3

    aget-wide v9, v2, v3

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    aget-wide v5, v15, v4

    aget-wide v7, v2, v4

    sub-double/2addr v5, v7

    aget-wide v7, v15, v4

    aget-wide v2, v2, v4

    sub-double/2addr v7, v2

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u975e\u6cd5\u5750\u6807\u503c"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/amap/api/maps/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLatestAMapApp(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "http://wap.amap.com/"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Lcom/amap/api/maps/AMapUtils$a;

    const-string v2, "glaa"

    invoke-direct {v0, v2, p0}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static openAMapDrivingRoute(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V

    return-void
.end method

.method public static openAMapNavi(Lcom/amap/api/maps/model/NaviPara;Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Lcom/amap/api/maps/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "androidamap://navi?sourceApplication=%s&lat=%f&lon=%f&dev=0&style=%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/amap/api/col/l3s/iu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NaviPara;->getNaviStyle()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "com.autonavi.minimap"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/amap/api/maps/AMapUtils$a;

    const-string v2, "oan"

    invoke-direct {p0, v2, p1}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u975e\u6cd5\u53c2\u6570"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/amap/api/maps/AMapException;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openAMapPoiNearbySearch(Lcom/amap/api/maps/model/PoiPara;Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/amap/api/maps/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "androidamap://arroundpoi?sourceApplication=%s&keywords=%s&dev=0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/amap/api/col/l3s/iu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&lat="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&lon="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PoiPara;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object p0

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "com.autonavi.minimap"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/amap/api/maps/AMapUtils$a;

    const-string v2, "oan"

    invoke-direct {p0, v2, p1}, Lcom/amap/api/maps/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u975e\u6cd5\u53c2\u6570"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/amap/api/maps/AMapException;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openAMapTransitRoute(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V

    return-void
.end method

.method public static openAMapWalkingRoute(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps/AMapUtils;->a(Lcom/amap/api/maps/model/RoutePara;Landroid/content/Context;I)V

    return-void
.end method
