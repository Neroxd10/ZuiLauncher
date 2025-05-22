.class Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView$c;->a:Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView$c;->a:Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;

    invoke-static {p0}, Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;->g(Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherCurrentData(Landroid/content/Context;)Lcom/zui/timelaweather/util/WeatherDataBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;->setWidgetText(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView$c;->a:Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;

    invoke-static {p0}, Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;->h(Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;)V

    :cond_2
    :goto_0
    return-void
.end method
