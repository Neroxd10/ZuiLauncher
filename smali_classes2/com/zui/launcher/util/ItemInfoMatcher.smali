.class public interface abstract Lcom/zui/launcher/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic a(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Landroid/os/UserHandle;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-interface {p0, p2, p3}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2, p3}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

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

.method public static synthetic d(Ljava/util/HashSet;Landroid/os/UserHandle;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic e(Ljava/util/HashSet;Landroid/os/UserHandle;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic f(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic g(Ljava/util/HashSet;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic i(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static not(Lcom/zui/launcher/util/ItemInfoMatcher;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/o;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/o;-><init>(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    return-object v0
.end method

.method public static ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/zui/launcher/util/ItemInfoMatcher;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/p;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/util/p;-><init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static ofItemIds(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/zui/launcher/util/ItemInfoMatcher;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/u;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/util/u;-><init>(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/zui/launcher/util/ItemInfoMatcher;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/w;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/util/w;-><init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static ofShortcutKeys(Ljava/util/HashSet;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/shortcuts/ShortcutKey;",
            ">;)",
            "Lcom/zui/launcher/util/ItemInfoMatcher;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/t;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/t;-><init>(Ljava/util/HashSet;)V

    return-object v0
.end method

.method public static ofUser(Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/s;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/s;-><init>(Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public and(Lcom/zui/launcher/util/ItemInfoMatcher;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/r;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/util/r;-><init>(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/util/ItemInfoMatcher;)V

    return-object v0
.end method

.method public filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    instance-of v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1, v2}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/zui/launcher/FolderInfo;

    iget-object v1, v1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p0, v2, v3}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    instance-of v2, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v2, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-interface {p0, v1, v2}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public abstract matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
.end method

.method public matchesInfo(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1, v1}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public negate()Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/q;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/q;-><init>(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    return-object v0
.end method

.method public or(Lcom/zui/launcher/util/ItemInfoMatcher;)Lcom/zui/launcher/util/ItemInfoMatcher;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/v;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/util/v;-><init>(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/util/ItemInfoMatcher;)V

    return-object v0
.end method
