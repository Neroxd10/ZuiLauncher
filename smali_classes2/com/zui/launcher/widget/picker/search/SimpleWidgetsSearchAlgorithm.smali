.class public final Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/search/SearchAlgorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/launcher/search/SearchAlgorithm<",
        "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/zui/launcher/popup/PopupDataProvider;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/popup/PopupDataProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->b:Lcom/zui/launcher/popup/PopupDataProvider;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;->getInstance()Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/widget/picker/search/a;

    invoke-direct {p2, p0, v0}, Lcom/zui/launcher/widget/picker/search/a;-><init>(Ljava/lang/String;Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;Lcom/zui/launcher/model/WidgetItem;)Z
    .locals 0

    iget-object p2, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/zui/launcher/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    instance-of p0, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    return p0
.end method

.method static synthetic e(Ljava/lang/String;Ljava/util/ArrayList;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)V
    .locals 2

    iget-object v0, p2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;

    iget-object v1, p2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object p2, p2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p0}, Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;-><init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getFilteredWidgets(Lcom/zui/launcher/popup/PopupDataProvider;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/popup/PopupDataProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/zui/launcher/widget/picker/search/c;->a:Lcom/zui/launcher/widget/picker/search/c;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/zui/launcher/widget/picker/search/d;

    invoke-direct {v1, p1, v0}, Lcom/zui/launcher/widget/picker/search/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/zui/launcher/search/SearchCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/search/SearchCallback<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->b:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-static {v0, p1}, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->getFilteredWidgets(Lcom/zui/launcher/popup/PopupDataProvider;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->a:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/widget/picker/search/b;

    invoke-direct {v1, p2, p1, v0}, Lcom/zui/launcher/widget/picker/search/b;-><init>(Lcom/zui/launcher/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
