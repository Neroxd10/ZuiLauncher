.class public Lcom/zui/timelaweather/View/DaulTimeZoneView;
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

.field private c:Landroid/view/View;

.field private d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

.field private e:Z

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

.field private k:Landroid/widget/ImageView;

.field private l:Ljava/lang/String;

.field private m:Landroid/database/ContentObserver;

.field protected mConfiguring:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "DaulTimeZoneView"

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    iput-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->e:Z

    const-string v1, "cityID"

    iput-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->mConfiguring:Z

    new-instance v1, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;-><init>(Lcom/zui/timelaweather/View/DaulTimeZoneView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->m:Landroid/database/ContentObserver;

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "DaulTimeZoneView"

    iput-object p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->e:Z

    const-string p3, "cityID"

    iput-object p3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->mConfiguring:Z

    new-instance p3, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p3, p0, v0}, Lcom/zui/timelaweather/View/DaulTimeZoneView$a;-><init>(Lcom/zui/timelaweather/View/DaulTimeZoneView;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->m:Landroid/database/ContentObserver;

    iput-boolean p2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/timelaweather/View/DaulTimeZoneView;Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;)Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    return-object p1
.end method

.method static synthetic f(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->e:Z

    return p0
.end method

.method static synthetic g(Lcom/zui/timelaweather/View/DaulTimeZoneView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n(ZZ)V

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

.method static synthetic h(Lcom/zui/timelaweather/View/DaulTimeZoneView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic i(Lcom/zui/timelaweather/View/DaulTimeZoneView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic j(Lcom/zui/timelaweather/View/DaulTimeZoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l()V

    return-void
.end method

.method private k()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->getZuiRegion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    sget v1, Lcom/zui/timelaweather/R$layout;->widget_dual_time_zone_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->g:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->container_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->g:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->daul_left_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    :cond_3
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->h:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    sget v1, Lcom/zui/timelaweather/R$id;->left_location_clock:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->h:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->i:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    sget v1, Lcom/zui/timelaweather/R$id;->left_DateDays:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->i:Landroid/view/View;

    :cond_5
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->e:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->updateTextColor(ZZ)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    sget v1, Lcom/zui/timelaweather/R$id;->daul_right_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    :cond_6
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_7
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->c:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageResource   mBlackColor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$layout;->widget_add_container:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    :cond_0
    iget-boolean v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n:Z

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v0, Lcom/zui/timelaweather/R$drawable;->icon_black_add:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/zui/timelaweather/R$drawable;->icon_white_add:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n:Z

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->updateTextColor(ZZ)V

    :cond_0
    return-void
.end method

.method private n(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityContainerInnerView()Z

    move-result p2

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

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

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

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

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->m()V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityDaulZoneBg()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->setDaulRightClockBg()V

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l()V

    :goto_1
    return-void
.end method

.method private o(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->e:Z

    return-void
.end method


# virtual methods
.method public getConfigureZone()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public handlerLocationData(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/zui/timelaweather/util/SpUtills;->saveLocationCity(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->setLocationCity()V

    :cond_1
    return-void
.end method

.method public isConfiguring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->mConfiguring:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    const-string v0, "aod_timezone_style"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k()V

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->a:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->m:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAttachedToWindow aod_timezone  Exception -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/timelaweather/util/Utilities;->getDualTimeCityOther(Landroid/content/Context;)Lcom/zui/timelaweather/util/City;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lcom/zui/timelaweather/R$layout;->right_clock_container_view:I

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    iput-object v3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    :cond_1
    iget-object v3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lcom/zui/timelaweather/R$layout;->widget_add_container:I

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityRightClock(Lcom/zui/timelaweather/util/City;)V

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityDaulZoneBg()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    invoke-virtual {v2}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->setLocationCity()V

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, ":"

    if-nez v2, :cond_5

    :try_start_2
    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v1

    :goto_2
    iget-object v4, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onAttachedToWindow  aod_timezone_style --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cityID --> "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/zui/timelaweather/util/Utilities;->getCityByID(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/timelaweather/util/City;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/zui/timelaweather/util/Utilities;->setDualTimeCityOther(Landroid/content/Context;Lcom/zui/timelaweather/util/City;)V

    iget-object v4, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/zui/timelaweather/util/City;->getTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onAttachedToWindow  city_name --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setCityName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

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

    :cond_7
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->isConfiguring()Z

    move-result v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onclick  configuring -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isLongClickState -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/zui/timelaweather/View/DaulTimeZoneView;->isLongClickState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/zui/timelaweather/View/DaulTimeZoneView;->isLongClickState:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/zui/timelaweather/R$id;->left_location_clock:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/zui/timelaweather/util/WeatherClickUtill;->clickDeskClockView(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/zui/timelaweather/R$id;->left_DateDays:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/zui/timelaweather/util/WeatherClickUtill;->getInstance()Lcom/zui/timelaweather/util/WeatherClickUtill;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/util/SpUtills;->getLocationSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getCityId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback  city -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityRightClock(Lcom/zui/timelaweather/util/City;)V

    return-void
.end method

.method public bridge synthetic onDataFinish(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/timelaweather/util/City;

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->onDataFinish(Lcom/zui/timelaweather/util/City;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDetachedFromWindow aod_timezone  Exception -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    const-string p2, "onSizeChanged  -----  "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    const/16 p2, 0xf7

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    const/16 p2, 0x8a

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verifyViewState(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, p2}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verifyViewState(Landroid/view/View;I)V

    return-void
.end method

.method public setConfiguring(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->mConfiguring:Z

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityContainerInnerView()Z

    move-result v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->m()V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->setDaulRightClockBg()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->setTransparent()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->setDaulRightClockBg()V

    invoke-direct {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->l()V

    :goto_0
    return-void
.end method

.method public setDaulRightClockBg()V
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->e:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v1, :cond_0

    sget v1, Lcom/zui/timelaweather/R$drawable;->daul_time_selector_black_bg:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/zui/timelaweather/R$drawable;->daul_time_selector_white_bg:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setTimeTextColor(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n:Z

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->d:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->updateTextColor(ZZ)V

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->o(ZZ)V

    invoke-direct {p0, p1, p2}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->n(ZZ)V

    return-void
.end method

.method public setTransparent()V
    .locals 2

    sget-boolean v0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->isLongClickState:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityContainerInnerView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/zui/timelaweather/R$drawable;->daul_time_zone_normal_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public verifyViewState(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p2, p2

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->b:Landroid/content/Context;

    invoke-static {p2, p0}, Lcom/zui/timelaweather/util/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public verityContainerInnerView()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public verityDaulZoneBg()V
    .locals 3

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verityDaulZoneBg isConfiguring -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->isConfiguring()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->isConfiguring()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->setDaulRightClockBg()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->setTransparent()V

    :goto_0
    return-void
.end method

.method public verityRightClock(Lcom/zui/timelaweather/util/City;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneView;->verityContainerInnerView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setCityName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneView;->j:Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    invoke-virtual {p1}, Lcom/zui/timelaweather/util/City;->getTimezone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;->setTimeZone(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
