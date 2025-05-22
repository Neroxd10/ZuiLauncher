.class public Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private a:Lcom/zui/timelaweather/View/WidgetTextView;

.field private b:Lcom/zui/timelaweather/View/WidgetTextView;

.field private c:Lcom/zui/timelaweather/View/WidgetTextView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/zui/timelaweather/View/WidgetTextView;

.field private f:Landroid/graphics/Typeface;

.field private g:Z

.field private h:Z

.field private final i:Landroid/os/Handler;

.field private final j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->g:Z

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->h:Z

    new-instance p1, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$a;

    invoke-direct {p1, p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$a;-><init>(Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;)V

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->i:Landroid/os/Handler;

    new-instance p1, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$b;

    invoke-direct {p1, p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$b;-><init>(Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;)V

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "LenovoDigital_1row.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->f:Landroid/graphics/Typeface;

    sget p2, Lcom/zui/timelaweather/R$layout;->clock_style_left_location:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/zui/timelaweather/R$id;->icon_location:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->d:Landroid/widget/ImageView;

    sget p1, Lcom/zui/timelaweather/R$id;->location_city:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->left_location_clock:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->e:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->setTypeFace()V

    sget p1, Lcom/zui/timelaweather/R$id;->widgetDateDaysText:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->widgetWeekText:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    return-void
.end method

.method static synthetic a(Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->i:Landroid/os/Handler;

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

.method private getWidgetColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->g:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/timelaweather/R$color;->widget_text_black_color:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/zui/timelaweather/R$color;->widget_text_white_color:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getClonTextColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->g:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/timelaweather/R$color;->widget_text_black_color:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/zui/timelaweather/R$color;->widget_text_white_color:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

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

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->h:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->h:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setClockTextColor()V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->e:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->getClonTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    return-void
.end method

.method public setLocationCity()V
    .locals 2

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$string;->dual_timezone_default_city:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setLocationColor()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zui/timelaweather/R$drawable;->icon_black_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/zui/timelaweather/R$color;->widget_text_black_color:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zui/timelaweather/R$drawable;->icon_white_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/zui/timelaweather/R$color;->widget_text_white_color:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public setTypeFace()V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->e:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateTextColor(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->g:Z

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->getWidgetColor()I

    move-result p1

    iget-object p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_0
    iget-object p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->setClockTextColor()V

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->setLocationColor()V

    return-void
.end method

.method public updateTime()V
    .locals 5

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "kk:mm"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->e:Lcom/zui/timelaweather/View/WidgetTextView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

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

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method
