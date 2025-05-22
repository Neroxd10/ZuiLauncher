.class public Lcom/lenovo/weathercenterSDK/WeatherSDKUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_3

    const/16 v0, 0x63

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->unknow:I

    return p0

    :pswitch_0
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->severe_foggy:I

    return p0

    :pswitch_1
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_foggy:I

    return p0

    :pswitch_2
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->severe_haze:I

    return p0

    :pswitch_3
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_haze:I

    return p0

    :pswitch_4
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->moderate_haze:I

    return p0

    :pswitch_5
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->haze:I

    return p0

    :pswitch_6
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->dense_foggy:I

    return p0

    :pswitch_7
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->sandstorm:I

    return p0

    :pswitch_8
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->sand:I

    return p0

    :pswitch_9
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->dust:I

    return p0

    :pswitch_a
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_snow_to_snowstorm:I

    return p0

    :pswitch_b
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->moderate_to_heavy_snow:I

    return p0

    :pswitch_c
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->light_to_moderate_snow:I

    return p0

    :pswitch_d
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_to_severe_storm:I

    return p0

    :pswitch_e
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->storm_to_heavy_storm:I

    return p0

    :pswitch_f
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_rain_to_storm:I

    return p0

    :pswitch_10
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->moderate_to_heavy_rain:I

    return p0

    :pswitch_11
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->light_to_moderate_rain:I

    return p0

    :pswitch_12
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->duststorm:I

    return p0

    :pswitch_13
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->ice_rain:I

    return p0

    :pswitch_14
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->foggy:I

    return p0

    :pswitch_15
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->snow_storm:I

    return p0

    :pswitch_16
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_snow:I

    return p0

    :pswitch_17
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->moderate_snow:I

    return p0

    :pswitch_18
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->light_snow:I

    return p0

    :pswitch_19
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->snow_flurry:I

    return p0

    :pswitch_1a
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->severe_storm:I

    return p0

    :pswitch_1b
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_storm:I

    return p0

    :pswitch_1c
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->storm:I

    return p0

    :pswitch_1d
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->heavy_rain:I

    return p0

    :pswitch_1e
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->moderate_rain:I

    return p0

    :pswitch_1f
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->light_rain:I

    return p0

    :pswitch_20
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->sleet:I

    return p0

    :pswitch_21
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->thundershower_with_hail:I

    return p0

    :pswitch_22
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->thundershower:I

    return p0

    :pswitch_23
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->shower:I

    return p0

    :pswitch_24
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->overcast:I

    return p0

    :pswitch_25
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->cloudy:I

    return p0

    :pswitch_26
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->sunny:I

    return p0

    :cond_0
    :pswitch_27
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->snow:I

    return p0

    :cond_1
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->rain:I

    return p0

    :cond_2
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->unknow:I

    return p0

    :cond_3
    sget p0, Lcom/lenovo/weathercenterSDK/R$string;->moderate_foggy:I

    return p0

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

.method public static getWeatherIconRes(IZ)I
    .locals 1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_7

    const/16 v0, 0x63

    if-eq p0, v0, :cond_6

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_5

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_nodata:I

    return p0

    :pswitch_0
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_haze:I

    return p0

    :pswitch_1
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_shachebao:I

    return p0

    :pswitch_2
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_yangsha:I

    return p0

    :pswitch_3
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_fuchen:I

    return p0

    :pswitch_4
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_shachebao:I

    return p0

    :pswitch_5
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_rain_ice:I

    return p0

    :pswitch_6
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_snow_storm:I

    return p0

    :pswitch_7
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_heavy_snow:I

    return p0

    :pswitch_8
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_light_snow:I

    return p0

    :pswitch_9
    if-eqz p1, :cond_0

    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_snow_flurry:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_snow_flurry_night:I

    :goto_0
    return p0

    :pswitch_a
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_storm:I

    return p0

    :pswitch_b
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_big_rain:I

    return p0

    :pswitch_c
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_middle_rain:I

    return p0

    :pswitch_d
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_rain_snow:I

    return p0

    :pswitch_e
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_rain_ice:I

    return p0

    :pswitch_f
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_thunder_rain:I

    return p0

    :pswitch_10
    if-eqz p1, :cond_1

    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_shower:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_yejian_zhenyu:I

    :goto_1
    return p0

    :pswitch_11
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_overcast:I

    return p0

    :pswitch_12
    if-eqz p1, :cond_2

    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_cloud:I

    goto :goto_2

    :cond_2
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_cloudy_night:I

    :goto_2
    return p0

    :pswitch_13
    if-eqz p1, :cond_3

    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_sunny:I

    goto :goto_3

    :cond_3
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_yewan_qing:I

    :goto_3
    return p0

    :cond_4
    :pswitch_14
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_moderate_snow:I

    return p0

    :cond_5
    :pswitch_15
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_small_rain:I

    return p0

    :cond_6
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_nodata:I

    return p0

    :cond_7
    :pswitch_16
    sget p0, Lcom/lenovo/weathercenterSDK/R$drawable;->x_fog:I

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

.method public static getWeatherString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/WeatherSDKUtils;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
