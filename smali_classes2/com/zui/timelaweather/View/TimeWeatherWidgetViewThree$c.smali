.class Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->setWeekDate()V

    goto/16 :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zui/timelaweather/R$string;->zhanwei:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherCurrentData(Landroid/content/Context;)Lcom/zui/timelaweather/util/WeatherDataBean;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->e(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherStatusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->h(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeathercode()I

    move-result v1

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->isDayTime()Z

    move-result p1

    iget-object v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {v2}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->g(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherImageId2(IZZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->g(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Z

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->i(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;ZZ)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c$a;

    invoke-direct {p1, p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c$a;-><init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->m(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)I

    move-result p1

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-virtual {v1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getClockAnimationStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->q(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->m(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)I

    move-result p1

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-virtual {v1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getClockAnimationStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq p1, v0, :cond_0

    :goto_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->n(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;I)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;->a:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->o(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
