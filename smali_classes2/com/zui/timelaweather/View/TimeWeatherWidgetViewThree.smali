.class public Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;
    }
.end annotation


# static fields
.field public static final REFRESHWEATHERDATAS:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/zui/timelaweather/View/WidgetTextView;

.field private g:Lcom/zui/timelaweather/View/WidgetTextView;

.field private h:Lcom/zui/timelaweather/View/WidgetTextView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

.field private k:Z

.field private l:Landroid/graphics/drawable/AnimationDrawable;

.field private m:J

.field private n:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

.field private o:Lcom/zui/timelaweather/View/WidgetTextView;

.field private p:Lcom/zui/timelaweather/View/WidgetTextView;

.field private q:Lcom/zui/timelaweather/View/WidgetTextView;

.field private r:Lcom/zui/timelaweather/View/WidgetTextView;

.field private s:Landroid/os/Handler;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "TimeWeatherWidgetViewThree"

    iput-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->a:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->g:Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->h:Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->i:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->l:Landroid/graphics/drawable/AnimationDrawable;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->m:J

    new-instance v0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$c;-><init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    iput-object p3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->t:Landroid/content/BroadcastReceiver;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u:Z

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->v:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-static {}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getInstance()Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getWidgetWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->n:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-void
.end method

.method private A()V
    .locals 4

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private B(ZZ)V
    .locals 4

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getCityColor()I

    move-result p1

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getEmptyColor()V

    iget-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    invoke-static {}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->getInstance()Lcom/zui/timelaweather/util/LunarChinaCalendar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->setCurrentCalendarTime()Lcom/zui/timelaweather/util/LunarChinaCalendar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->getFullDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullDate --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " country --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mChineseCalendarView --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p:Lcom/zui/timelaweather/View/WidgetTextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p:Lcom/zui/timelaweather/View/WidgetTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-boolean p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_4
    iget-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->g:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_5
    iget-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->h:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_6
    iget-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->q:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_7
    iget-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_8
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherCurrentImageId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->isCurrentDayTime(Landroid/content/Context;)Z

    move-result p2

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->i:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    invoke-static {p1, p2, p0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherImageId2(IZZ)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_9
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/zui/timelaweather/util/WeatherClickUtill;->onClickWeatherPart(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->n:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->setCityName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->g:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->h:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p0
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/zui/timelaweather/R$string;->new_date_format_pattern:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    return p0
.end method

.method private getCityColor()I
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x4d000000

    goto :goto_0

    :cond_0
    const p0, -0x19000001

    :goto_0
    return p0
.end method

.method private getCurrentAnimationDrawableId()I
    .locals 4

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getCurrentStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/zui/timelaweather/R$string;->rain:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/zui/timelaweather/R$drawable;->rain_anim_widget_loading_grey:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/zui/timelaweather/R$drawable;->rain_anim_widget_loading:I

    :cond_4
    :goto_0
    sget v3, Lcom/zui/timelaweather/R$string;->snow:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    if-eqz p0, :cond_5

    sget v1, Lcom/zui/timelaweather/R$drawable;->snow_anim_widget_loading_grey:I

    goto :goto_1

    :cond_5
    sget v1, Lcom/zui/timelaweather/R$drawable;->snow_anim_widget_loading:I

    goto :goto_1

    :cond_6
    sget v1, Lcom/zui/timelaweather/R$drawable;->rain_anim_widget_loading_grey:I

    :cond_7
    :goto_1
    return v1
.end method

.method private getEmptyColor()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$color;->weather_text_empty_blackcolor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$color;->weather_text_empty_color:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->o:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private getZuiRegion()Z
    .locals 1

    const-string p0, "ro.zui.region"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "row"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic h(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic i(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->B(ZZ)V

    return-void
.end method

.method static synthetic j(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->A()V

    return-void
.end method

.method static synthetic k(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->v(I)V

    return-void
.end method

.method static synthetic m(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)I
    .locals 0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getCurrentAnimationDrawableId()I

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->x(I)V

    return-void
.end method

.method static synthetic o(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->z()V

    return-void
.end method

.method static synthetic p(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    return p0
.end method

.method static synthetic q(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->t()V

    return-void
.end method

.method private r()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getZuiRegion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$integer;->animation_duation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    sget v1, Lcom/zui/timelaweather/R$layout;->shenqi_timeweather_provider_three:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->three_animation_viewid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->three_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/LenovoViewClockThree;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    sget v1, Lcom/zui/timelaweather/R$id;->three_weather_time_top:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->three_weather_time_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->chinese_calendar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->widgetDateDaysText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->q:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->widgetWeekText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->locationcity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->statustext_temperature:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->g:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->weather_statustextImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->airpollution:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->h:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->empty_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->o:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/timelaweather/View/LenovoViewClockThree;->updateTextColor(ZZ)V

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->setWeekDate()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->currentweather:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    if-eqz v1, :cond_2

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;

    invoke-direct {v1, p0, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;-><init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$b;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$b;-><init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method private s(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/16 p0, -0x64

    const/4 v0, 0x1

    if-lt p1, p0, :cond_4

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lt p2, p0, :cond_4

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    return v0

    :cond_2
    if-nez p4, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private setCityName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->o:Lcom/zui/timelaweather/View/WidgetTextView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->o:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getCityColor()I

    move-result v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v1, v0}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :goto_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    const-string p1, ""

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getEmptyColor()V

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->o:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->o:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/zui/timelaweather/R$string;->weather_data_Empty:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private t()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->setWeekDate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method private u()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->v(I)V

    return-void
.end method

.method private v(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getCurrentStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zui/timelaweather/R$string;->rain:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    sget v2, Lcom/zui/timelaweather/R$string;->rain:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v3}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->v(I)V

    return-void

    :cond_2
    sget v2, Lcom/zui/timelaweather/R$string;->snow:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/zui/timelaweather/R$string;->snow:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v3}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->v(I)V

    :cond_3
    return-void
.end method

.method private x(I)V
    .locals 0

    return-void
.end method

.method private y()V
    .locals 4

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->getCurrentAnimationDrawableId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->l:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->l:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->l:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->e:Landroid/view/View;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->e:Landroid/view/View;

    sget v0, Lcom/zui/timelaweather/R$color;->transparent:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    return-void
.end method


# virtual methods
.method public analyzeWidgetWeatherData(Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->setWeatherCurrentData(Lcom/zui/timelaweather/util/WeatherDataBean;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getWeatherID()I

    move-result v6

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getMaxTemperature()I

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getMinTemperature()I

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getValueAQI()I

    move-result v3

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getTemperature()I

    move-result v4

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->isIsday()Z

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->getWeatherTypeByCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u00b0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_1

    const-string p2, "101924"

    :cond_1
    if-nez p3, :cond_2

    const-string p3, "N/A"

    :cond_2
    move-object v5, p3

    invoke-direct {p0, v2, v1, p2, v5}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->setWeatherCurrentData(Lcom/zui/timelaweather/util/WeatherDataBean;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u()V

    return-void

    :cond_3
    const-string p2, "-274/-274\u00b0"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz v5, :cond_5

    const/4 p2, -0x1

    if-ne v6, p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p2, Lcom/zui/timelaweather/util/WeatherDataBean;

    move-object v1, p2

    move-object v2, p1

    move-object v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/zui/timelaweather/util/WeatherDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->z()V

    invoke-virtual {p2}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherStatusText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->setWeatherCurrentData(Lcom/zui/timelaweather/util/WeatherDataBean;Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->setWeatherCurrentData(Lcom/zui/timelaweather/util/WeatherDataBean;Landroid/content/Context;)V

    :goto_1
    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u()V

    return-void
.end method

.method public getClockAnimationStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->v:Z

    return p0
.end method

.method public getSinaWeatherData()V
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r()V

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->t:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u:Z

    :cond_1
    iget-boolean v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u:Z

    if-nez v2, :cond_2

    new-instance v2, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$d;-><init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;)V

    iput-object v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zui/timelaweather/R$id;->three_weather_time_top:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/WeatherClickUtill;->clickDeskClockView(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/zui/timelaweather/R$id;->three_weather_time_bottom:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/zui/timelaweather/R$id;->chinese_calendar:I

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/WeatherClickUtill;->jumpCalendarView(Landroid/view/View;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->z()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->t:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->t:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->u:Z

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    if-eqz v1, :cond_1

    sget v2, Lcom/zui/timelaweather/R$id;->three_weather_time_top:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->p:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    if-eqz v1, :cond_3

    sget v2, Lcom/zui/timelaweather/R$id;->three_weather_time_bottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->d:Landroid/view/View;

    sget v2, Lcom/zui/timelaweather/R$id;->currentweather:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setClockAnimationStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->v:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->y()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->z()V

    :goto_0
    return-void
.end method

.method public setTimeTextColor(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->k:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->j:Lcom/zui/timelaweather/View/LenovoViewClockThree;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/zui/timelaweather/View/LenovoViewClockThree;->updateTextColor(ZZ)V

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->B(ZZ)V

    return-void
.end method

.method public setWeekDate()V
    .locals 4

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x14

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->q:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->q:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->q:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->q:Lcom/zui/timelaweather/View/WidgetTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
