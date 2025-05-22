.class public Lcom/zui/launcher/model/BgDataModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;
    }
.end annotation


# instance fields
.field public final appWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final autoInstallApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final deepShortcutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final folders:Lcom/zui/launcher/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public hasShortcutHostPermission:Z

.field public final itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lastBindId:I

.field public final leosWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LenovoWidgetViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mCacheList:Lcom/zui/launcher/CacheList;

.field public final pinnedShortcutCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/shortcuts/ShortcutKey;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public final pinnedShortcutOtherDb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/shortcuts/ShortcutKey;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public final sBgZuiLauncherApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final sBgZuiLauncherMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public sRecommendWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

.field public final workspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    new-instance v0, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    new-instance v0, Lcom/zui/launcher/model/WidgetsModel;

    invoke-direct {v0}, Lcom/zui/launcher/model/WidgetsModel;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    new-instance v0, Lcom/zui/launcher/CacheList;

    invoke-direct {v0}, Lcom/zui/launcher/CacheList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sRecommendWidgets:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherApps:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->pinnedShortcutOtherDb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zui/launcher/logging/DumpTargetWrapper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/logging/DumpTargetWrapper;-><init>(II)V

    new-instance v1, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/model/BgDataModel;->collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-virtual {v3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v5

    new-instance v6, Lcom/zui/launcher/logging/DumpTargetWrapper;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v4}, Lcom/zui/launcher/logging/DumpTargetWrapper;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v5, -0x64

    const/16 v6, -0x65

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/FolderInfo;

    new-instance v7, Lcom/zui/launcher/logging/DumpTargetWrapper;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/zui/launcher/logging/DumpTargetWrapper;-><init>(II)V

    invoke-virtual {v7, v4}, Lcom/zui/launcher/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    iget-object v8, v4, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/WorkspaceItemInfo;

    new-instance v10, Lcom/zui/launcher/logging/DumpTargetWrapper;

    invoke-direct {v10, v9}, Lcom/zui/launcher/logging/DumpTargetWrapper;-><init>(Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v10, v9}, Lcom/zui/launcher/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v7, v10}, Lcom/zui/launcher/logging/DumpTargetWrapper;->add(Lcom/zui/launcher/logging/DumpTargetWrapper;)V

    goto :goto_2

    :cond_1
    iget v8, v4, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v8, v6, :cond_2

    invoke-virtual {v0, v7}, Lcom/zui/launcher/logging/DumpTargetWrapper;->add(Lcom/zui/launcher/logging/DumpTargetWrapper;)V

    goto :goto_3

    :cond_2
    iget v6, v4, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v6, v5, :cond_3

    iget v4, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/logging/DumpTargetWrapper;

    invoke-virtual {v4, v7}, Lcom/zui/launcher/logging/DumpTargetWrapper;->add(Lcom/zui/launcher/logging/DumpTargetWrapper;)V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    instance-of v7, v4, Lcom/zui/launcher/FolderInfo;

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    new-instance v7, Lcom/zui/launcher/logging/DumpTargetWrapper;

    invoke-direct {v7, v4}, Lcom/zui/launcher/logging/DumpTargetWrapper;-><init>(Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v7, v4}, Lcom/zui/launcher/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v8, v6, :cond_6

    invoke-virtual {v0, v7}, Lcom/zui/launcher/logging/DumpTargetWrapper;->add(Lcom/zui/launcher/logging/DumpTargetWrapper;)V

    goto :goto_5

    :cond_6
    iget v8, v4, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v8, v5, :cond_7

    iget v4, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/logging/DumpTargetWrapper;

    invoke-virtual {v4, v7}, Lcom/zui/launcher/logging/DumpTargetWrapper;->add(Lcom/zui/launcher/logging/DumpTargetWrapper;)V

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_6
    iget-object v4, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    new-instance v7, Lcom/zui/launcher/logging/DumpTargetWrapper;

    invoke-direct {v7, v4}, Lcom/zui/launcher/logging/DumpTargetWrapper;-><init>(Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v7, v4}, Lcom/zui/launcher/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v8, v6, :cond_9

    invoke-virtual {v0, v7}, Lcom/zui/launcher/logging/DumpTargetWrapper;->add(Lcom/zui/launcher/logging/DumpTargetWrapper;)V

    goto :goto_7

    :cond_9
    iget v8, v4, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v8, v5, :cond_a

    iget v4, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/logging/DumpTargetWrapper;

    invoke-virtual {v4, v7}, Lcom/zui/launcher/logging/DumpTargetWrapper;->add(Lcom/zui/launcher/logging/DumpTargetWrapper;)V

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/zui/launcher/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    :goto_8
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/logging/DumpTargetWrapper;

    invoke-virtual {v4}, Lcom/zui/launcher/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    const-string v0, "--debug"

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_e

    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    invoke-static {p4}, Lcom/zui/launcher/logging/DumpTargetWrapper;->getDumpTargetStr(Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    monitor-exit p0

    return-void

    :cond_e
    :try_start_1
    new-instance p1, Lcom/zui/launcher/model/nano/LauncherDumpProto$LauncherImpression;

    invoke-direct {p1}, Lcom/zui/launcher/model/nano/LauncherDumpProto$LauncherImpression;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    iput-object p3, p1, Lcom/zui/launcher/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v2, p3, :cond_f

    iget-object p3, p1, Lcom/zui/launcher/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/model/nano/LauncherDumpProto$DumpTarget;

    aput-object p4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/FileOutputStream;->write([B)V

    const-string p2, "BgDataModel"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Bytes"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_c

    :catch_0
    move-exception p1

    :goto_b
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_c

    :catchall_0
    move-exception p1

    goto :goto_d

    :catch_1
    move-exception p1

    :try_start_5
    const-string p2, "BgDataModel"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception writing dumpsys --proto e->"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_c

    :catch_2
    move-exception p1

    goto :goto_b

    :goto_c
    monitor-exit p0

    return-void

    :goto_d
    :try_start_7
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_e

    :catch_3
    move-exception p2

    :try_start_8
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BgDataModel"

    const-string p2, "Failed to unpin shortcut"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addAutoInstallApps(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addItem(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    move-object v1, p2

    check-cast v1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    move-object v1, p2

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->id:I

    move-object v2, p2

    check-cast v2, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    :pswitch_2
    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_5

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to a folder that  doesn\'t exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BgDataModel"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/BgDataModel;->findOrMakeFolder(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    goto :goto_1

    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v0, 0x9

    if-ne p3, v0, :cond_7

    iget-object p2, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic b(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sRecommendWidgets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAutoInstallApps()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zui/launcher/util/IntSet;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntSet;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_0

    iget v2, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/IntSet;->add(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntSet;->add(I)V

    :cond_3
    invoke-virtual {v0}, Lcom/zui/launcher/util/IntSet;->getArray()Lcom/zui/launcher/util/IntArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "--proto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/model/BgDataModel;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Data Model:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ---- workspace items "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---- appwidget items "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p3

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---- folder items "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p3

    :goto_2
    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---- items id map "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p3

    :goto_3
    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---- leosWidget items "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p3

    :goto_4
    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    array-length v0, p4

    if-lez v0, :cond_6

    aget-object p3, p4, p3

    const-string p4, "--all"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "shortcut counts "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string p1, "BgDataModel"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findFolder(I)Lcom/zui/launcher/FolderInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/FolderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findOrMakeFolder(I)Lcom/zui/launcher/FolderInfo;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/FolderInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/zui/launcher/FolderInfo;-><init>()V

    iput p1, v0, Lcom/zui/launcher/ItemInfo;->id:I

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized getAllWorkspaceItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoInstallFlag(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPackageNameByIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public declared-synchronized modifyAutoInstallFlag(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAutoInstallApps(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v2, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/zui/launcher/model/BgDataModel;->leosWidgets:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    :pswitch_2
    iget-object v2, p0, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    :goto_2
    :pswitch_3
    iget v2, v1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "zui.launcher.key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/zui/launcher/Utilities;->removeUsageStat(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    goto :goto_1

    :goto_3
    iget-object v2, p0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_4
    new-instance p2, Lcom/zui/launcher/model/t;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/model/t;-><init>(Lcom/zui/launcher/model/BgDataModel;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public varargs declared-synchronized removeItem(Landroid/content/Context;[Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveAutoInstallApps()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->saveAutoInstallApps(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/ComponentKey;

    iget-object v2, v1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_4

    move p3, v0

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_2

    new-instance p3, Lcom/zui/launcher/util/ComponentKey;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object p2, p0, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr v0, p2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateShortcutPinnedState(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {v0}, Lcom/zui/launcher/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zui/launcher/shortcuts/ShortcutRequest;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/zui/launcher/shortcuts/ShortcutRequest;->query(I)Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/model/v;->a:Lcom/zui/launcher/model/v;

    sget-object v2, Lcom/zui/launcher/model/w1;->a:Lcom/zui/launcher/model/w1;

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/launcher/model/w;

    invoke-direct {v2, v1}, Lcom/zui/launcher/model/w;-><init>(Ljava/util/stream/Stream$Builder;)V

    invoke-virtual {p0, p2, v2}, Lcom/zui/launcher/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/model/s;->a:Lcom/zui/launcher/model/s;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/model/x1;->a:Lcom/zui/launcher/model/x1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-virtual {v2, p2}, Lcom/zui/launcher/model/ItemInstallQueue;->getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/model/y1;->a:Lcom/zui/launcher/model/y1;

    sget-object v3, Lcom/zui/launcher/model/o1;->a:Lcom/zui/launcher/model/o1;

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-interface {v4, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :cond_3
    :try_start_2
    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v2, v5, p2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "BgDataModel"

    const-string v4, "Failed to pin shortcut"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/model/u;

    invoke-direct {v1, p1, p2}, Lcom/zui/launcher/model/u;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
