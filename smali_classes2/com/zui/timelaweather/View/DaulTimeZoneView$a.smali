.class Lcom/zui/timelaweather/View/DaulTimeZoneView$a;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/DaulTimeZoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/DaulTimeZoneView;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/DaulTimeZoneView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_timezone_style"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object v0, v0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContentObserver  onChange  aod_timezone_style -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/timelaweather/util/Utilities;->getCityByID(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/City;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/timelaweather/util/Utilities;->setDualTimeCityOther(Landroid/content/Context;Lcom/zui/timelaweather/util/City;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-virtual {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityContainerInnerView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object v4, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/zui/timelaweather/R$layout;->right_clock_container_view:I

    invoke-virtual {v4, v5, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    invoke-static {v0, v1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->e(Lcom/zui/timelaweather/View/DaulTimeZoneView;Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;)Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    :cond_2
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Z

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->g(Lcom/zui/timelaweather/View/DaulTimeZoneView;ZZ)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$id;->daul_time_zone_clock:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setCityName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object v1, v1, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentObserver  onChange city_name --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setCityName(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->h(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/zui/timelaweather/R$layout;->widget_add_container:I

    invoke-virtual {v0, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->i(Lcom/zui/timelaweather/View/DaulTimeZoneView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_5
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->h(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->h(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    invoke-static {p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j(Lcom/zui/timelaweather/View/DaulTimeZoneView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneView;

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentObserver onChange exception --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
