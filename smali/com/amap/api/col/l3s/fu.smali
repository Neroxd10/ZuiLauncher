.class public final Lcom/amap/api/col/l3s/fu;
.super Landroid/widget/BaseExpandableListAdapter;
.source ""

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fu$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Z

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/col/l3s/fz;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/amap/api/col/l3s/gb;

.field private g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/gb;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/col/l3s/gb;",
            "Lcom/amap/api/maps/offlinemap/OfflineMapManager;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fu;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fu;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fu;->f:Lcom/amap/api/col/l3s/gb;

    iput-object p3, p0, Lcom/amap/api/col/l3s/fu;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/fu;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fu;->e:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/fu;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getDownloadedCityList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/fu;->b:[Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fu;)Lcom/amap/api/col/l3s/gb;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->f:Lcom/amap/api/col/l3s/gb;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getDownloadedCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/fu;->b:[Z

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getDownloadedCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/fu;->b:[Z

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getDownloadedCityList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amap/api/col/l3s/fu$a;

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amap/api/col/l3s/fu$a;

    invoke-direct {p3, p0}, Lcom/amap/api/col/l3s/fu$a;-><init>(Lcom/amap/api/col/l3s/fu;)V

    new-instance p4, Lcom/amap/api/col/l3s/fz;

    iget-object p5, p0, Lcom/amap/api/col/l3s/fu;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fu;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {p4, p5, v0}, Lcom/amap/api/col/l3s/fz;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object p4, p0, Lcom/amap/api/col/l3s/fu;->d:Lcom/amap/api/col/l3s/fz;

    const/4 p5, 0x2

    invoke-virtual {p4, p5}, Lcom/amap/api/col/l3s/fz;->a(I)V

    iget-object p4, p0, Lcom/amap/api/col/l3s/fu;->d:Lcom/amap/api/col/l3s/fz;

    invoke-virtual {p4}, Lcom/amap/api/col/l3s/fz;->a()Landroid/view/View;

    move-result-object p4

    iget-object p5, p0, Lcom/amap/api/col/l3s/fu;->d:Lcom/amap/api/col/l3s/fz;

    iput-object p5, p3, Lcom/amap/api/col/l3s/fu$a;->a:Lcom/amap/api/col/l3s/fz;

    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object p5, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getDownloadedCityList()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getDownloadedCityList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object p2, p3, Lcom/amap/api/col/l3s/fu$a;->a:Lcom/amap/api/col/l3s/fz;

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3s/fz;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    new-instance p2, Lcom/amap/api/col/l3s/fu$1;

    invoke-direct {p2, p0, p1}, Lcom/amap/api/col/l3s/fu$1;-><init>(Lcom/amap/api/col/l3s/fu;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-virtual {p4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getDownloadedCityList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/Province;->getProvinceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/amap/api/col/l3s/fu;->c:Landroid/content/Context;

    const p3, 0x7f030003

    invoke-static {p2, p3}, Lcom/amap/api/col/l3s/gd;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/widget/RelativeLayout;

    :cond_0
    const p2, 0x7f070011

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p4, 0x7f070012

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->b:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/gd;->a()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f020005

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3s/gd;->a()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f020006

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p3
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onGroupCollapse(I)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->b:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, p1

    return-void
.end method

.method public final onGroupExpand(I)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fu;->b:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method
