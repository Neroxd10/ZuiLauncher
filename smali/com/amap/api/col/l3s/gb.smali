.class public final Lcom/amap/api/col/l3s/gb;
.super Lcom/amap/api/offlineservice/a;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ExpandableListView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/AutoCompleteTextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/amap/api/col/l3s/fv;

.field private q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private r:Lcom/amap/api/col/l3s/fu;

.field private s:Lcom/amap/api/col/l3s/fw;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:J

.field private x:Lcom/amap/api/col/l3s/fx;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/offlineservice/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/gb;->t:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/gb;->u:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/amap/api/col/l3s/gb;->v:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amap/api/col/l3s/gb;->w:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/gb;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/gb;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/gb;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/gb;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f()V
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getOfflineMapProvinceList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v6}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Lcom/amap/api/maps/offlinemap/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u9999\u6e2f"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    invoke-virtual {v6}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    const-string v8, "\u6fb3\u95e8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const-string v8, "\u5168\u56fd\u6982\u8981\u56fe"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v7, :cond_3

    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v5, "\u57fa\u672c\u529f\u80fd\u5305+\u76f4\u8f96\u5e02"

    invoke-virtual {v0, v5}, Lcom/amap/api/maps/offlinemap/Province;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v3, "\u76f4\u8f96\u5e02"

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/offlinemap/Province;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v1, "\u6e2f\u6fb3"

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/Province;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070015

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->closeScr()V

    return-void

    :cond_0
    const/high16 v0, 0x7f070000

    const/4 v1, 0x1

    const v2, 0x7f020004

    const/high16 v3, 0x7f020000

    const/4 v4, 0x0

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/gb;->u:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/gb;->u:Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    invoke-virtual {p1, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/gb;->u:Z

    return-void

    :cond_2
    const v0, 0x7f070005

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/gb;->t:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->p:Lcom/amap/api/col/l3s/fv;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/fv;->b()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/gb;->t:Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->p:Lcom/amap/api/col/l3s/fv;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/fv;->a()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/gb;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->x:Lcom/amap/api/col/l3s/fx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/fx;

    iget-object v1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    iget-object v2, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/fx;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->x:Lcom/amap/api/col/l3s/fx;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->x:Lcom/amap/api/col/l3s/fx;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/col/l3s/fx;->a(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->x:Lcom/amap/api/col/l3s/fx;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->e:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/gb;->u:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/gb;->t:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->e:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const/high16 v1, 0x7f030000

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/gd;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->k:Landroid/widget/RelativeLayout;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->l:Landroid/widget/ImageView;

    new-instance v2, Lcom/amap/api/col/l3s/gb$1;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3s/gb$1;-><init>(Lcom/amap/api/col/l3s/gb;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/gb;->f()V

    new-instance v0, Lcom/amap/api/col/l3s/fv;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v3, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/fv;-><init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->p:Lcom/amap/api/col/l3s/fv;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->p:Lcom/amap/api/col/l3s/fv;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->p:Lcom/amap/api/col/l3s/fv;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/gb;->t:Z

    const/4 v1, 0x0

    const/high16 v2, 0x7f020000

    const/16 v3, 0x8

    const v4, 0x7f020004

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/gb;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    invoke-virtual {p0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/gb;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-super {p0}, Lcom/amap/api/offlineservice/a;->c()Z

    move-result p0

    return p0
.end method

.method public final d()Landroid/widget/RelativeLayout;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const v1, 0x7f030004

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/gd;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->c:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->destroy()V

    return-void
.end method

.method public final onCheckUpdate(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDownload(IILjava/lang/String;)V
    .locals 2

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string p3, "\u7f51\u7edc\u5f02\u5e38"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    :goto_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->r:Lcom/amap/api/col/l3s/fu;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/fu;->a()V

    :cond_1
    iget p2, p0, Lcom/amap/api/col/l3s/gb;->v:I

    if-eq p2, p1, :cond_5

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->p:Lcom/amap/api/col/l3s/fv;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->p:Lcom/amap/api/col/l3s/fv;

    invoke-virtual {p2}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->r:Lcom/amap/api/col/l3s/fu;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->r:Lcom/amap/api/col/l3s/fu;

    invoke-virtual {p2}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_3
    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->s:Lcom/amap/api/col/l3s/fw;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->s:Lcom/amap/api/col/l3s/fw;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    iput p1, p0, Lcom/amap/api/col/l3s/gb;->v:I

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/amap/api/col/l3s/gb;->w:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x4b0

    cmp-long p1, p1, v0

    if-lez p1, :cond_7

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/gb;->y:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->r:Lcom/amap/api/col/l3s/fu;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3s/gb;->w:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->r:Lcom/amap/api/col/l3s/fu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fu;->b()V

    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/gb;->y:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/amap/api/col/l3s/gb;->a(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->l:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->l:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p4, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_5

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/City;->getJianpin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v0, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    :goto_2
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/gb;->a(Z)V

    new-instance p1, Lcom/amap/api/col/l3s/gb$2;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/gb$2;-><init>(Lcom/amap/api/col/l3s/gb;)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->s:Lcom/amap/api/col/l3s/fw;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/fw;->a(Ljava/util/List;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->s:Lcom/amap/api/col/l3s/fw;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_6
    iget-object p0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string p1, "\u672a\u627e\u5230\u76f8\u5173\u57ce\u5e02"

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    iget-object p2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f070018

    if-ne p1, p2, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 p2, 0x41900000    # 18.0f

    invoke-virtual {p0, p2}, Lcom/amap/api/offlineservice/a;->a(F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/amap/api/col/l3s/gb;->m:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/gb;->i:Landroid/widget/AutoCompleteTextView;

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-virtual {p0, p2}, Lcom/amap/api/offlineservice/a;->a(F)I

    move-result p0

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method public final onVerifyComplete()V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/col/l3s/gb;->f()V

    new-instance v0, Lcom/amap/api/col/l3s/fw;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/fw;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->s:Lcom/amap/api/col/l3s/fw;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/amap/api/col/l3s/fu;

    iget-object v1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    iget-object v2, p0, Lcom/amap/api/col/l3s/gb;->q:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v3, p0, Lcom/amap/api/col/l3s/gb;->o:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/amap/api/col/l3s/fu;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/gb;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gb;->r:Lcom/amap/api/col/l3s/fu;

    iget-object v1, p0, Lcom/amap/api/col/l3s/gb;->d:Lcom/amap/api/maps/offlinemap/DownLoadExpandListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/gb;->r:Lcom/amap/api/col/l3s/fu;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
