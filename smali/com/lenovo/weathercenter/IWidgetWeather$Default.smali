.class public Lcom/lenovo/weathercenter/IWidgetWeather$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/IWidgetWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/IWidgetWeather;
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

.method public getDefaultCityWeather(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public register(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V
    .locals 0

    return-void
.end method

.method public setDefaultCity(Ljava/lang/String;Lcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 0

    return-void
.end method

.method public unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V
    .locals 0

    return-void
.end method
