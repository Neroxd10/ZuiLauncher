.class public Lcom/lenovo/weathercenter/IWeather$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/IWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/IWeather;
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

.method public get24Hour(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method

.method public getAir(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method

.method public getAlert(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method

.method public getCondition(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method

.method public getForecast(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method

.method public getHotCitys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/HotCity;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method

.method public getWeather(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/weathercenter/IWeatherListener;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/weathercenter/IWeatherListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
    .locals 0

    return-void
.end method
