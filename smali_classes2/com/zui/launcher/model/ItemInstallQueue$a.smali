.class Lcom/zui/launcher/model/ItemInstallQueue$a;
.super Lcom/zui/launcher/ItemInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/ItemInstallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final f:Landroid/content/Intent;

.field g:Landroid/content/pm/ShortcutInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field h:Landroid/appwidget/AppWidgetProviderInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->h:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method static synthetic b(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    invoke-direct {v0, v1, p1}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/launcher/icons/IconCache;->getUnbadgedShortcutIcon(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Z)V

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->h:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v3, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Lcom/zui/launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p1

    iget v2, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v2, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget v2, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v3, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object p1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p1, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->h:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    iget-object v4, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v4}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p0, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput v2, v4, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, ""

    invoke-direct {v3, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zui/launcher/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v4, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget v0, v4, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v4, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0}, Lcom/zui/launcher/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v4, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    :goto_0
    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p1

    new-instance v3, Lcom/zui/launcher/model/b0;

    invoke-direct {v3, v0}, Lcom/zui/launcher/model/b0;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-virtual {p1, v4, v3, p0, v2}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lcom/zui/launcher/model/ItemInstallQueue$a;

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget v2, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    if-nez v5, :cond_2

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_1
    iget-object v6, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->g:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->h:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->h:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p0, :cond_4

    :goto_3
    move p0, v4

    goto :goto_4

    :cond_3
    iget-object p1, p1, Lcom/zui/launcher/model/ItemInstallQueue$a;->h:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move p0, v1

    :goto_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    if-eqz p0, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/ItemInstallQueue$a;->f:Landroid/content/Intent;

    return-object p0
.end method
