.class public Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->b:I

    iput v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->c:I

    iput v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->d:I

    const/16 v2, -0x111

    iput v2, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->e:I

    iput v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->f:I

    iput v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->g:I

    iput v2, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->h:I

    iput v2, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->i:I

    iput v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->j:I

    iput v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->k:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->l:Z

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHumidity()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->f:I

    return p0
.end method

.method public getMaxTemperature()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->h:I

    return p0
.end method

.method public getMinTemperature()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->i:I

    return p0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTemperature()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->e:I

    return p0
.end method

.method public getValueAQI()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->d:I

    return p0
.end method

.method public getValuePM10()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->c:I

    return p0
.end method

.method public getValuePM25()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->b:I

    return p0
.end method

.method public getWeatherID()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->g:I

    return p0
.end method

.method public getWeatherIdDay()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->j:I

    return p0
.end method

.method public getWeatherIdNight()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->k:I

    return p0
.end method

.method public getmTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->m:Ljava/lang/String;

    return-object p0
.end method

.method public isIsday()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->l:Z

    return p0
.end method

.method public setHumidity(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->f:I

    return-void
.end method

.method public setIsday(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->l:Z

    return-void
.end method

.method public setMaxTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->h:I

    return-void
.end method

.method public setMinTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->i:I

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->e:I

    return-void
.end method

.method public setValueAQI(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->d:I

    return-void
.end method

.method public setValuePM10(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->c:I

    return-void
.end method

.method public setValuePM25(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->b:I

    return-void
.end method

.method public setWeatherID(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->g:I

    return-void
.end method

.method public setWeatherIdDay(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->j:I

    return-void
.end method

.method public setWeatherIdNight(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->k:I

    return-void
.end method

.method public setmTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->m:Ljava/lang/String;

    return-void
.end method
