.class Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;->a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

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
    iget-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;->a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    invoke-static {p1}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)I

    move-result p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;->a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    invoke-virtual {v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getClockAnimationStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;->a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    invoke-static {p1}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)I

    move-result p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;->a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    invoke-virtual {v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getClockAnimationStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;->a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    invoke-static {p0, p1}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;->a:Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    invoke-static {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)V

    :cond_3
    :goto_1
    return-void
.end method
