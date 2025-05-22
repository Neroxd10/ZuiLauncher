.class public Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->a:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->a:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget p1, p1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->a:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-static {p0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->b(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)I

    move-result p0

    return p0
.end method
