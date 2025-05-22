.class Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->k:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->k:I

    iput-boolean v1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->h:Z

    iput-boolean v1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->g:Z

    iput-boolean v1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->f:Z

    iput-boolean v1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->j:Z

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v2, v3, p1, v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V

    :cond_1
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p1, v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Z)Z

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-virtual {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getDefaultWeather()V

    goto/16 :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 v0, 0x13

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 v0, 0x12

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 v0, 0x11

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->f(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILandroid/os/Message;)V

    goto :goto_1

    :pswitch_5
    const-string v0, "onScreenBroadcast: 15"

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_2

    return-void

    :cond_2
    check-cast p1, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p1}, Lcom/lenovo/weathercenter/IWidgetWeather$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWidgetWeather;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->n(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Lcom/lenovo/weathercenter/IWidgetWeather;)Lcom/lenovo/weathercenter/IWidgetWeather;

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->o(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeather;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeather;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->p(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->q(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeatherListener;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/weathercenter/IWidgetWeather;->register(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->e(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_7
    const-string p1, ">>>>>>> bindService() <<<<<<<<"

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/XLog;->w(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->c(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
