.class Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WeatherDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/lenovo/weathercenterSDK/listener/HotcityListener;

.field final synthetic b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/HotcityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;->a:Lcom/lenovo/weathercenterSDK/listener/HotcityListener;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;)Lcom/lenovo/weathercenterSDK/listener/HotcityListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;->a:Lcom/lenovo/weathercenterSDK/listener/HotcityListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->d(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)Lcom/lenovo/weathercenter/IWeather;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/weathercenter/IWeather;->getHotCitys()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$f;->a:Lcom/lenovo/weathercenterSDK/listener/HotcityListener;

    invoke-interface {p0, v0}, Lcom/lenovo/weathercenterSDK/listener/HotcityListener;->onHotcityResult(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
