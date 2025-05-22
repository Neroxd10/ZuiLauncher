.class public Lcom/zui/launcher/popup/PopupPopulator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAX_SHORTCUTS:I = 0x4

.field public static final MAX_SHORTCUTS_IF_NOTIFICATIONS:I = 0x2

.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/popup/PopupPopulator$a;

    invoke-direct {v0}, Lcom/zui/launcher/popup/PopupPopulator$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/popup/PopupPopulator;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/zui/launcher/notification/NotificationInfo;
    .locals 1

    new-instance v0, Lcom/zui/launcher/notification/NotificationInfo;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/launcher/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/zui/launcher/ItemInfo;)V

    return-object v0
.end method

.method static synthetic b(Lcom/zui/launcher/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->applyNotificationInfos(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/shortcuts/DeepShortcutView;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/popup/PopupContainerWithArrow;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->applyShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/popup/PopupContainerWithArrow;)V

    return-void
.end method

.method public static createUpdateRunnable(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/os/Handler;Lcom/zui/launcher/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/BaseDraggingActivity;",
            "Lcom/zui/launcher/ItemInfo;",
            "Landroid/os/Handler;",
            "Lcom/zui/launcher/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/shortcuts/DeepShortcutView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationKeyData;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v6, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    new-instance v9, Lcom/zui/launcher/popup/t;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/popup/t;-><init>(Ljava/util/List;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/os/Handler;Lcom/zui/launcher/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V

    return-object v9
.end method

.method static synthetic d(Ljava/util/List;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/os/Handler;Lcom/zui/launcher/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zui/launcher/notification/NotificationListener;->getInstanceIfConnected()Lcom/zui/launcher/notification/NotificationListener;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/zui/launcher/notification/NotificationListener;->getNotificationsForKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/popup/s;

    invoke-direct {v1, p1, p2}, Lcom/zui/launcher/popup/s;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    new-instance v0, Lcom/zui/launcher/popup/r;

    invoke-direct {v0, p4, p2}, Lcom/zui/launcher/popup/r;-><init>(Lcom/zui/launcher/popup/PopupContainerWithArrow;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance p2, Lcom/zui/launcher/shortcuts/ShortcutRequest;

    invoke-direct {p2, p1, p5}, Lcom/zui/launcher/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {p2, p6}, Lcom/zui/launcher/shortcuts/ShortcutRequest;->withContainer(Landroid/content/ComponentName;)Lcom/zui/launcher/shortcuts/ShortcutRequest;

    move-result-object p2

    const/16 p5, 0x9

    invoke-virtual {p2, p5}, Lcom/zui/launcher/shortcuts/ShortcutRequest;->query(I)Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p5

    const/4 p6, 0x0

    if-eqz p5, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/notification/NotificationKeyData;

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    :goto_1
    invoke-static {p2, p0}, Lcom/zui/launcher/popup/PopupPopulator;->sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p2

    move p5, p6

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_3

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_3

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    new-instance v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v1, v0, p1}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-virtual {p2, v1, v0, p6}, Lcom/zui/launcher/icons/IconCache;->getUnbadgedShortcutIcon(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Z)V

    iput p5, v1, Lcom/zui/launcher/ItemInfo;->rank:I

    const/16 v2, -0x6b

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-interface {p7, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    new-instance v3, Lcom/zui/launcher/popup/q;

    invoke-direct {v3, v2, v1, v0, p4}, Lcom/zui/launcher/popup/q;-><init>(Lcom/zui/launcher/shortcuts/DeepShortcutView;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/popup/PopupContainerWithArrow;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    sget-object p1, Lcom/zui/launcher/popup/PopupPopulator;->a:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    return-object p0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v0, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v3, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v5, v3

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p1
.end method
