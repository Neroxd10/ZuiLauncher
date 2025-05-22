.class public final Lcom/zui/launcher/DownloadSpan$ComparatorValues;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DownloadSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparatorValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/util/LinkedList<",
        "Lcom/zui/launcher/WorkspaceItemInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->a:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method private a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->container:I

    if-eq v1, v2, :cond_5

    if-ltz v1, :cond_4

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object p1, p1, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/FolderInfo;

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/FolderInfo;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    iget p1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long v0, p1

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long p1, p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->c(JJ)I

    move-result p0

    return p0

    :cond_5
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-eq v1, v2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->d(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0

    :cond_6
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-eq v1, v2, :cond_7

    invoke-direct {p0, v1, v2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->b(II)I

    move-result p0

    return p0

    :cond_7
    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-eq p1, p2, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->b(II)I

    move-result p0

    return p0

    :cond_8
    return v0
.end method

.method private b(II)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private c(JJ)I
    .locals 0

    cmp-long p0, p1, p3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private d(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_3

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->b(II)I

    move-result p0

    return p0

    :cond_3
    const/16 v2, -0x64

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, p2}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->b(II)I

    move-result p0

    return p0

    :cond_4
    if-lez v1, :cond_5

    sget-object p1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object p1, p1, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/FolderInfo;

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/FolderInfo;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0

    :cond_5
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/LinkedList;

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-nez p1, :cond_4

    return v1

    :cond_4
    if-nez p2, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    return v0

    :cond_8
    if-nez p1, :cond_9

    return v1

    :cond_9
    if-nez p2, :cond_a

    return v2

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;->a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
