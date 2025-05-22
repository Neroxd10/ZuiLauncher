.class public interface abstract Lcom/lenovo/weathercenter/IWeatherListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/IWeatherListener$Stub;,
        Lcom/lenovo/weathercenter/IWeatherListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onAirChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Air;)V
.end method

.method public abstract onAlertChanged(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Alert;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onConditionChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Condition;)V
.end method

.method public abstract onForecastChanged(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onIndexChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Index;)V
.end method

.method public abstract onTwentyHoursConditionChanged(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;",
            ">;)V"
        }
    .end annotation
.end method
