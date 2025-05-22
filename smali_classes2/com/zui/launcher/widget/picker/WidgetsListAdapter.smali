.class public Lcom/zui/launcher/widget/picker/WidgetsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""

# interfaces
.implements Lcom/zui/launcher/widget/picker/OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/zui/launcher/widget/picker/OnHeaderClickListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

.field private final c:Lcom/zui/launcher/widget/picker/WidgetsDiffReporter;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/launcher/recyclerview/ViewHolderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;

.field private final f:Lcom/zui/launcher/widget/picker/WidgetsListHeaderViewHolderBinder;

.field private final g:Lcom/zui/launcher/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

.field private final h:Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/zui/launcher/util/PackageUserKey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/util/function/Predicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/zui/launcher/util/PackageUserKey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final o:I

.field private p:I

.field private final q:Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;Lcom/zui/launcher/icons/IconCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 7

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-direct {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->h:Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->k:Lcom/zui/launcher/util/PackageUserKey;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->l:Ljava/util/function/Predicate;

    const/4 v0, 0x4

    iput v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p:I

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->a:Lcom/zui/launcher/Launcher;

    new-instance v0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-direct {v0, p3}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;-><init>(Lcom/zui/launcher/widget/WidgetPreviewLoader;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    new-instance p3, Lcom/zui/launcher/widget/picker/WidgetsDiffReporter;

    invoke-direct {p3, p4, p0}, Lcom/zui/launcher/widget/picker/WidgetsDiffReporter;-><init>(Lcom/zui/launcher/icons/IconCache;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->c:Lcom/zui/launcher/widget/picker/WidgetsDiffReporter;

    new-instance p3, Lcom/zui/launcher/widget/picker/b0;

    invoke-direct {p3, p1}, Lcom/zui/launcher/widget/picker/b0;-><init>(Landroid/content/Context;)V

    new-instance p4, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    move-object v0, p4

    move-object v1, p2

    move-object v2, p5

    move-object v3, p6

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/widget/picker/b0;Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->e:Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    const v1, 0x7f0a0418

    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p4, Lcom/zui/launcher/widget/picker/WidgetsListHeaderViewHolderBinder;

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    move-object v0, p4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/widget/picker/WidgetsListHeaderViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/widget/picker/b0;Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->f:Lcom/zui/launcher/widget/picker/WidgetsListHeaderViewHolderBinder;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    const v1, 0x7f0a0417

    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p4, Lcom/zui/launcher/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    move-object v0, p4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/widget/picker/WidgetsListSearchHeaderViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/widget/picker/b0;Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->g:Lcom/zui/launcher/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    const v1, 0x7f0a041a

    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0708c9

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->o:I

    new-instance p1, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/widget/picker/b0;Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->q:Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    const p2, 0x7f0a0419

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->o:I

    return p0
.end method

.method private b()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->clearAll()V

    return-void
.end method

.method private c(Ljava/util/OptionalInt;)Ljava/util/OptionalInt;
    .locals 1

    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/OptionalInt;
    .locals 2
    .param p1    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/widget/picker/r;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/widget/picker/r;-><init>(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;Lcom/zui/launcher/util/PackageUserKey;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;Lcom/zui/launcher/util/PackageUserKey;)Z
    .locals 1
    .param p0    # Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Header;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;Lcom/zui/launcher/util/PackageUserKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic g(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    instance-of p0, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    return p0
.end method

.method static synthetic h(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Lcom/zui/launcher/model/PackageItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    return-object p0
.end method

.method static synthetic i(Lcom/zui/launcher/model/PackageItemInfo;)Lcom/zui/launcher/util/PackageUserKey;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/PackageUserKey;

    iget-object v1, p0, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method static synthetic j(Lcom/zui/launcher/model/PackageItemInfo;)Lcom/zui/launcher/model/PackageItemInfo;
    .locals 0

    return-object p0
.end method

.method private static m(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;Lcom/zui/launcher/util/PackageUserKey;)Z
    .locals 3
    .param p0    # Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private n(Ljava/util/OptionalInt;Ljava/util/OptionalInt;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p2

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private o()Z
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/widget/picker/x;->a:Lcom/zui/launcher/widget/picker/x;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/widget/picker/t;->a:Lcom/zui/launcher/widget/picker/t;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/widget/picker/w;->a:Lcom/zui/launcher/widget/picker/w;

    sget-object v2, Lcom/zui/launcher/widget/picker/v;->a:Lcom/zui/launcher/widget/picker/v;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    new-instance v2, Lcom/zui/launcher/util/PackageUserKey;

    iget-object v3, v1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v4, v3, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v4, v3}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/PackageItemInfo;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private p()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->n:Lcom/zui/launcher/util/PackageUserKey;

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d(Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->c(Ljava/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/widget/picker/u;

    invoke-direct {v2, p0}, Lcom/zui/launcher/widget/picker/u;-><init>(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/widget/picker/s;

    invoke-direct {v2, p0}, Lcom/zui/launcher/widget/picker/s;-><init>(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->c:Lcom/zui/launcher/widget/picker/WidgetsDiffReporter;

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->h:Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-virtual {v2, v3, v1, v4}, Lcom/zui/launcher/widget/picker/WidgetsDiffReporter;->process(Ljava/util/ArrayList;Ljava/util/List;Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->n:Lcom/zui/launcher/util/PackageUserKey;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d(Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/OptionalInt;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->n(Ljava/util/OptionalInt;Ljava/util/OptionalInt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->n:Lcom/zui/launcher/util/PackageUserKey;

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic f(Lcom/zui/launcher/util/PackageUserKey;I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->e(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;Lcom/zui/launcher/util/PackageUserKey;)Z

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    iget-object v1, v1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/model/PackageItemInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    instance-of p1, p0, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    if-eqz p1, :cond_0

    const p0, 0x7f0a0418

    return p0

    :cond_0
    instance-of p1, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    if-eqz p1, :cond_1

    const p0, 0x7f0a0417

    return p0

    :cond_1
    instance-of p1, p0, Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;

    if-eqz p1, :cond_2

    const p0, 0x7f0a041a

    return p0

    :cond_2
    instance-of p1, p0, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    if-eqz p1, :cond_3

    const p0, 0x7f0a0419

    return p0

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewHolderBinder not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    iget-object p0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedHeaderPosition()Ljava/util/OptionalInt;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->k:Lcom/zui/launcher/util/PackageUserKey;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d(Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public synthetic k(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->l:Ljava/util/function/Predicate;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic l(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Header;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->k:Lcom/zui/launcher/util/PackageUserKey;

    invoke-static {p1, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;Lcom/zui/launcher/util/PackageUserKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;->withMaxSpanSize(I)Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;->withMaxSpanSize(I)Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter$a;-><init>(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/recyclerview/ViewHolderBinder;

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Lcom/zui/launcher/recyclerview/ViewHolderBinder;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0a03ab

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/recyclerview/ViewHolderBinder;

    invoke-interface {p0, p1}, Lcom/zui/launcher/recyclerview/ViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onHeaderClicked(ZLcom/zui/launcher/util/PackageUserKey;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->k:Lcom/zui/launcher/util/PackageUserKey;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->n:Lcom/zui/launcher/util/PackageUserKey;

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p()V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01b2

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    invoke-virtual {p0, p2, p3}, Lcom/zui/launcher/widget/XWidgetsBottomSheet;->populateAndShow(Lcom/zui/launcher/util/PackageUserKey;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/recyclerview/ViewHolderBinder;

    invoke-interface {p0, p1}, Lcom/zui/launcher/recyclerview/ViewHolderBinder;->unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public resetExpandedHeader()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->k:Lcom/zui/launcher/util/PackageUserKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->k:Lcom/zui/launcher/util/PackageUserKey;

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b()V

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p()V

    :cond_0
    return-void
.end method

.method public setApplyBitmapDeferred(ZLandroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->e:Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->setApplyBitmapDeferred(Z)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->q:Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->setApplyBitmapDeferred(Z)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->f:Lcom/zui/launcher/widget/picker/WidgetsListHeaderViewHolderBinder;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeaderViewHolderBinder;->setApplyBitmapDeferred(Z)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->g:Lcom/zui/launcher/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->setApplyBitmapDeferred(Z)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_3

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const v2, 0x7f0a0418

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const v2, 0x7f0a0419

    if-ne v1, v2, :cond_2

    :cond_0
    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;

    iget-object v1, v0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v2, v0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    invoke-virtual {v2}, Landroid/widget/TableRow;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v4, p1}, Lcom/zui/launcher/widget/WidgetCell;->setApplyBitmapDeferred(Z)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->l:Ljava/util/function/Predicate;

    return-void
.end method

.method public setMaxHorizontalSpansPerRow(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p:I

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p()V

    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->clearAll()V

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->h:Lcom/zui/launcher/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->p()V

    return-void
.end method

.method public setWidgetsOnSearch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->k:Lcom/zui/launcher/util/PackageUserKey;

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->b()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    return-void
.end method
