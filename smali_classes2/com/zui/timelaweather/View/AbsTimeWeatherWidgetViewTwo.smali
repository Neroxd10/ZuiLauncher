.class public Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final REFRESHWEATHERDATAS:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/zui/timelaweather/View/WidgetTextView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

.field private i:Z

.field private j:Landroid/graphics/drawable/AnimationDrawable;

.field private k:J

.field private l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

.field private m:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

.field private n:Landroid/os/Handler;

.field private o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/BroadcastReceiver;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "TimeWeatherWidgetView"

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e:Landroid/view/View;

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->g:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->j:Landroid/graphics/drawable/AnimationDrawable;

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->k:J

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    new-instance v2, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;

    invoke-direct {v2, p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;-><init>(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)V

    iput-object v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$c;

    invoke-direct {v1, p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$c;-><init>(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)V

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->p:Landroid/content/BroadcastReceiver;

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->q:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-static {}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getInstance()Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getWidgetWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->m:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "TimeWeatherWidgetView"

    iput-object p2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->a:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->g:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->j:Landroid/graphics/drawable/AnimationDrawable;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->k:J

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    new-instance v0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$b;-><init>(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)V

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->o:Landroid/content/BroadcastReceiver;

    new-instance p3, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$c;

    invoke-direct {p3, p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$c;-><init>(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)V

    iput-object p3, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->p:Landroid/content/BroadcastReceiver;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->q:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-static {}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getInstance()Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getWidgetWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->m:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/zui/timelaweather/util/WeatherClickUtill;->onClickWeatherPart(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->m:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)I
    .locals 0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getCurrentAnimationDrawableId()I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l(I)V

    return-void
.end method

.method static synthetic f(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n()V

    return-void
.end method

.method static synthetic g(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    return-object p0
.end method

.method private getCityColor()I
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

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

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

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

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

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

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

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

.method private getEmptyColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/timelaweather/R$color;->weather_text_empty_blackcolor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/zui/timelaweather/R$color;->weather_text_empty_color:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
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

.method private h()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getZuiRegion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$integer;->animation_duation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    sget v1, Lcom/zui/timelaweather/R$layout;->shenqi_timeweather_provider:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->animation_viewid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->locationcityAndTemperature:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->weather_statustextImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->clock_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->updateTextColor(ZZ)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    sget v1, Lcom/zui/timelaweather/R$id;->weather_time_top:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    sget v1, Lcom/zui/timelaweather/R$id;->rv_weather_time:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->currentweather:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    if-eqz v1, :cond_2

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$a;

    invoke-direct {v1, p0, v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo$a;-><init>(Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getSinaWeatherData()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherCurrentData(Landroid/content/Context;)Lcom/zui/timelaweather/util/WeatherDataBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setWidgetText(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private i(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/16 v0, -0x64

    const/4 v1, 0x1

    if-lt p1, v0, :cond_5

    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    goto :goto_3

    :cond_0
    if-lt p2, v0, :cond_4

    if-lt p2, v2, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "data is invalid, citycode === "

    if-nez p3, :cond_2

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-nez p4, :cond_3

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "data is invalid, high temperature === "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "data is invalid, low temperature === "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private j(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private k(Ljava/lang/String;)V
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

    invoke-direct {p0, v3}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->j(I)V

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

    invoke-direct {p0, v3}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->j(I)V

    :cond_3
    return-void
.end method

.method private l(I)V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 4

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getCurrentAnimationDrawableId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->j:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e:Landroid/view/View;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->e:Landroid/view/View;

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

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setWidgetText(Ljava/lang/Object;)V

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

    invoke-direct {p0, v2, v1, p2, v5}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setWidgetText(Ljava/lang/Object;)V

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

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n()V

    invoke-virtual {p2}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherStatusText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->k(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setWidgetText(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setWidgetText(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public getClockAnimationStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->q:Z

    return p0
.end method

.method public getSinaWeatherData()V
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h()V

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->o:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->p:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->onfinish()V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zui/timelaweather/R$id;->weather_time_top:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/WeatherClickUtill;->clickDeskClockView(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/zui/timelaweather/R$id;->rv_weather_time:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/WeatherClickUtill;->jumpCalendarView(Landroid/view/View;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/timelaweather/util/SinaWeatherContentObserver;->onfinish()V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->l:Lcom/zui/timelaweather/util/SinaWeatherContentObserver;

    iget-object v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->o:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iput-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->o:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    if-eqz v0, :cond_2

    sget v2, Lcom/zui/timelaweather/R$id;->weather_time_top:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    sget v2, Lcom/zui/timelaweather/R$id;->rv_weather_time:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v2, Lcom/zui/timelaweather/R$id;->currentweather:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setClockAnimationStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->q:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->m()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->n()V

    :goto_0
    return-void
.end method

.method public setTimeTextColor(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->h:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->updateTextColor(ZZ)V

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherCurrentData(Landroid/content/Context;)Lcom/zui/timelaweather/util/WeatherDataBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setWidgetText(Ljava/lang/Object;)V

    return-void
.end method

.method public setWidgetText(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->setWeatherCurrentData(Lcom/zui/timelaweather/util/WeatherDataBean;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getEmptyColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$string;->weather_data_Empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->g:Landroid/widget/ImageView;

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

    invoke-static {v0, v1, v2}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherImageId2(IZZ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/zui/timelaweather/util/WeatherDataBean;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->setWeatherCurrentData(Lcom/zui/timelaweather/util/WeatherDataBean;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeatherTemperature()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->f:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-direct {p0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->getCityColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->getWeathercode()I

    move-result v1

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/WeatherDataBean;->isDayTime()Z

    move-result p1

    iget-boolean v2, p0, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->i:Z

    invoke-static {v1, p1, v2}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherImageId2(IZZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_3
    :goto_1
    return-void
.end method
