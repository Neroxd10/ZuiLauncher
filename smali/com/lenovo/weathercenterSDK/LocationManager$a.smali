.class Lcom/lenovo/weathercenterSDK/LocationManager$a;
.super Lcom/lenovo/weathercenter/ILocationDataListener$Stub;
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
.method constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$a;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {p0}, Lcom/lenovo/weathercenter/ILocationDataListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentLocationChanged(ILcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$a;->a:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {p0, p1, p2}, Lcom/lenovo/weathercenterSDK/LocationManager;->a(Lcom/lenovo/weathercenterSDK/LocationManager;ILcom/lenovo/weathercenter/entity/CityDetail;)V

    return-void
.end method
