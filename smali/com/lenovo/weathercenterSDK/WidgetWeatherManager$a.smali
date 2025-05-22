.class Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;
.super Lcom/lenovo/weathercenter/IWidgetWeatherListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-direct {p0}, Lcom/lenovo/weathercenter/IWidgetWeatherListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDefaultCityRemoved()V
    .locals 2

    const-string v0, "WeatherSDK"

    const-string v1, "onDefaultCityRemoved..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->b(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ce8\u518cWidget\u5929\u6c14\u76d1\u542c\u7684\u7684 size() =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->b(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V

    :cond_0
    return-void
.end method

.method public onWidgetAirChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;)V
    .locals 7

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 v1, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;IILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;Lcom/lenovo/weathercenter/entity/Condition;Ljava/util/List;)V

    return-void
.end method

.method public onWidgetConditionChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Condition;)V
    .locals 7

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 v1, 0x12

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;IILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;Lcom/lenovo/weathercenter/entity/Condition;Ljava/util/List;)V

    return-void
.end method

.method public onWidgetForecastChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/lenovo/weathercenter/entity/CityDetail;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 v1, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;IILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;Lcom/lenovo/weathercenter/entity/Condition;Ljava/util/List;)V

    return-void
.end method
