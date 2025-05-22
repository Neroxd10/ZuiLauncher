.class public Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;


# instance fields
.field private a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;
    .locals 1

    sget-object v0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->b:Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    invoke-direct {v0}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;-><init>()V

    sput-object v0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->b:Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    :cond_0
    sget-object v0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->b:Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    :cond_0
    return-void
.end method

.method public getWidgetWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-object p0
.end method

.method public setWeatherManager(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->a:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-void
.end method
