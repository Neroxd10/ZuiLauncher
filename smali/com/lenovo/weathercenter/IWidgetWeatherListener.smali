.class public interface abstract Lcom/lenovo/weathercenter/IWidgetWeatherListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/IWidgetWeatherListener$Stub;,
        Lcom/lenovo/weathercenter/IWidgetWeatherListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDefaultCityRemoved()V
.end method

.method public abstract onWidgetAirChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;)V
.end method

.method public abstract onWidgetConditionChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Condition;)V
.end method

.method public abstract onWidgetForecastChanged(ILcom/lenovo/weathercenter/entity/CityDetail;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/lenovo/weathercenter/entity/CityDetail;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation
.end method
