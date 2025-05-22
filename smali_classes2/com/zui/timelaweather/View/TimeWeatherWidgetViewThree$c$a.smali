.class Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c$a;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c$a;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;

    iget-object v0, v0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-virtual {v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getSinaWeatherData()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c$a;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;

    iget-object v0, v0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherCurrentData(Landroid/content/Context;)Lcom/zui/timelaweather/util/WeatherDataBean;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c$a;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    invoke-static {p0, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->l(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;I)V

    return-void
.end method
