.class Lcom/lenovo/weathercenterSDK/LocationManager$d;
.super Landroid/os/Handler;
.source ""


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
.method constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string p0, "handleMessage msg.obj = null"

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p1}, Lcom/lenovo/weathercenter/ILocationData$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/LocationManager;->f(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenter/ILocationData;)Lcom/lenovo/weathercenter/ILocationData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onServiceConnected initial (mAIDLLocationDataStub != null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->g(Lcom/lenovo/weathercenterSDK/LocationManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->h(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationDataListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lenovo/weathercenter/ILocationData;->register(Lcom/lenovo/weathercenter/ILocationDataListener;)V

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->k(Lcom/lenovo/weathercenterSDK/LocationManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SDKUnitTranslation.ONSERVICECONNECT: Exception"

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/XLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "enter handleMessage bindService()"

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/XLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$d;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->j(Lcom/lenovo/weathercenterSDK/LocationManager;)V

    :cond_4
    :goto_1
    return-void
.end method
