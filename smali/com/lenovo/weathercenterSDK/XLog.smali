.class public final Lcom/lenovo/weathercenterSDK/XLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IS_SHOW_LOG:Z

.field public static final TAG:Ljava/lang/String; = "WeatherSDK"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/lenovo/weathercenterSDK/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/lenovo/weathercenterSDK/XLog;->IS_SHOW_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/lenovo/weathercenterSDK/XLog;->IS_SHOW_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/lenovo/weathercenterSDK/XLog;->IS_SHOW_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/lenovo/weathercenterSDK/XLog;->IS_SHOW_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/lenovo/weathercenterSDK/XLog;->IS_SHOW_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
