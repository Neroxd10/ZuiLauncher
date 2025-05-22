.class public Lcom/zui/timelaweather/util/SinaWeatherContentObserver;
.super Landroid/database/ContentObserver;
.source ""


# static fields
.field public static final CITYURI:Landroid/net/Uri;

.field public static KEY_AQI_VALUE:Ljava/lang/String;

.field public static KEY_CITY_HIGH_TEMPERATURE_NAME:Ljava/lang/String;

.field public static KEY_CITY_LOW_TEMPERATURE_NAME:Ljava/lang/String;

.field public static KEY_CITY_NAME:Ljava/lang/String;

.field public static KEY_CITY_STATUS:Ljava/lang/String;

.field public static KEY_CITY_STATUS_CODE:Ljava/lang/String;

.field public static KEY_CITY_TEMPERATURE_NAME:Ljava/lang/String;

.field public static KEY_CITY_TRANGE_TEMPERATURE_NAME:Ljava/lang/String;

.field public static KEY_DAY_WEATHER_CODE:Ljava/lang/String;

.field public static KEY_NIGHT_WEATHER_CODE:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->c:Ljava/lang/String;

    const-string v0, "content://com.zui.weather.widgetprovider/widgetdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->CITYURI:Landroid/net/Uri;

    const-string v0, "city_name"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_NAME:Ljava/lang/String;

    const-string v0, "current_temp"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_TEMPERATURE_NAME:Ljava/lang/String;

    const-string v0, "low_temp"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_LOW_TEMPERATURE_NAME:Ljava/lang/String;

    const-string v0, "high_temp"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_HIGH_TEMPERATURE_NAME:Ljava/lang/String;

    const-string v0, "trange_temp"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_TRANGE_TEMPERATURE_NAME:Ljava/lang/String;

    const-string v0, "status"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_STATUS:Ljava/lang/String;

    const-string v0, "weather_state_code"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_STATUS_CODE:Ljava/lang/String;

    const-string v0, "aqi_value"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_AQI_VALUE:Ljava/lang/String;

    const-string v0, "day_weather_code"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_DAY_WEATHER_CODE:Ljava/lang/String;

    const-string v0, "night_weather_code"

    sput-object v0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_NIGHT_WEATHER_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->b:Landroid/os/Handler;

    return-void
.end method

.method public static getDefaultCityWeatherInfos(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\u00b0C"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    sget-object v3, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->CITYURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_NAME:Ljava/lang/String;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_TEMPERATURE_NAME:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v5, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_LOW_TEMPERATURE_NAME:Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v6, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_HIGH_TEMPERATURE_NAME:Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sget-object v7, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lowTemperature = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "highTemperature = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_STATUS_CODE:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_AQI_VALUE:Ljava/lang/String;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {p0, v9, v9}, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->getWeatherTypeByCode(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {p0, v9, v10}, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->getWeatherTypeByCode(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    :cond_1
    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_NAME:Ljava/lang/String;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_TEMPERATURE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_TRANGE_TEMPERATURE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------aqiValueNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_LOW_TEMPERATURE_NAME:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_HIGH_TEMPERATURE_NAME:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_STATUS:Ljava/lang/String;

    invoke-virtual {v3, p0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_CITY_STATUS_CODE:Ljava/lang/String;

    invoke-virtual {v3, p0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->KEY_AQI_VALUE:Ljava/lang/String;

    invoke-virtual {v3, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v3, v1

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v3, v1

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v3

    :cond_4
    :goto_3
    return-object v1

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method public static getWeatherTypeByCode(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherStringRes(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeatherTypeByCode(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherStringRes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherStringRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->b:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->a:Landroid/content/Context;

    if-nez p0, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public onfinish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->b:Landroid/os/Handler;

    iput-object v0, p0, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->a:Landroid/content/Context;

    return-void
.end method
