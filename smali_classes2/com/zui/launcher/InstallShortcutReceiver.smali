.class public Lcom/zui/launcher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/InstallShortcutReceiver$c;,
        Lcom/zui/launcher/InstallShortcutReceiver$d;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_PAUSED:I = 0x1

.field public static final FLAG_BULK_ADD:I = 0x4

.field public static final FLAG_DRAG_AND_DROP:I = 0x4

.field public static final FLAG_LOADER_RUNNING:I = 0x2

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/zui/launcher/LauncherAppState;)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/InstallShortcutReceiver;->f(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/zui/launcher/LauncherAppState;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$d;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/zui/launcher/InstallShortcutReceiver$d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "apps_to_install"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    :goto_0
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-----InstallShortcutReceiver----addToQueue-----: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallShortcutReceiver"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lcom/zui/launcher/ItemInfo;)Z
    .locals 4

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-ne v3, v1, :cond_0

    iget-object v2, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Lcom/zui/launcher/InstallShortcutReceiver$d;)Lcom/zui/launcher/InstallShortcutReceiver$d;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/InstallShortcutReceiver$d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-static {v0}, Lcom/zui/launcher/util/PackageManagerHelper;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    iget-object v2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    new-instance v1, Lcom/zui/launcher/InstallShortcutReceiver$d;

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    return-object v1
.end method

.method public static disableAndFlushInstallQueue(ILandroid/content/Context;)V
    .locals 1

    sget v0, Lcom/zui/launcher/InstallShortcutReceiver;->a:I

    not-int p0, p0

    and-int/2addr p0, v0

    sput p0, Lcom/zui/launcher/InstallShortcutReceiver;->a:I

    invoke-static {p1}, Lcom/zui/launcher/InstallShortcutReceiver;->i(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/content/Intent;)Lcom/zui/launcher/InstallShortcutReceiver$d;
    .locals 5

    const-class v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-static {p1, v1, v0}, Lcom/zui/launcher/InstallShortcutReceiver;->l(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Invalid install shortcut intent"

    const-string v3, "InstallShortcutReceiver"

    if-eqz v0, :cond_3

    const-class v0, Landroid/content/Intent$ShortcutIconResource;

    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p1, v4, v0}, Lcom/zui/launcher/InstallShortcutReceiver;->l(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Landroid/graphics/Bitmap;

    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-static {p1, v4, v0}, Lcom/zui/launcher/InstallShortcutReceiver;->l(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v0, p1, v4, p0}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V

    iget-object p0, v0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/zui/launcher/InstallShortcutReceiver$d;->g:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/zui/launcher/InstallShortcutReceiver;->d(Lcom/zui/launcher/InstallShortcutReceiver$d;)Lcom/zui/launcher/InstallShortcutReceiver$d;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_1
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static enableInstallQueue(I)V
    .locals 1

    sget v0, Lcom/zui/launcher/InstallShortcutReceiver;->a:I

    or-int/2addr p0, v0

    sput p0, Lcom/zui/launcher/InstallShortcutReceiver;->a:I

    return-void
.end method

.method private static f(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/zui/launcher/LauncherAppState;)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 6

    const-string v0, "InstallShortcutReceiver"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Can\'t construct WorkspaceItemInfo with null data"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v2, :cond_1

    const-string p0, "Can\'t construct WorkspaceItemInfo with null intent"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    iput-object p1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p1

    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v4, p0, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v4, :cond_3

    check-cast p0, Landroid/content/Intent$ShortcutIconResource;

    iput-object p0, v0, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    iget-object p1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->applyOriginalFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    iget-object p0, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget p1, v1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {p0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public static fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/InstallShortcutReceiver;->e(Landroid/content/Context;Landroid/content/Intent;)Lcom/zui/launcher/InstallShortcutReceiver$d;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/InstallShortcutReceiver$d;->b()Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    :goto_0
    return-object p0
.end method

.method private static g(Ljava/lang/String;Landroid/content/Context;)Lcom/zui/launcher/InstallShortcutReceiver$d;
    .locals 8

    const-string v0, "isAppShortcut"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/zui/launcher/InstallShortcutReceiver$c;

    invoke-direct {v2, p0, p1, v1}, Lcom/zui/launcher/InstallShortcutReceiver$c;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$a;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    const-class p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    iget-object v4, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    iget-object v5, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    return-object v0

    :cond_0
    const-string p0, "isDeepShortcut"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object p0

    iget-object v0, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    const-string v6, "shortcut_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v2, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4, v2}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    return-object v0

    :cond_2
    const-string p0, "isAppWidget"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    const-string v0, "appWidgetId"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v2, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    invoke-virtual {v3, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-direct {v2, v0, p0, p1}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    return-object v2

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.INTENT"

    iget-object v5, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "icon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "iconResource"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "iconResourcePackage"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "android.intent.extra.shortcut.ICON"

    :goto_1
    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v5, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    iget-object v2, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    invoke-direct {v0, p0, p1, v2}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/os/UserHandle;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    iget-object v2, v2, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    invoke-direct {v0, p0, v2, p1}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception reading shortcut to add: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallShortcutReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "apps_to_install"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v4, Lcom/zui/launcher/InstallShortcutReceiver$c;

    invoke-direct {v4, v2, p0, v3}, Lcom/zui/launcher/InstallShortcutReceiver$c;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$a;)V

    const-string v2, "isDeepShortcut"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v4, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    iget-object v4, v4, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    invoke-static {v2, v4}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading shortcut to add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "InstallShortcutReceiver"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static h(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    return-object p0

    :cond_0
    :goto_0
    return-object p2
.end method

.method static i(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------installshortcutreceiver  flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/launcher/InstallShortcutReceiver;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallShortcutReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/zui/launcher/InstallShortcutReceiver;->a:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/u0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/u0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static j(Landroid/content/Context;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "apps_to_install"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting and clearing APPS_PENDING_INSTALL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InstallShortcutReceiver"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, p0}, Lcom/zui/launcher/InstallShortcutReceiver;->g(Ljava/lang/String;Landroid/content/Context;)Lcom/zui/launcher/InstallShortcutReceiver$d;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, v7, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-static {v8}, Lcom/zui/launcher/InstallShortcutReceiver;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v7, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, v7, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring shortcut for absent package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/zui/launcher/InstallShortcutReceiver$d;->b()Landroid/util/Pair;

    move-result-object v8

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/zui/launcher/ItemInfo;

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, v8, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v9, :cond_4

    invoke-static {p0, v8}, Lcom/zui/launcher/Utilities;->isLauncherActivity(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring is not LauncherActivity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Lcom/zui/launcher/InstallShortcutReceiver;->c(Lcom/zui/launcher/ItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v7, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v9, Lcom/zui/launcher/InstallShortcutReceiver$a;

    invoke-direct {v9, p0, v8}, Lcom/zui/launcher/InstallShortcutReceiver$a;-><init>(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v7, v9}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    instance-of v9, v8, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v9, :cond_7

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zui/launcher/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    sget-object v9, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v10, Lcom/zui/launcher/InstallShortcutReceiver$b;

    invoke-direct {v10, p0, v8}, Lcom/zui/launcher/InstallShortcutReceiver$b;-><init>(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v9, v10}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    invoke-virtual {v7}, Lcom/zui/launcher/InstallShortcutReceiver$d;->b()Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method private static k(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static l(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

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

.method static synthetic m(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/InstallShortcutReceiver;->j(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic n(Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/InstallShortcutReceiver;->b(Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$d;)V

    return-void
.end method

.method private static o(Lcom/zui/launcher/InstallShortcutReceiver$d;Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/v0;

    invoke-direct {v1, p1, p0}, Lcom/zui/launcher/v0;-><init>(Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$d;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/zui/launcher/InstallShortcutReceiver;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static queueApplication(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-static {v0, p2}, Lcom/zui/launcher/InstallShortcutReceiver;->o(Lcom/zui/launcher/InstallShortcutReceiver$d;Landroid/content/Context;)V

    return-void
.end method

.method public static queueShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/zui/launcher/InstallShortcutReceiver;->o(Lcom/zui/launcher/InstallShortcutReceiver$d;Landroid/content/Context;)V

    return-void
.end method

.method public static queueWidget(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/InstallShortcutReceiver$d;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    invoke-static {v0, p2}, Lcom/zui/launcher/InstallShortcutReceiver;->o(Lcom/zui/launcher/InstallShortcutReceiver$d;Landroid/content/Context;)V

    return-void
.end method

.method public static removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertWorkerThread()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apps_to_install"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPS_PENDING_INSTALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", removing packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InstallShortcutReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :try_start_0
    new-instance v7, Lcom/zui/launcher/InstallShortcutReceiver$c;

    invoke-direct {v7, v6, p0, v2}, Lcom/zui/launcher/InstallShortcutReceiver$c;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$a;)V

    iget-object v6, v7, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    invoke-static {v6}, Lcom/zui/launcher/InstallShortcutReceiver;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v7, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    invoke-virtual {p2, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading shortcut to add: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/zui/launcher/InstallShortcutReceiver;->e(Landroid/content/Context;Landroid/content/Intent;)Lcom/zui/launcher/InstallShortcutReceiver$d;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/InstallShortcutReceiver$d;->c()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {p2, p1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring malicious intent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallShortcutReceiver"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/zui/launcher/InstallShortcutReceiver;->o(Lcom/zui/launcher/InstallShortcutReceiver$d;Landroid/content/Context;)V

    :cond_2
    return-void
.end method
