.class public final Lcom/amap/api/col/l3s/ik;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/IWeatherSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/weather/WeatherSearchQuery;

.field private c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

.field private d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

.field private e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ik;->f:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ik;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ik;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ik;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ik;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ik;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ik;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ik;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ik;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/hv;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3s/hv;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/hw;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/LocalWeatherLive;

    invoke-static {p0, v0}, Lcom/amap/api/services/weather/LocalWeatherLiveResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherLive;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ik;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ik;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/hu;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3s/hu;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/hw;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/LocalWeatherForecast;

    invoke-static {p0, v0}, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherForecast;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object p0
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object p0
.end method

.method public final searchWeatherAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ik$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/ik$1;-><init>(Lcom/amap/api/col/l3s/ik;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ik;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ik;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-void
.end method
