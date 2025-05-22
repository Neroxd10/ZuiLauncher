.class Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
.method constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/16 v1, 0xbb9

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->c(Lcom/lenovo/weathercenterSDK/WeatherDataManager;I)I

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeather;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeather;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->f(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeather;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->g(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->h(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/weathercenter/IWeather;->unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->e(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenter/IWeather;)Lcom/lenovo/weathercenter/IWeather;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$b;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->i(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
