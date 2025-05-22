.class Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "WeatherSDK"

    const-string v0, "weather sdk : onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 v0, 0xbbb

    invoke-static {p1, v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;I)I

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0xe

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "WeatherSDK"

    const-string v0, "weather sdk : onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 p1, 0xbb9

    invoke-static {p0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;I)I

    return-void
.end method
