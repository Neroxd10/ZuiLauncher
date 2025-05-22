.class Lcom/lenovo/weathercenterSDK/AppManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
.method constructor <init>(Lcom/lenovo/weathercenterSDK/AppManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager$b;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$b;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    const/16 v1, 0xbb9

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/AppManager;->a(Lcom/lenovo/weathercenterSDK/AppManager;I)I

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$b;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/AppManager;->c(Lcom/lenovo/weathercenterSDK/AppManager;)Lcom/lenovo/weathercenter/IAppWeather;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$b;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/AppManager;->c(Lcom/lenovo/weathercenterSDK/AppManager;)Lcom/lenovo/weathercenter/IAppWeather;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/AppManager$b;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/AppManager;->e(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$b;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/AppManager;->d(Lcom/lenovo/weathercenterSDK/AppManager;Lcom/lenovo/weathercenter/IAppWeather;)Lcom/lenovo/weathercenter/IAppWeather;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager$b;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->b(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
