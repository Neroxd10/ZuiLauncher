.class public Lcom/lenovo/weathercenter/IWeatherListener$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/IWeatherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/IWeatherListener;
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

.method public onAirChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Air;)V
    .locals 0

    return-void
.end method

.method public onAlertChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Alert;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConditionChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Condition;)V
    .locals 0

    return-void
.end method

.method public onForecastChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onIndexChanged(ILjava/lang/String;Lcom/lenovo/weathercenter/entity/Index;)V
    .locals 0

    return-void
.end method

.method public onTwentyHoursConditionChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
