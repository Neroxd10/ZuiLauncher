.class public Lcom/zui/timelaweather/util/WeatherInfoUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/timelaweather/util/WeatherInfoUtil$WeatherType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/utils/SDKUnitTranslation;->getAQIDescriptionRes(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------transferAqiLevel--------aqi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "....level: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Launcher"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    sget p1, Lcom/zui/timelaweather/R$string;->aqi_value_hazardous:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/zui/timelaweather/R$string;->aqi_value_very_unhealthy:I

    goto :goto_0

    :pswitch_2
    sget p1, Lcom/zui/timelaweather/R$string;->aqi_value_unhealthy:I

    goto :goto_0

    :pswitch_3
    sget p1, Lcom/zui/timelaweather/R$string;->aqi_value_usg:I

    goto :goto_0

    :pswitch_4
    sget p1, Lcom/zui/timelaweather/R$string;->aqi_value_moderate:I

    goto :goto_0

    :pswitch_5
    sget p1, Lcom/zui/timelaweather/R$string;->aqi_value_good:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static aqiNumToValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getCurrentStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getWeatherStatusData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentTemperature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getTemperatureData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrangeTemperature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getWeatherRangeTemperatureData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeatherCurrentData(Landroid/content/Context;)Lcom/zui/timelaweather/util/WeatherDataBean;
    .locals 9

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getCityData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getWeatherStatusData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getTemperatureData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getWeatherRangeTemperatureData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->isDayTime(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getWeatherCodeData(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getAqiData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/zui/timelaweather/util/WeatherDataBean;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/timelaweather/util/WeatherDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWeatherCurrentImageId(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getWeatherCodeData(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getWeatherImageId(IZ)I
    .locals 1

    const/16 v0, 0x35

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    if-nez p1, :cond_0

    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_nodata:I

    return p0

    :cond_0
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_nodata_dark:I

    return p0

    :pswitch_0
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_snow:I

    return p0

    :pswitch_1
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_sandstorm:I

    return p0

    :pswitch_2
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_yangsha:I

    return p0

    :pswitch_3
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_floating_dust:I

    return p0

    :pswitch_4
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_heavysnow:I

    return p0

    :pswitch_5
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_snow:I

    return p0

    :pswitch_6
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_lightsnow:I

    return p0

    :pswitch_7
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rainstorm:I

    return p0

    :pswitch_8
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rainstorm:I

    return p0

    :pswitch_9
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rainstorm:I

    return p0

    :pswitch_a
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_heavyrain:I

    return p0

    :pswitch_b
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rain:I

    return p0

    :pswitch_c
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_sandstorm:I

    return p0

    :pswitch_d
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_cold_rain:I

    return p0

    :pswitch_e
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_fog:I

    return p0

    :pswitch_f
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_blizzard:I

    return p0

    :pswitch_10
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_heavysnow:I

    return p0

    :pswitch_11
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_snow:I

    return p0

    :pswitch_12
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_small_lightsnow:I

    return p0

    :pswitch_13
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_lightsnow:I

    return p0

    :pswitch_14
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rainstorm:I

    return p0

    :pswitch_15
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rainstorm:I

    return p0

    :pswitch_16
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rainstorm:I

    return p0

    :pswitch_17
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_heavyrain:I

    return p0

    :pswitch_18
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_rain:I

    return p0

    :pswitch_19
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_small_shower:I

    return p0

    :pswitch_1a
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_sleet:I

    return p0

    :pswitch_1b
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_hail:I

    return p0

    :pswitch_1c
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_thunder:I

    return p0

    :pswitch_1d
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_shower:I

    return p0

    :pswitch_1e
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_overcast:I

    return p0

    :pswitch_1f
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_cloudy:I

    return p0

    :pswitch_20
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_sun:I

    return p0

    :cond_1
    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_haze:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getWeatherImageId2(IZZ)I
    .locals 1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_7

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_6

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    if-nez p2, :cond_0

    sget p0, Lcom/zui/timelaweather/R$drawable;->icon_nodata:I

    return p0

    :cond_0
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_nodata:I

    return p0

    :pswitch_0
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_haze:I

    return p0

    :pswitch_1
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_sandstorm:I

    return p0

    :pswitch_2
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_jansa:I

    return p0

    :pswitch_3
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_dust:I

    return p0

    :pswitch_4
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_sandstorm:I

    return p0

    :pswitch_5
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_rain_ice:I

    return p0

    :pswitch_6
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_snow_storm:I

    return p0

    :pswitch_7
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_heavy_snow:I

    return p0

    :pswitch_8
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_light_snow:I

    return p0

    :pswitch_9
    if-eqz p1, :cond_1

    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_snow_flurry:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_snow_flurry_night:I

    :goto_0
    return p0

    :pswitch_a
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_storm:I

    return p0

    :pswitch_b
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_big_rain:I

    return p0

    :pswitch_c
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_middle_rain:I

    return p0

    :pswitch_d
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_rain_snow:I

    return p0

    :pswitch_e
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_rain_ice:I

    return p0

    :pswitch_f
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_thunder_rain:I

    return p0

    :pswitch_10
    if-eqz p1, :cond_2

    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_shower:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_shower_night:I

    :goto_1
    return p0

    :pswitch_11
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_overcast:I

    return p0

    :pswitch_12
    if-eqz p1, :cond_3

    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_cloud:I

    goto :goto_2

    :cond_3
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_cloudy_night:I

    :goto_2
    return p0

    :pswitch_13
    if-eqz p1, :cond_4

    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_sunny:I

    goto :goto_3

    :cond_4
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_sunny_night:I

    :goto_3
    return p0

    :cond_5
    :pswitch_14
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_moderate_snow:I

    return p0

    :cond_6
    :pswitch_15
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_small_rain:I

    return p0

    :cond_7
    :pswitch_16
    sget p0, Lcom/zui/timelaweather/R$drawable;->w_icon_fog:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_15
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_14
        :pswitch_7
        :pswitch_6
        :pswitch_16
        :pswitch_5
        :pswitch_4
        :pswitch_15
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_14
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_16
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static getWeatherStringRes(I)I
    .locals 1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget p0, Lcom/zui/timelaweather/R$string;->w_unknow:I

    return p0

    :pswitch_0
    sget p0, Lcom/zui/timelaweather/R$string;->w_severe_foggy:I

    return p0

    :pswitch_1
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_foggy:I

    return p0

    :pswitch_2
    sget p0, Lcom/zui/timelaweather/R$string;->w_severe_haze:I

    return p0

    :pswitch_3
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_haze:I

    return p0

    :pswitch_4
    sget p0, Lcom/zui/timelaweather/R$string;->w_moderate_haze:I

    return p0

    :pswitch_5
    sget p0, Lcom/zui/timelaweather/R$string;->w_haze:I

    return p0

    :pswitch_6
    sget p0, Lcom/zui/timelaweather/R$string;->w_dense_foggy:I

    return p0

    :pswitch_7
    sget p0, Lcom/zui/timelaweather/R$string;->w_sandstorm:I

    return p0

    :pswitch_8
    sget p0, Lcom/zui/timelaweather/R$string;->w_sand:I

    return p0

    :pswitch_9
    sget p0, Lcom/zui/timelaweather/R$string;->w_dust:I

    return p0

    :pswitch_a
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_snow_to_snowstorm:I

    return p0

    :pswitch_b
    sget p0, Lcom/zui/timelaweather/R$string;->w_moderate_to_heavy_snow:I

    return p0

    :pswitch_c
    sget p0, Lcom/zui/timelaweather/R$string;->w_light_to_moderate_snow:I

    return p0

    :pswitch_d
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_to_severe_storm:I

    return p0

    :pswitch_e
    sget p0, Lcom/zui/timelaweather/R$string;->w_storm_to_heavy_storm:I

    return p0

    :pswitch_f
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_rain_to_storm:I

    return p0

    :pswitch_10
    sget p0, Lcom/zui/timelaweather/R$string;->w_moderate_to_heavy_rain:I

    return p0

    :pswitch_11
    sget p0, Lcom/zui/timelaweather/R$string;->w_light_to_moderate_rain:I

    return p0

    :pswitch_12
    sget p0, Lcom/zui/timelaweather/R$string;->w_duststorm:I

    return p0

    :pswitch_13
    sget p0, Lcom/zui/timelaweather/R$string;->w_ice_rain:I

    return p0

    :pswitch_14
    sget p0, Lcom/zui/timelaweather/R$string;->w_foggy:I

    return p0

    :pswitch_15
    sget p0, Lcom/zui/timelaweather/R$string;->w_snow_storm:I

    return p0

    :pswitch_16
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_snow:I

    return p0

    :pswitch_17
    sget p0, Lcom/zui/timelaweather/R$string;->w_moderate_snow:I

    return p0

    :pswitch_18
    sget p0, Lcom/zui/timelaweather/R$string;->w_light_snow:I

    return p0

    :pswitch_19
    sget p0, Lcom/zui/timelaweather/R$string;->w_snow_flurry:I

    return p0

    :pswitch_1a
    sget p0, Lcom/zui/timelaweather/R$string;->w_severe_storm:I

    return p0

    :pswitch_1b
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_storm:I

    return p0

    :pswitch_1c
    sget p0, Lcom/zui/timelaweather/R$string;->w_storm:I

    return p0

    :pswitch_1d
    sget p0, Lcom/zui/timelaweather/R$string;->w_heavy_rain:I

    return p0

    :pswitch_1e
    sget p0, Lcom/zui/timelaweather/R$string;->w_moderate_rain:I

    return p0

    :pswitch_1f
    sget p0, Lcom/zui/timelaweather/R$string;->w_light_rain:I

    return p0

    :pswitch_20
    sget p0, Lcom/zui/timelaweather/R$string;->w_sleet:I

    return p0

    :pswitch_21
    sget p0, Lcom/zui/timelaweather/R$string;->w_thundershower_with_hail:I

    return p0

    :pswitch_22
    sget p0, Lcom/zui/timelaweather/R$string;->w_thundershower:I

    return p0

    :pswitch_23
    sget p0, Lcom/zui/timelaweather/R$string;->w_shower:I

    return p0

    :pswitch_24
    sget p0, Lcom/zui/timelaweather/R$string;->w_overcast:I

    return p0

    :pswitch_25
    sget p0, Lcom/zui/timelaweather/R$string;->w_cloudy:I

    return p0

    :pswitch_26
    sget p0, Lcom/zui/timelaweather/R$string;->sunny:I

    return p0

    :cond_0
    :pswitch_27
    sget p0, Lcom/zui/timelaweather/R$string;->w_snow:I

    return p0

    :cond_1
    sget p0, Lcom/zui/timelaweather/R$string;->w_rain:I

    return p0

    :cond_2
    sget p0, Lcom/zui/timelaweather/R$string;->w_moderate_foggy:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_27
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isCurrentDayTime(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->isDayTime(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static setWeatherCurrentData(Lcom/zui/timelaweather/util/WeatherDataBean;Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    if-nez p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/util/SpUtills;->clearWeatherData(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/util/WeatherDataBean;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveCityData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherStatusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveWeatherStatusData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveTemperatureData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherTrangeTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveWeatherRangeTemperatureData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeathercode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveWeatherCodeData(Landroid/content/Context;I)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/WeatherDataBean;->getAqiValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/timelaweather/util/SpUtills;->saveAqiData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/WeatherDataBean;->isDayTime()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/SpUtills;->saveDayTime(Landroid/content/Context;Z)Lcom/zui/timelaweather/util/SpUtills;

    return-void
.end method
