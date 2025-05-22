.class public Lcom/zui/timelaweather/util/WeatherDataBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->g:Z

    invoke-virtual {p0, p3}, Lcom/zui/timelaweather/util/WeatherDataBean;->setCityName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherStatusText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherTemperature(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeathercode(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->g:Z

    invoke-virtual {p0, p4}, Lcom/zui/timelaweather/util/WeatherDataBean;->setCityName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherStatusText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherTemperature(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherTrangeTemperature(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeathercode(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->g:Z

    invoke-virtual {p0, p4}, Lcom/zui/timelaweather/util/WeatherDataBean;->setCityName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherStatusText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherTemperature(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherTrangeTemperature(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeathercode(I)V

    invoke-virtual {p0, p6}, Lcom/zui/timelaweather/util/WeatherDataBean;->setAqiValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->g:Z

    invoke-virtual {p0, p4}, Lcom/zui/timelaweather/util/WeatherDataBean;->setCityName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherStatusText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherTemperature(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeatherTrangeTemperature(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/zui/timelaweather/util/WeatherDataBean;->setWeathercode(I)V

    invoke-virtual {p0, p6}, Lcom/zui/timelaweather/util/WeatherDataBean;->setAqiValue(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/zui/timelaweather/util/WeatherDataBean;->setDayTime(Z)V

    return-void
.end method


# virtual methods
.method public getAqiValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherStatusText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherTemperature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherTrangeTemperature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getWeathercode()I
    .locals 0

    iget p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    return p0
.end method

.method public isDayTime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->g:Z

    return p0
.end method

.method public setAqiValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    return-void
.end method

.method public setDayTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->g:Z

    return-void
.end method

.method public setWeatherStatusText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    return-void
.end method

.method public setWeatherTemperature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    return-void
.end method

.method public setWeatherTrangeTemperature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    return-void
.end method

.method public setWeathercode(I)V
    .locals 0

    iput p1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherDataBean{weatherStatusText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", weatherTemperature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", weatherTrangeTemperature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", maqiValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", weathercode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/timelaweather/util/WeatherDataBean;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
