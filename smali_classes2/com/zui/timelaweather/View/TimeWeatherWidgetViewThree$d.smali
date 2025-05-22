.class Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;


# direct methods
.method private constructor <init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;-><init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d$a;

    invoke-direct {p1, p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d$a;-><init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

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
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V

    :cond_2
    :goto_0
    return-void
.end method
