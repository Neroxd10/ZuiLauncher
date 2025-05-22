.class final Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/picker/WidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

.field private final c:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

.field final synthetic e:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;I)V
    .locals 8

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->e:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p2

    new-instance v7, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v3

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v4

    move-object v0, v7

    move-object v5, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;Lcom/zui/launcher/icons/IconCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v7, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    const/4 p2, 0x1

    invoke-virtual {v7, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a:I

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->g(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->f(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setFilter(Ljava/util/function/Predicate;)V

    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->c:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a:I

    return p0
.end method


# virtual methods
.method d(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->c:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->e:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->setHeaderViewDimensionsProvider(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setApplyBitmapDeferred(ZLandroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->e:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->h(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    return-void
.end method
