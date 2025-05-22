.class public Lcom/zui/timelaweather/util/WeatherWidgetUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_WEATHER_WIDGET_CLICK:Ljava/lang/String; = "com.zui.launcher.action.WEATHER_WIDGET_CLICK"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "extra_value"

.field public static final RECEIVE_WEATHER_INFO_PERMISSION:Ljava/lang/String; = "com.zui.launchr.permission.RECEIVE_WEATHER_INFO"

.field public static final VALUE_CLICK_CLOCK:I = 0x0

.field public static final VALUE_CLICK_WEATHER:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendClickReaperIntent(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.action.WEATHER_WIDGET_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
