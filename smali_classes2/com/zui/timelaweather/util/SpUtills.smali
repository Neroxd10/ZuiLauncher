.class public Lcom/zui/timelaweather/util/SpUtills;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BATTERY_CHARGE_RATE_NORMAL:I = 0x1

.field public static final BATTERY_MULTI_CHARGING_1ST:I = 0x1

.field public static final BATTERY_MULTI_CHARGING_2ND:I = 0x2

.field public static final BATTERY_MULTI_CHARGING_ALL:I = 0x3

.field public static final BATTERY_MULTI_CHARGING_NONE:I = 0x0

.field public static final CHARGE_RATE_TURBO:I = 0x3

.field public static final EXTRA_CHARGE_RATE:Ljava/lang/String; = "charge_rate"

.field public static final EXTRA_MULTI_CHARGING:Ljava/lang/String; = "multi_charging"

.field private static n:Lcom/zui/timelaweather/util/SpUtills; = null

.field private static o:Z = false


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "battery_charging_state"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->a:Ljava/lang/String;

    const-string v0, "battery_fast_charging_state"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->b:Ljava/lang/String;

    const-string v0, "battery_double_charging_state"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->c:Ljava/lang/String;

    const-string v0, "battery_double_fast_charging_state"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->d:Ljava/lang/String;

    const-string v0, "widget_hotword_pos"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->e:Ljava/lang/String;

    const-string v0, "weather_city_data_key"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->g:Ljava/lang/String;

    const-string v0, "weather_weather_status_key"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->h:Ljava/lang/String;

    const-string v0, "weather_temperature_data_key"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->i:Ljava/lang/String;

    const-string v0, "weather_range_temperature_data_key"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->j:Ljava/lang/String;

    const-string v0, "weather_weather_code_key"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->k:Ljava/lang/String;

    const-string v0, "weather_aqi_data_key"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->l:Ljava/lang/String;

    const-string v0, "weather_isdaytime_key"

    iput-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->m:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    sget-object v0, Lcom/zui/timelaweather/util/SpUtills;->n:Lcom/zui/timelaweather/util/SpUtills;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/timelaweather/util/SpUtills;

    invoke-direct {v0}, Lcom/zui/timelaweather/util/SpUtills;-><init>()V

    sput-object v0, Lcom/zui/timelaweather/util/SpUtills;->n:Lcom/zui/timelaweather/util/SpUtills;

    :cond_0
    sget-object v0, Lcom/zui/timelaweather/util/SpUtills;->n:Lcom/zui/timelaweather/util/SpUtills;

    return-object v0
.end method

.method public static getIsDebug()Z
    .locals 1

    sget-boolean v0, Lcom/zui/timelaweather/util/SpUtills;->o:Z

    return v0
.end method

.method public static saveIsDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/zui/timelaweather/util/SpUtills;->o:Z

    return-void
.end method


# virtual methods
.method public clearWeatherData(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->l:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->k:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->j:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->i:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->h:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->g:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public disConnect(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->d:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public getAqiData(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->l:Ljava/lang/String;

    const-string v0, "-1"

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChargingState(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCityData(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->g:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDoubleChargingState(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDoubleFastChargingState(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFastChargingState(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getHotWordPos(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIconState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLocationCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "cityName"

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "widget_preferences"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/util/SpUtills;->f:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getTemperatureData(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->i:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTime(J)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeatherCodeData(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->k:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getWeatherRangeTemperatureData(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->j:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeatherStatusData(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->h:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDayTime(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/timelaweather/util/SpUtills;->m:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public saveAqiData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->l:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->a:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveCityData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->g:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveDayTime(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->m:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveDoubleChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->c:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveDoubleFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveHotWordPos(Landroid/content/Context;I)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->e:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveIconState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLocationCity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "cityName"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public saveTemperatureData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->i:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveWeatherCodeData(Landroid/content/Context;I)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->k:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveWeatherRangeTemperatureData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->j:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public saveWeatherStatusData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/util/SpUtills;->h:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public verifyChargingToastText(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getChargingState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    :cond_0
    return-void
.end method

.method public verifyDoubleChargingToastText(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getDoubleChargingState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    :cond_0
    return-void
.end method

.method public verifyDoubleFastChargingToastText(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getDoubleFastChargingState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    :cond_0
    return-void
.end method

.method public verifyFastChargingToastText(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->getFastChargingState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->saveDoubleFastChargingState(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    :cond_0
    return-void
.end method
