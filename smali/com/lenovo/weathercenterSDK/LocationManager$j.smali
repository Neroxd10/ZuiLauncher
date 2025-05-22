.class Lcom/lenovo/weathercenterSDK/LocationManager$j;
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
    name = "j"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

.field final synthetic c:Lcom/lenovo/weathercenterSDK/LocationManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->c:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->b:Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/LocationManager$j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/LocationManager$j;)Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->b:Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->c:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->e(Lcom/lenovo/weathercenterSDK/LocationManager;)Lcom/lenovo/weathercenter/ILocationData;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->a:Ljava/lang/String;

    new-instance v2, Lcom/lenovo/weathercenterSDK/LocationManager$h;

    iget-object v3, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->c:Lcom/lenovo/weathercenterSDK/LocationManager;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$j;->b:Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

    invoke-direct {v2, v3, p0}, Lcom/lenovo/weathercenterSDK/LocationManager$h;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V

    invoke-interface {v0, v1, v2}, Lcom/lenovo/weathercenter/ILocationData;->searchCity(Ljava/lang/String;Lcom/lenovo/weathercenter/ICitySearchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
