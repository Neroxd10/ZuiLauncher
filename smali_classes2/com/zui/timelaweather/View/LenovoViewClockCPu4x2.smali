.class public Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final SEPERATOR:Ljava/lang/String; = "   "

.field public static final SEPERATOR_EN:Ljava/lang/String; = ", "

.field public static mCurrentBatteryState:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static mCurrentBlueState:Lcom/zui/timelaweather/util/WidgetIconState;

.field private static final r:[I

.field private static final s:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zui/timelaweather/View/WidgetTextView;

.field private c:Lcom/zui/timelaweather/View/WidgetTextView;

.field private d:Z

.field private e:Landroid/animation/AnimatorSet;

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/res/Configuration;

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Handler$Callback;

.field private k:Landroid/os/Handler;

.field private final l:Landroid/content/BroadcastReceiver;

.field private m:Lcom/zui/timelaweather/View/WidgetTextView;

.field private n:Landroid/graphics/Typeface;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_NONE:Lcom/zui/timelaweather/util/WidgetIconState;

    sput-object v0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->mCurrentBlueState:Lcom/zui/timelaweather/util/WidgetIconState;

    sput-object v0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->mCurrentBatteryState:Lcom/zui/timelaweather/util/WidgetIconState;

    const/16 v0, 0xc

    new-array v1, v0, [I

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num5:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num6:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num7:I

    const/4 v10, 0x7

    aput v2, v1, v10

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num8:I

    const/16 v11, 0x8

    aput v2, v1, v11

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num9:I

    const/16 v12, 0x9

    aput v2, v1, v12

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num1_pre:I

    const/16 v13, 0xa

    aput v2, v1, v13

    sget v2, Lcom/zui/timelaweather/R$drawable;->new_white_num1_mid:I

    const/16 v14, 0xb

    aput v2, v1, v14

    sput-object v1, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->r:[I

    new-array v0, v0, [I

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num0:I

    aput v1, v0, v3

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num1:I

    aput v1, v0, v4

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num2:I

    aput v1, v0, v5

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num3:I

    aput v1, v0, v6

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num4:I

    aput v1, v0, v7

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num5:I

    aput v1, v0, v8

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num6:I

    aput v1, v0, v9

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num7:I

    aput v1, v0, v10

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num8:I

    aput v1, v0, v11

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num9:I

    aput v1, v0, v12

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num_pre:I

    aput v1, v0, v13

    sget v1, Lcom/zui/timelaweather/R$drawable;->new_black_num_mid:I

    aput v1, v0, v14

    sput-object v0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->s:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->e:Landroid/animation/AnimatorSet;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->g:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->i:Ljava/lang/String;

    new-instance v0, Lcom/zui/timelaweather/View/e;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/e;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;)V

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->j:Landroid/os/Handler$Callback;

    new-instance v1, Lcom/zui/timelaweather/util/WeakRefHandler;

    invoke-direct {v1, v0}, Lcom/zui/timelaweather/util/WeakRefHandler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->k:Landroid/os/Handler;

    new-instance v0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2$a;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2$a;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;)V

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->l:Landroid/content/BroadcastReceiver;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->o:Z

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->p:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->q:Z

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/zui/timelaweather/R$layout;->clock_style_one_new_cpu:I

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "LenovoDigital_1row.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->n:Landroid/graphics/Typeface;

    sget p1, Lcom/zui/timelaweather/R$id;->weather_time_top:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->m:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->setTypeFace()V

    sget p1, Lcom/zui/timelaweather/R$id;->widgetDateDaysText:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->widgetWeekText:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->h:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic a(Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->p:Z

    return p0
.end method

.method static synthetic b(Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->o:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->q:Z

    return p1
.end method

.method static synthetic d(Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->k:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
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

.method private getWidgetColor()I
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->d:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x4d000000

    goto :goto_0

    :cond_0
    const p0, -0x19000001

    :goto_0
    return p0
.end method


# virtual methods
.method public synthetic f(Landroid/os/Message;)Z
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->updateTime()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getDateAndWeekString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->i:Ljava/lang/String;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.intent.category.companyid.76"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->f:Z

    invoke-direct {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->e()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->f:Z

    invoke-direct {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->e()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setClockTextColor()V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->m:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-direct {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->getWidgetColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    return-void
.end method

.method public setTypeFace()V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->m:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->n:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateTextColor(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->d:Z

    invoke-direct {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->getWidgetColor()I

    move-result p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_1
    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->p:Z

    const/4 p1, 0x1

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->o:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->q:Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->q:Z

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->p:Z

    if-nez v0, :cond_4

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->o:Z

    goto :goto_1

    :cond_4
    iput-boolean p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->o:Z

    :goto_1
    iget-boolean p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->d:Z

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->setClockTextColor()V

    return-void
.end method

.method public updateTime()V
    .locals 6

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kk:mm"

    goto :goto_0

    :cond_0
    const-string v2, "h:mm"

    :goto_0
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->h:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->e()V

    iget-object v3, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->m:Lcom/zui/timelaweather/View/WidgetTextView;

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0x14

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "   "

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->i:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->q:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockCPu4x2;->q:Z

    :cond_7
    return-void
.end method
