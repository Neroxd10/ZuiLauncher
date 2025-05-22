.class Lcom/lenovo/weathercenterSDK/LocationManager$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenterSDK/LocationManager$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/weathercenterSDK/LocationManager;->getCurrentLocation(Lcom/lenovo/weathercenterSDK/listener/LocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/listener/LocationListener;

.field final synthetic b:Lcom/lenovo/weathercenterSDK/LocationManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/listener/LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$e;->b:Lcom/lenovo/weathercenterSDK/LocationManager;

    iput-object p2, p0, Lcom/lenovo/weathercenterSDK/LocationManager$e;->a:Lcom/lenovo/weathercenterSDK/listener/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$e;->b:Lcom/lenovo/weathercenterSDK/LocationManager;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/LocationManager$e;->a:Lcom/lenovo/weathercenterSDK/listener/LocationListener;

    invoke-static {p1, v1, v2}, Lcom/lenovo/weathercenterSDK/LocationManager;->l(Lcom/lenovo/weathercenterSDK/LocationManager;ILcom/lenovo/weathercenterSDK/listener/LocationListener;)V

    new-instance p1, Lcom/lenovo/weathercenterSDK/LocationManager$i;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$e;->b:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {p1, v1, v0}, Lcom/lenovo/weathercenterSDK/LocationManager$i;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/LocationManager$a;)V

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$e;->b:Lcom/lenovo/weathercenterSDK/LocationManager;

    const/16 v1, 0x8

    invoke-static {p0, v1, p1, v0, v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->c(Lcom/lenovo/weathercenterSDK/LocationManager;ILjava/lang/Runnable;Ljava/lang/String;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$e;->a:Lcom/lenovo/weathercenterSDK/listener/LocationListener;

    invoke-interface {p0, p1, v0}, Lcom/lenovo/weathercenterSDK/listener/LocationListener;->onLocationResult(ILcom/lenovo/weathercenter/entity/CityDetail;)V

    :goto_0
    return-void
.end method
