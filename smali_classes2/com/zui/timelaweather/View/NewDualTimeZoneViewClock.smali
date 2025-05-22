.class public Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/zui/timelaweather/View/MultiColorInterface;


# static fields
.field public static final DEFAULT_CONFIG_KEY:Ljava/lang/String; = "4x6"

.field public static final EXTRA_NEW_LAYOU_CONFIG:Ljava/lang/String; = "extra_new_layout_config"


# instance fields
.field private a:Lcom/zui/timelaweather/View/MultiColorTextView;

.field private b:Lcom/zui/timelaweather/View/MultiColorTextView;

.field private c:Lcom/zui/timelaweather/View/MultiColorTextView;

.field private d:Lcom/zui/timelaweather/View/MultiColorTextView;

.field private e:Lcom/zui/timelaweather/View/MultiColorTextView;

.field private f:Lcom/zui/timelaweather/View/MultiColorImageView;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/Typeface;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private final o:Landroid/os/Handler;

.field private final p:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    const/16 v1, 0xf7

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->k:I

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->n:Z

    new-instance v0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$a;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$a;-><init>(Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;)V

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->o:Landroid/os/Handler;

    new-instance v0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$b;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$b;-><init>(Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;)V

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->p:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/zui/timelaweather/R$styleable;->NewDualTimeZoneViewClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/zui/timelaweather/R$styleable;->NewDualTimeZoneViewClock_clock_bg_day:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->l:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/zui/timelaweather/R$styleable;->NewDualTimeZoneViewClock_clock_bg_night:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget p2, Lcom/zui/timelaweather/R$layout;->new_dual_time_clock:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/zui/timelaweather/R$id;->dual_city_name:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/MultiColorTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->c:Lcom/zui/timelaweather/View/MultiColorTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->dual_clock:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/MultiColorTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->d:Lcom/zui/timelaweather/View/MultiColorTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->dual_am_pm:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/MultiColorTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->e:Lcom/zui/timelaweather/View/MultiColorTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->dual_date:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/MultiColorTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->b:Lcom/zui/timelaweather/View/MultiColorTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->dual_week:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/MultiColorTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-direct {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->d()V

    return-void
.end method

.method static synthetic a(Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->o:Landroid/os/Handler;

    return-object p0
.end method

.method private c()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "extra_new_layout_config"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "4x6"

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->n:Z

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->f:Lcom/zui/timelaweather/View/MultiColorImageView;

    if-nez v1, :cond_0

    sget v1, Lcom/zui/timelaweather/R$id;->dual_icon_daynight:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/timelaweather/View/MultiColorImageView;

    iput-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->f:Lcom/zui/timelaweather/View/MultiColorImageView;

    :cond_0
    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->g:Landroid/view/View;

    if-nez v1, :cond_1

    sget v1, Lcom/zui/timelaweather/R$id;->dual_time_content:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->g:Landroid/view/View;

    :cond_1
    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->f:Lcom/zui/timelaweather/View/MultiColorImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->n:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/zui/timelaweather/R$dimen;->dual_time_icon_margin_end_5col:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/zui/timelaweather/R$dimen;->dual_time_icon_margin_end:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->n:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/zui/timelaweather/R$dimen;->dual_time_content_margin_start_5col:I

    goto :goto_1

    :cond_3
    sget p0, Lcom/zui/timelaweather/R$dimen;->dual_time_content_margin_start:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;JLjava/util/Calendar;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/zui/timelaweather/R$string;->new_date_format_pattern:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDarkFlag()I
    .locals 0

    iget p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->k:I

    return p0
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

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->j:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->j:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->c:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDarkOrLight(Z)V
    .locals 2

    iget v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->k:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->c:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/MultiColorTextView;->setDarkOrLight(Z)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->d:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/MultiColorTextView;->setDarkOrLight(Z)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->b:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/MultiColorTextView;->setDarkOrLight(Z)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/MultiColorTextView;->setDarkOrLight(Z)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->f:Lcom/zui/timelaweather/View/MultiColorImageView;

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/MultiColorImageView;->setDarkOrLight(Z)V

    return-void
.end method

.method public setLocationCity()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$string;->dual_timezone_default_city:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->c:Lcom/zui/timelaweather/View/MultiColorTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 3

    const-string v0, "yudl3"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------getTimeZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->i:Ljava/lang/String;

    invoke-virtual {p1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->updateTime(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimeZone  Exception -->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/timelaweather/util/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTypeFace()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "LenovoDigital_1row.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->h:Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->d:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateTime()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->updateTime(Ljava/util/TimeZone;)V

    return-void
.end method

.method public updateTime(Ljava/util/TimeZone;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "kk:mm"

    goto :goto_0

    :cond_1
    const-string v1, "hh:mm"

    :goto_0
    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rightClock  updateTime timeStr -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ampmflag --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yudl3"

    invoke-static {v3, v2}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->d:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->formatDate(Landroid/content/Context;JLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a:Lcom/zui/timelaweather/View/MultiColorTextView;

    if-eqz v2, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->b:Lcom/zui/timelaweather/View/MultiColorTextView;

    if-eqz v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->b:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a:Lcom/zui/timelaweather/View/MultiColorTextView;

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->b:Lcom/zui/timelaweather/View/MultiColorTextView;

    if-eqz v1, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->b:Lcom/zui/timelaweather/View/MultiColorTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->e:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->e:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->e:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->e:Lcom/zui/timelaweather/View/MultiColorTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->e:Lcom/zui/timelaweather/View/MultiColorTextView;

    invoke-static {p1}, Lcom/zui/timelaweather/util/Utilities;->isAm(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/zui/timelaweather/R$string;->new_dual_time_am:I

    goto :goto_2

    :cond_8
    sget v1, Lcom/zui/timelaweather/R$string;->new_dual_time_pm:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_3
    invoke-static {p1}, Lcom/zui/timelaweather/util/Utilities;->isDayTime(Ljava/util/Calendar;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->setDarkOrLight(Z)V

    return-void
.end method
