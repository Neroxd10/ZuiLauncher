.class Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->e(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;)I

    move-result p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-virtual {v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->getClockAnimationStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->e(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;)I

    move-result p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-virtual {v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->getClockAnimationStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-static {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->f(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-static {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->g(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;)V

    :cond_3
    :goto_1
    return-void
.end method
