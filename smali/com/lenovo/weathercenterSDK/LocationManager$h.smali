.class Lcom/lenovo/weathercenterSDK/LocationManager$h;
.super Lcom/lenovo/weathercenter/ICitySearchListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private a:Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenter/ICitySearchListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/lenovo/weathercenterSDK/LocationManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

    return-void
.end method


# virtual methods
.method public onSearchResult(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/CityDetail;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/listener/CitySearchListener;->onSearchResult(ILjava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
