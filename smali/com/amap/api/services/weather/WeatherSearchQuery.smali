.class public Lcom/amap/api/services/weather/WeatherSearchQuery;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final WEATHER_TYPE_FORECAST:I = 0x2

.field public static final WEATHER_TYPE_LIVE:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->b:I

    iput-object p1, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->a:Ljava/lang/String;

    iput p2, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->b:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WeatherSearchQuery"

    const-string v2, "clone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    iget-object v1, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->a:Ljava/lang/String;

    iget p0, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->b:I

    invoke-direct {v0, v1, p0}, Lcom/amap/api/services/weather/WeatherSearchQuery;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/services/weather/WeatherSearchQuery;->clone()Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object p0

    return-object p0
.end method

.method public getCity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/weather/WeatherSearchQuery;->b:I

    return p0
.end method
