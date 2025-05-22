.class Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;
.super Lcom/lenovo/weathercenter/IWeatherListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WeatherDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    return-void
.end method


# virtual methods
.method public onAirChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Air;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onAirChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Air;)V

    return-void
.end method

.method public onAlertChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Alert;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onAlertChanged(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onConditionChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Condition;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onConditionChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Condition;)V

    return-void
.end method

.method public onForecastChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onForecastChanged(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onIndexChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Index;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->onIndexChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Index;)V

    return-void
.end method

.method public onTwentyHoursConditionChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$h;->a:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;->on24HourChanged(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
