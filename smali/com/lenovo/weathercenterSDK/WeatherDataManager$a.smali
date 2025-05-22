.class Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;
.super Lcom/lenovo/weathercenter/IWeatherListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WeatherDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

.field final synthetic b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V
    .locals 2

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-direct {p0}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;-><init>()V

    new-instance p1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    return-void
.end method


# virtual methods
.method public onAirChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Air;)V
    .locals 3

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    iput-object p3, v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->d:Lcom/lenovo/weathercenter/entity/Air;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iput-object p3, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->d:Lcom/lenovo/weathercenter/entity/Air;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V

    return-void
.end method

.method public onAlertChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Alert;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    iput-object p3, v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iput-object p3, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V

    return-void
.end method

.method public onConditionChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Condition;)V
    .locals 3

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    iput-object p3, v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->e:Lcom/lenovo/weathercenter/entity/Condition;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iput-object p3, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->e:Lcom/lenovo/weathercenter/entity/Condition;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 p3, 0x2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V

    return-void
.end method

.method public onForecastChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    iput-object p3, v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iput-object p3, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 p3, 0x3

    invoke-static {p0, p1, p2, v0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V

    return-void
.end method

.method public onIndexChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Index;)V
    .locals 3

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    iput-object p3, v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->f:Lcom/lenovo/weathercenter/entity/Index;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iput-object p3, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->f:Lcom/lenovo/weathercenter/entity/Index;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 p3, 0x4

    invoke-static {p0, p1, p2, v0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V

    return-void
.end method

.method public onTwentyHoursConditionChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V

    iput-object p3, v0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->a:Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;

    iput-object p3, v1, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;->b:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    const/4 p3, 0x5

    invoke-static {p0, p1, p2, v0, p3}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->a(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;I)V

    return-void
.end method
