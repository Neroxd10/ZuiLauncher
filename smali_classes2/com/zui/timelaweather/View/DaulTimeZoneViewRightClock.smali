.class public Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private a:Lcom/zui/timelaweather/View/WidgetTextView;

.field private b:Lcom/zui/timelaweather/View/WidgetTextView;

.field private c:Lcom/zui/timelaweather/View/WidgetTextView;

.field private d:Lcom/zui/timelaweather/View/WidgetTextView;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Typeface;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler$Callback;

.field private j:Landroid/os/Handler;

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->e:Z

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->f:Z

    new-instance p1, Lcom/zui/timelaweather/View/a;

    invoke-direct {p1, p0}, Lcom/zui/timelaweather/View/a;-><init>(Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;)V

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->i:Landroid/os/Handler$Callback;

    new-instance p2, Lcom/zui/timelaweather/util/WeakRefHandler;

    invoke-direct {p2, p1}, Lcom/zui/timelaweather/util/WeakRefHandler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->j:Landroid/os/Handler;

    new-instance p1, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock$a;

    invoke-direct {p1, p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock$a;-><init>(Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;)V

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->k:Landroid/content/BroadcastReceiver;

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

    iput-object p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->g:Landroid/graphics/Typeface;

    sget p2, Lcom/zui/timelaweather/R$layout;->clock_style_right_location:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/zui/timelaweather/R$id;->daul_time_right_city:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->right_daul_time_zone_clock:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setTypeFace()V

    sget p1, Lcom/zui/timelaweather/R$id;->right_widgetDateDaysText:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    sget p1, Lcom/zui/timelaweather/R$id;->right_widgetWeekText:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    return-void
.end method

.method static synthetic a(Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->j:Landroid/os/Handler;

    return-object p0
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

.method private getWidgetColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->e:Z

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
.method public synthetic b(Landroid/os/Message;)Z
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->updateTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getClonTextColor(Z)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    sget p1, Lcom/zui/timelaweather/R$color;->widget_text_black_color:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/zui/timelaweather/R$color;->widget_text_white_color:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

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

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->f:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->f:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClockTextColor()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClockTextColor mBlack -->  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DaulTimeZoneView"

    invoke-static {v1, v0}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->getWidgetColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$color;->widget_text_black_color:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$color;->widget_text_white_color:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_1
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

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->updateTime(Ljava/lang/String;)V
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
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateTextColor(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->e:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "right  updateTextColor   black --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DaulTimeZoneView"

    invoke-static {p2, p1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->getWidgetColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->getWidgetColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setClockTextColor()V

    return-void
.end method

.method public updateTime(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const-string v0, "hh:mm"

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "kk:mm"

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

    move-result-object v0

    const-string v2, "yudl3"

    invoke-static {v2, v0}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->formatDate(Landroid/content/Context;JLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v2, 0x14

    invoke-static {p1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz p1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method
