.class public Lcom/zui/launcher/shortcuts/DeepShortcutManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
    }
.end annotation


# static fields
.field private static b:Lcom/zui/launcher/shortcuts/DeepShortcutManager;


# instance fields
.field private final a:Landroid/content/pm/LauncherApps;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    :try_start_0
    new-instance p1, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, p5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "DeepShortcutManager"

    const-string p2, "Failed to query for shortcuts"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->b:Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;
    .locals 1

    sget-object v0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->b:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->b:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    :cond_0
    sget-object p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->b:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    return-object p0
.end method


# virtual methods
.method public getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {p1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "DeepShortcutManager"

    const-string p2, "Failed to get shortcut icon"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasHostPermission()Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DeepShortcutManager"

    const-string v1, "Failed to make shortcut manager call"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public pinShortcut(Lcom/zui/launcher/shortcuts/ShortcutKey;)V
    .locals 3

    iget-object v0, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, v2, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DeepShortcutManager"

    const-string v0, "Failed to pin shortcut"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public queryForAllShortcuts(Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
    .locals 6

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->b(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->b(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public queryForPinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->b(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public queryForShortcutsContainer(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;
    .locals 6
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->b:Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    return-object p0

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->b(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a:Landroid/content/pm/LauncherApps;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DeepShortcutManager"

    const-string p2, "Failed to start shortcut"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public unpinShortcut(Lcom/zui/launcher/shortcuts/ShortcutKey;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------unpinShortcut--------key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugShortcut(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, v2, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DeepShortcutManager"

    const-string v0, "Failed to unpin shortcut"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
