.class Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/WeatherDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

.field private c:I

.field final synthetic d:Lcom/lenovo/weathercenterSDK/WeatherDataManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->d:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->b:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    iput p2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->c:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->c:I

    return p0
.end method

.method static synthetic c(Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;)Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->b:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->d:Lcom/lenovo/weathercenterSDK/WeatherDataManager;

    iget v1, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->c:I

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WeatherDataManager$g;->b:Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;

    invoke-static {v0, v1, v2, p0}, Lcom/lenovo/weathercenterSDK/WeatherDataManager;->b(Lcom/lenovo/weathercenterSDK/WeatherDataManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/listener/WeatherDataListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
