.class Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WeatherDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Alert;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/lenovo/weathercenter/entity/Air;

.field public e:Lcom/lenovo/weathercenter/entity/Condition;

.field public f:Lcom/lenovo/weathercenter/entity/Index;


# direct methods
.method private constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->d:Lcom/lenovo/weathercenter/entity/Air;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->e:Lcom/lenovo/weathercenter/entity/Condition;

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;->f:Lcom/lenovo/weathercenter/entity/Index;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;Lcom/lenovo/weathercenterSDK/WeatherDataManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/weathercenterSDK/WeatherDataManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;)V

    return-void
.end method
