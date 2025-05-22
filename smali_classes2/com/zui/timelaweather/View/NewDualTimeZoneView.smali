.class public Lcom/zui/timelaweather/View/NewDualTimeZoneView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/timelaweather/util/GeneralCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/zui/timelaweather/util/GeneralCallback<",
        "Lcom/zui/timelaweather/util/City;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static isLongClickState:Z = false


# instance fields
.field protected TAG:Ljava/lang/String;

.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

.field private i:Landroid/widget/ImageView;

.field private j:Z

.field protected mConfiguring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "DaulTimeZoneView"

    iput-object p2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->a:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->mConfiguring:Z

    const-string p2, "NewCityID"

    iput-object p2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->d:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->j:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget p3, Lcom/zui/timelaweather/R$layout;->new_dual_time_zone_view:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->getZuiRegion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->a:Z

    sget v0, Lcom/zui/timelaweather/R$id;->dual_left_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->d:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->setDarkOrLight(Z)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->d:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    sget v2, Lcom/zui/timelaweather/R$id;->dual_clock:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->d:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    sget v2, Lcom/zui/timelaweather/R$id;->dual_date_zone:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/zui/timelaweather/R$id;->right_zone:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->g:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zui/timelaweather/R$id;->dual_right_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->setDarkOrLight(Z)V

    sget v0, Lcom/zui/timelaweather/R$id;->configure_add:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setRightContentVisible(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setRightContentVisible(Z)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/zui/timelaweather/util/Utilities;->getCityByID(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/City;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setRightContentVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setRightContentVisible(Z)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/zui/timelaweather/util/Utilities;->setNewDualTimeCityOther(Landroid/content/Context;Lcom/zui/timelaweather/util/City;)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {v0}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->setCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAttachedToWindow  Exception  --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private c(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityContainerInnerView()Z

    move-result p2

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDaulTimeZoneColor  \u53cc\u65f6\u533a view  isblackColor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " innerView -->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mRightClockView -->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityDaulZoneBg()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setDaulRightClockBg()V

    :goto_1
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

.method private setRightContentVisible(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getConfigureZone()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public isConfiguring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->mConfiguring:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->d:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->setLocationCity()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/timelaweather/util/Utilities;->getNewDualTimeCityOther(Landroid/content/Context;)Lcom/zui/timelaweather/util/City;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityRightClock(Lcom/zui/timelaweather/util/City;)V

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityDaulZoneBg()V

    :cond_1
    invoke-direct {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isConfiguring()Z

    move-result v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onclick  configuring -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isLongClickState -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/zui/timelaweather/R$id;->dual_clock:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/WeatherClickUtill;->clickDeskClockView(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/zui/timelaweather/R$id;->dual_date_zone:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/WeatherClickUtill;->jumpCalendarView(Landroid/view/View;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDataFinish(Lcom/zui/timelaweather/util/City;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getCityId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback  city -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityRightClock(Lcom/zui/timelaweather/util/City;)V

    return-void
.end method

.method public bridge synthetic onDataFinish(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/timelaweather/util/City;

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->onDataFinish(Lcom/zui/timelaweather/util/City;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->d:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method public setConfiguring(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->mConfiguring:Z

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityContainerInnerView()Z

    move-result v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfiguring  isConfiguring -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " innerView -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setTransparent()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setDaulRightClockBg()V

    :goto_1
    return-void
.end method

.method public setDaulRightClockBg()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/zui/timelaweather/R$drawable;->daul_time_selector_white_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setShowConfigureRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->j:Z

    return-void
.end method

.method public setTimeTextColor(ZZ)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->c(ZZ)V

    return-void
.end method

.method public setTransparent()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->j:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityContainerInnerView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->g:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public verityContainerInnerView()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public verityDaulZoneBg()V
    .locals 3

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verityDaulZoneBg isConfiguring -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isConfiguring()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isConfiguring()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setDaulRightClockBg()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setTransparent()V

    :goto_0
    return-void
.end method

.method public verityRightClock(Lcom/zui/timelaweather/util/City;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setRightContentVisible(Z)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->setCityName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->h:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getTimezone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method
