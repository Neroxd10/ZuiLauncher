.class public Lcom/zui/launcher/model/WidgetsModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/model/WidgetsModel$b;,
        Lcom/zui/launcher/model/WidgetsModel$c;,
        Lcom/zui/launcher/model/WidgetsModel$d;
    }
.end annotation


# static fields
.field public static final GO_DISABLE_NOTIFICATION_DOTS:Z = false

.field public static final GO_DISABLE_WIDGETS:Z = false

.field private static final b:Landroid/content/ComponentName;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/model/PackageItemInfo;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.android.systemui"

    const-string v1, ".people.widget.PeopleSpaceWidgetProvider"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/WidgetsModel;->b:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/model/WidgetsModel$c;
    .locals 1

    sget-object p0, Lcom/zui/launcher/model/WidgetsModel;->b:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/zui/launcher/model/WidgetsModel$c;

    const/4 v0, 0x1

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/model/WidgetsModel$c;-><init>(ILandroid/os/UserHandle;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/zui/launcher/model/WidgetsModel$c;

    iget-object v0, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/model/WidgetsModel$c;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/model/WidgetItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Ljava/util/Map;Lcom/zui/launcher/model/PackageItemInfo;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/zui/launcher/model/r1;->a:Lcom/zui/launcher/model/r1;

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/PackageUserKey;

    iget-object v1, p1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p1}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private declared-synchronized e(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 3
    .param p3    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;",
            "Lcom/zui/launcher/LauncherAppState;",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zui/launcher/model/WidgetsModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/model/WidgetsModel$b;-><init>(Lcom/zui/launcher/model/WidgetsModel$a;)V

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    new-instance v2, Lcom/zui/launcher/model/WidgetsModel$c;

    invoke-direct {v2, p3}, Lcom/zui/launcher/model/WidgetsModel$c;-><init>(Lcom/zui/launcher/util/PackageUserKey;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/model/WidgetsModel$b;->a(Lcom/zui/launcher/model/WidgetsModel$c;)Lcom/zui/launcher/model/PackageItemInfo;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p3, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/model/WidgetsModel$d;

    invoke-direct {v1, p2}, Lcom/zui/launcher/model/WidgetsModel$d;-><init>(Lcom/zui/launcher/LauncherAppState;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/model/t1;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/model/t1;-><init>(Lcom/zui/launcher/model/WidgetsModel;Lcom/zui/launcher/model/WidgetsModel$b;)V

    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p1

    invoke-virtual {v0}, Lcom/zui/launcher/model/WidgetsModel$b;->b()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/model/PackageItemInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIconForApp(Lcom/zui/launcher/model/PackageItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public synthetic d(Lcom/zui/launcher/model/WidgetsModel$b;Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/model/PackageItemInfo;
    .locals 0

    invoke-direct {p0, p2}, Lcom/zui/launcher/model/WidgetsModel;->a(Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/model/WidgetsModel$c;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/model/WidgetsModel$b;->a(Lcom/zui/launcher/model/WidgetsModel$c;)Lcom/zui/launcher/model/PackageItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getAllWidgetsWithoutShortcuts()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    new-instance v2, Lcom/zui/launcher/model/s1;

    invoke-direct {v2, v0}, Lcom/zui/launcher/model/s1;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;)Lcom/zui/launcher/model/WidgetItem;
    .locals 3

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    new-instance v0, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/WidgetItem;

    iget-object v2, v1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public declared-synchronized getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/zui/launcher/compat/AlphabeticIndexCompat;

    invoke-direct {v1, p1}, Lcom/zui/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/pm/UserCache;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/zui/launcher/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v3

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zui/launcher/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;)Lcom/zui/launcher/model/WidgetItem;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lcom/zui/launcher/model/PackageItemInfo;

    const-string v4, ""

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;I)V

    const-string v4, "recommend"

    iput-object v4, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v3, v2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    new-instance v3, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    const-string v4, ""

    invoke-direct {v3, v2, v4, p1}, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;-><init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    const-string v4, ""

    goto :goto_2

    :cond_3
    iget-object v4, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/zui/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance v5, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    invoke-direct {v5, v3, v4, v2}, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPackageIconsUpdated(Ljava/util/Set;Landroid/os/UserHandle;Lcom/zui/launcher/LauncherAppState;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Lcom/zui/launcher/LauncherAppState;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetsModel;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/WidgetItem;

    iget-object v4, v3, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-eqz v4, :cond_1

    new-instance v3, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v5

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/PackageManager;)V

    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz v4, :cond_2

    new-instance v3, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/LenovoWidgetsProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/zui/launcher/model/WidgetItem;

    iget-object v3, v3, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v5

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;Lcom/zui/launcher/icons/IconCache;)V

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public update(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 9
    .param p2    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/LauncherAppState;",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertWorkerThread()V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-direct {v5, v0}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getAllProviders(Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v0, v6}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v6

    new-instance v7, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v8

    invoke-direct {v7, v6, v3, v8}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;Lcom/zui/launcher/icons/IconCache;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p2, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p2, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/FetchLenovoWidgetUtil;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getAllReloadLeosWidgets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    new-instance v7, Lcom/zui/launcher/model/WidgetItem;

    invoke-direct {v7, v6, v3}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/LenovoWidgetsProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0, p2}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->queryList(Landroid/content/Context;Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    new-instance v5, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v6

    invoke-direct {v5, v3, v6, v4}, Lcom/zui/launcher/model/WidgetItem;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1, p1, p2}, Lcom/zui/launcher/model/WidgetsModel;->e(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/util/PackageUserKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->removeObsoletePreviews(Ljava/util/ArrayList;Lcom/zui/launcher/util/PackageUserKey;)V

    return-object v2

    :cond_4
    throw p0
.end method
