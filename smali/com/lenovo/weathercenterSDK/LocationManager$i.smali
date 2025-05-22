.class Lcom/lenovo/weathercenterSDK/LocationManager$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/LocationManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$i;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/LocationManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/weathercenterSDK/LocationManager$i;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$i;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object p0

    invoke-interface {p0}, Lcom/lenovo/weathercenter/ILocationData;->getCurrentLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
