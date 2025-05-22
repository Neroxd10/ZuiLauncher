.class Lcom/lenovo/weathercenterSDK/LocationManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/LocationManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "enter Service binderDied "

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    const/16 v1, 0xbb9

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/LocationManager;->b(Lcom/lenovo/weathercenterSDK/LocationManager;I)I

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/LocationManager;->g(Lcom/lenovo/weathercenterSDK/LocationManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/LocationManager;->h(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationDataListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/weathercenter/ILocationData;->unregister(Lcom/lenovo/weathercenter/ILocationDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "binderDied: Exception"

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/LocationManager;->f(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenter/ILocationData;)Lcom/lenovo/weathercenter/ILocationData;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$b;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->i(Lcom/lenovo/weathercenterSDK/LocationManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
