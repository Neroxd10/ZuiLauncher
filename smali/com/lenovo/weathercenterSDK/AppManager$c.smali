.class Lcom/lenovo/weathercenterSDK/AppManager$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/AppManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/AppManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager$c;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

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

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$c;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {p1}, Lcom/lenovo/weathercenter/IAppWeather$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IAppWeather;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/AppManager;->d(Lcom/lenovo/weathercenterSDK/AppManager;Lcom/lenovo/weathercenter/IAppWeather;)Lcom/lenovo/weathercenter/IAppWeather;

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$c;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/AppManager;->e(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager$c;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/AppManager;->c(Lcom/lenovo/weathercenterSDK/AppManager;)Lcom/lenovo/weathercenter/IAppWeather;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager$c;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->g(Lcom/lenovo/weathercenterSDK/AppManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager$c;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->f(Lcom/lenovo/weathercenterSDK/AppManager;)V

    :cond_3
    :goto_0
    return-void
.end method
