.class public Lcom/lenovo/weathercenter/IWidgetWeatherListener$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/IWidgetWeatherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/IWidgetWeatherListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDefaultCityRemoved()V
    .locals 0

    return-void
.end method

.method public onWidgetAirChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;)V
    .locals 0

    return-void
.end method

.method public onWidgetConditionChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Condition;)V
    .locals 0

    return-void
.end method

.method public onWidgetForecastChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/lenovo/weathercenter/entity/CityDetail;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
