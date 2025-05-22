.class public interface abstract Lcom/lenovo/weathercenter/IWidgetWeather;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/IWidgetWeather$Stub;,
        Lcom/lenovo/weathercenter/IWidgetWeather$Default;
    }
.end annotation


# virtual methods
.method public abstract getDefaultCityWeather(Ljava/lang/String;)V
.end method

.method public abstract register(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V
.end method

.method public abstract setDefaultCity(Ljava/lang/String;Lcom/lenovo/weathercenter/entity/CityDetail;)V
.end method

.method public abstract unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V
.end method
