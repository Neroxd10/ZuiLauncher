.class Lcom/lenovo/weathercenterSDK/AppManager$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/lenovo/weathercenter/entity/CityDetail;

.field public b:I

.field final synthetic c:Lcom/lenovo/weathercenterSDK/AppManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/AppManager;ILcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->c:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->a:Lcom/lenovo/weathercenter/entity/CityDetail;

    iput p2, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->c:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/AppManager;->c(Lcom/lenovo/weathercenterSDK/AppManager;)Lcom/lenovo/weathercenter/IAppWeather;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->b:I

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->c:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/AppManager;->c(Lcom/lenovo/weathercenterSDK/AppManager;)Lcom/lenovo/weathercenter/IAppWeather;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->c:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/AppManager;->h(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager$d;->a:Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-virtual {p0}, Lcom/lenovo/weathercenter/entity/CityDetail;->getServerId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/lenovo/weathercenter/IAppWeather;->delNotifyCity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
