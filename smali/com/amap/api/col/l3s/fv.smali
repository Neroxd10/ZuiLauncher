.class public final Lcom/amap/api/col/l3s/fv;
.super Landroid/widget/BaseExpandableListAdapter;
.source ""

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fv$a;
    }
.end annotation


# instance fields
.field private a:[Z

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;",
            "Lcom/amap/api/maps/offlinemap/OfflineMapManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3s/fv;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fv;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fv;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/amap/api/col/l3s/fv;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-object p3, p0, Lcom/amap/api/col/l3s/fv;->e:Landroid/content/Context;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/fv;->a:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3s/fv;->b:I

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/fv;->b:I

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

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

    check-cast p3, Lcom/amap/api/col/l3s/fv$a;

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amap/api/col/l3s/fv$a;

    invoke-direct {p3, p0}, Lcom/amap/api/col/l3s/fv$a;-><init>(Lcom/amap/api/col/l3s/fv;)V

    new-instance p4, Lcom/amap/api/col/l3s/fz;

    iget-object p5, p0, Lcom/amap/api/col/l3s/fv;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fv;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {p4, p5, v0}, Lcom/amap/api/col/l3s/fz;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Lcom/amap/api/col/l3s/fz;->a(I)V

    invoke-virtual {p4}, Lcom/amap/api/col/l3s/fz;->a()Landroid/view/View;

    move-result-object p5

    iput-object p4, p3, Lcom/amap/api/col/l3s/fv$a;->a:Lcom/amap/api/col/l3s/fz;

    invoke-virtual {p5, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p4, p5

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/fv;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object p1, p3, Lcom/amap/api/col/l3s/fv$a;->a:Lcom/amap/api/col/l3s/fz;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/fz;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fv;->getGroupCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/fv;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fv;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/Province;->getProvinceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGroupCount()I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/fv;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fv;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/amap/api/col/l3s/fv;->e:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/amap/api/col/l3s/fv;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fv;->a:[Z

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

    const/4 p0, 0x1

    return p0
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onGroupCollapse(I)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fv;->a:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, p1

    return-void
.end method

.method public final onGroupExpand(I)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fv;->a:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method
