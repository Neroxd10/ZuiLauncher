.class public Lcom/lenovo/weathercenterSDK/utils/SDKUnitTranslation;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ADD_LISTENER:I = 0xb

.field public static final BINDSERVICE:I = 0xd

.field public static final COUNT_OF_AUTOREQUEST_BIND:I = 0xa

.field public static final DEL_NOTIFYCITY:I = 0x5b

.field public static final GET_AIR:I = 0x0

.field public static final GET_ALERT:I = 0x1

.field public static final GET_CONDITION:I = 0x2

.field public static final GET_CURRENTLOCATION:I = 0x8

.field public static final GET_DEFUALTWEATHER:I = 0x9

.field public static final GET_FORECAST:I = 0x3

.field public static final GET_HOTCITY:I = 0x7

.field public static final GET_INDEX:I = 0x4

.field public static final GET_TWENTYHOURS:I = 0x5

.field public static final GET_WEATHER:I = 0x6

.field public static final HANDLE_DELAY_TIME:J = 0xbb8L

.field public static final INVALID_TEMPERATURE:I = -0x111

.field public static final INVALID_VALUE:I = -0x1

.field public static final LOCATION_NOT_AVAILABLE:I = 0x3ef

.field public static final NETWORK_NOT_AVAILABLE:I = 0x3ed

.field public static final NON_LOCATION_PERMISSION:I = 0x3ee

.field public static final NON_NETWORK_PERMISSION:I = 0x3ec

.field public static final NUMBER_OF_REQUEST:I = 0x3

.field public static final NUMBER_OF_THREADS:I = 0x5

.field public static final ONSCREENBROADCAST:I = 0xf

.field public static final ONSERVICECONNECT:I = 0xe

.field public static final ON_WIDGETAIR_CAHNGE:I = 0x11

.field public static final ON_WIDGETCONDITION_CAHNGE:I = 0x12

.field public static final ON_WIDGETFORECAST_CAHNGE:I = 0x13

.field public static final REMOVE_LISTENER:I = 0xc

.field public static final REQUEST_GET_DEFUALTWEATHER:I = 0x14

.field public static final RESULT_OK:I = 0xc8

.field public static final SEARCH_CITY:I = 0xa

.field public static final SET_DEFUILTCITY:I = 0x10

.field public static final STATE_BINDED:I = 0xbbb

.field public static final STATE_BINDING:I = 0xbba

.field public static final STATE_INIT:I = 0xbb9

.field public static final STATE_NULL:I = 0xbb8

.field public static final STATE_UNBIND:I = 0xbbc

.field public static final TRAVEL_HANDLER_BUS_ROUTE:I = 0x7d2

.field public static final TRAVEL_HANDLER_DRIVE_ROUTE:I = 0x7d3

.field public static final TRAVEL_HANDLER_ERROR:I = 0x7d1

.field public static final TRAVEL_HANDLER_RIDE_ROUTE:I = 0x7d5

.field public static final TRAVEL_HANDLER_WALK_ROUTE:I = 0x7d4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DDDDD)I
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    cmpg-double p2, p2, p0

    if-gtz p2, :cond_1

    cmpg-double p2, p0, p4

    if-gez p2, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    cmpg-double p2, p4, p0

    if-gtz p2, :cond_2

    cmpg-double p2, p0, p6

    if-gez p2, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    cmpg-double p2, p6, p0

    if-gtz p2, :cond_3

    cmpg-double p2, p0, p8

    if-gez p2, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    cmpg-double p2, p8, p0

    if-gtz p2, :cond_4

    const-wide/high16 p2, 0x4026000000000000L    # 11.0

    cmpg-double p0, p0, p2

    if-gez p0, :cond_4

    const/4 p0, 0x5

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getAQIDescriptionRes(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x32

    if-lez p0, :cond_1

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v1, 0x64

    if-le p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/16 v0, 0x96

    if-le p0, v1, :cond_3

    if-gt p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 v1, 0xc8

    if-le p0, v0, :cond_4

    if-gt p0, v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    if-le p0, v1, :cond_5

    const/16 v0, 0x12c

    if-gt p0, v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x6

    return p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "zh-hant"

    if-eqz v2, :cond_2

    const-string v1, "tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_0
    const-string v1, "hk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "zh-CN"

    goto :goto_1

    :cond_2
    const-string v2, "pt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "br"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "pt-BR"

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "pt-PT"

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static getTemperatureValue(I)Ljava/lang/String;
    .locals 0

    mul-int/lit8 p0, p0, 0x9

    div-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x20

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static indexLevelTransform(ID)I
    .locals 10

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_2

    :pswitch_1
    const-wide v2, 0x4008147ae0000000L    # 3.009999990463257

    const-wide v4, 0x40180a3d80000000L    # 6.010000228881836

    const-wide v6, 0x401e0a3d80000000L    # 7.510000228881836

    goto :goto_0

    :pswitch_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    goto :goto_1

    :pswitch_3
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    :goto_0
    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    :goto_1
    move-wide v0, p1

    invoke-static/range {v0 .. v9}, Lcom/lenovo/weathercenterSDK/utils/SDKUnitTranslation;->a(DDDDD)I

    move-result p0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static toTimeZone(I)Ljava/util/TimeZone;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-ltz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "+%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method
