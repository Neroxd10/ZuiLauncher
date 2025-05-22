.class Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/lenovo/weathercenter/entity/CityDetail;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/lenovo/weathercenter/entity/Condition;

.field public e:Lcom/lenovo/weathercenter/entity/Air;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I


# direct methods
.method private constructor <init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->f:Z

    iput-boolean p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->g:Z

    iput-boolean p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->h:Z

    iput-boolean p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->i:Z

    iput-boolean p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->j:Z

    const/4 p1, 0x3

    iput p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->k:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  enterAir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  enterCondition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  enterForecast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  hasData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  serverId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  cityDetail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  condition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  air = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
