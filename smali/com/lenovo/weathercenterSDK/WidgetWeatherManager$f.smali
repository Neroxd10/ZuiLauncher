.class Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/lenovo/weathercenter/entity/CityDetail;

.field public b:I

.field final synthetic c:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->c:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->a:Lcom/lenovo/weathercenter/entity/CityDetail;

    iput p2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->c:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeather;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->b:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->c:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeather;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->c:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->p(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->a:Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-interface {v0, v1, p0}, Lcom/lenovo/weathercenter/IWidgetWeather;->setDefaultCity(Ljava/lang/String;Lcom/lenovo/weathercenter/entity/CityDetail;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->c:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeather;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->c:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->p(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/lenovo/weathercenter/IWidgetWeather;->getDefaultCityWeather(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
