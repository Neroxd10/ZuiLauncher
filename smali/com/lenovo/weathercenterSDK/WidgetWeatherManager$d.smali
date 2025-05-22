.class Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$d;
.super Landroid/content/BroadcastReceiver;
.source ""


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

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$d;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$d;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xf

    iput v0, p1, Landroid/os/Message;->what:I

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$d;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
