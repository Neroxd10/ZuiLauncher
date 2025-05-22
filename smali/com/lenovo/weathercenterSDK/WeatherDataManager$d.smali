.class Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WeatherDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_1

    return-void

    :cond_1
    check-cast p1, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {p1}, Lcom/lenovo/weathercenter/IWeather$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeather;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenter/IWeather;)Lcom/lenovo/weathercenter/IWeather;

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeather;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeather;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->h(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/lenovo/weathercenter/IWeather;->register(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/weathercenter/IWeatherListener;)Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->k(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$d;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->j(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V

    :cond_3
    :goto_0
    return-void
.end method
