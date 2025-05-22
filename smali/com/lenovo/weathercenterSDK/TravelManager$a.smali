.class Lcom/lenovo/weathercenterSDK/TravelManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/TravelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/TravelManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/TravelManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager$a;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$a;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    const/16 v1, 0xbb9

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/TravelManager;->d(Lcom/lenovo/weathercenterSDK/TravelManager;I)I

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$a;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/TravelManager;->a(Lcom/lenovo/weathercenterSDK/TravelManager;)Lcom/lenovo/weathercenter/ITravelData;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$a;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/TravelManager;->a(Lcom/lenovo/weathercenterSDK/TravelManager;)Lcom/lenovo/weathercenter/ITravelData;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/TravelManager$a;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/TravelManager;->e(Lcom/lenovo/weathercenterSDK/TravelManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$a;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/TravelManager;->b(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenter/ITravelData;)Lcom/lenovo/weathercenter/ITravelData;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$a;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->f(Lcom/lenovo/weathercenterSDK/TravelManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
