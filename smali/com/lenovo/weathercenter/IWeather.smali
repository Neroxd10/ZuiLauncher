.class public interface abstract Lcom/lenovo/weathercenter/IWeather;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/IWeather$Stub;,
        Lcom/lenovo/weathercenter/IWeather$Default;
    }
.end annotation


# virtual methods
.method public abstract get24Hour(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method

.method public abstract getAir(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method

.method public abstract getAlert(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method

.method public abstract getCondition(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method

.method public abstract getForecast(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method

.method public abstract getHotCitys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/HotCity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIndex(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method

.method public abstract getWeather(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method

.method public abstract register(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/weathercenter/IWeatherListener;)Ljava/lang/String;
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
.end method

.method public abstract unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V
.end method
