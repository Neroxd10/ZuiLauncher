.class public final Lcom/amap/api/col/l3s/fw;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fw$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/offlinemap/OfflineMapManager;",
            "Lcom/amap/api/maps/offlinemap/OfflineMapActivity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fw;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fw;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fw;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fw;)Lcom/amap/api/maps/offlinemap/OfflineMapManager;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fw;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/l3s/fw;->a:Ljava/util/List;

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fw;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fw;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    :try_start_0
    iget-object p3, p0, Lcom/amap/api/col/l3s/fw;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-nez p2, :cond_0

    new-instance p3, Lcom/amap/api/col/l3s/fw$a;

    invoke-direct {p3, p0}, Lcom/amap/api/col/l3s/fw$a;-><init>(Lcom/amap/api/col/l3s/fw;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fw;->c:Landroid/app/Activity;

    const v1, 0x7f030002

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/gd;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07000b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/amap/api/col/l3s/fw$a;->a:Landroid/widget/TextView;

    const v0, 0x7f07000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/amap/api/col/l3s/fw$a;->b:Landroid/widget/TextView;

    const v0, 0x7f07000d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const v0, 0x7f07000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amap/api/col/l3s/fw$a;

    :goto_0
    iget-object v0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/l3s/fw$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/amap/api/col/l3s/fw$1;-><init>(Lcom/amap/api/col/l3s/fw;Lcom/amap/api/col/l3s/fw$a;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-int p0, v1

    int-to-double v1, p0

    div-double/2addr v1, v3

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " M"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p0

    const/4 p1, -0x1

    const/16 v1, 0x8

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :cond_1
    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const-string p1, "\u5df2\u4e0b\u8f7d"

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const-string p1, "\u6682\u505c\u4e2d"

    goto :goto_1

    :cond_4
    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const-string p1, "\u7b49\u5f85\u4e0b\u8f7d"

    goto :goto_1

    :cond_5
    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const-string p1, "\u4e0b\u8f7d\u4e2d"

    goto :goto_1

    :cond_6
    :pswitch_0
    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p3, Lcom/amap/api/col/l3s/fw$a;->c:Landroid/widget/TextView;

    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
