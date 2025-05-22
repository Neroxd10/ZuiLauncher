.class public Lcom/zui/launcher/globalsearch/AMapLocationUtills;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CLOSE_SERVICE:Ljava/lang/String; = "com.zui.launcher.close_service"

.field public static final LOCATION_ACTION:Ljava/lang/String; = "com.zui.launcher.location_city"

.field public static final LOCATION_CITY:Ljava/lang/String; = "location_city"

.field public static TAG:Ljava/lang/String; = "AMapLocationUtills"

.field private static d:Z = true


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Lcom/amap/api/location/AMapLocationClient;

.field private final c:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/globalsearch/AMapLocationUtills$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills$a;-><init>(Lcom/zui/launcher/globalsearch/AMapLocationUtills;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->c:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/AMapLocationUtills;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->a:Landroid/location/LocationManager;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Lcom/zui/launcher/globalsearch/a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/globalsearch/a;-><init>(Lcom/zui/launcher/globalsearch/AMapLocationUtills;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setMockEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->a:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->c:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private d(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.zui.launcher.location_city"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "location_city"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    .locals 5

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->stopLocation(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->d(Ljava/lang/String;Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " city --> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " latitude --> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " longitude --> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "location Error, ErrCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errInfo:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->printLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public recycler()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->a:Landroid/location/LocationManager;

    :cond_1
    return-void
.end method

.method public startAlarmService(Landroid/content/Context;)V
    .locals 1

    const-string p0, "startAlarmService  --- "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->printLog(Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/zui/launcher/globalsearch/AlarmService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startLocation(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_0
    return-void
.end method

.method public stopAlarmService(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->stopLocation(Landroid/content/Context;)V

    const-string p0, "stopAlarmService  sendBroadcast  close "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->printLog(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zui.launcher.close_service"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public stopLocation(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->b:Lcom/amap/api/location/AMapLocationClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    :cond_0
    return-void
.end method

.method public unRegisterGpsMonitor(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->c:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
