.class public Lcom/zui/launcher/shortcuts/ShortcutRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xb

.field public static final PINNED:I = 0x2

.field public static final PUBLISHED:I = 0x9


# instance fields
.field private final a:Landroid/content/pm/LauncherApps$ShortcutQuery;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/UserHandle;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->a:Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->d:Z

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public forPackage(Ljava/lang/String;)Lcom/zui/launcher/shortcuts/ShortcutRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/zui/launcher/shortcuts/ShortcutRequest;

    move-result-object p0

    return-object p0
.end method

.method public forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/zui/launcher/shortcuts/ShortcutRequest;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zui/launcher/shortcuts/ShortcutRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->a:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object p1, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->a:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    return-object p0
.end method

.method public varargs forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/zui/launcher/shortcuts/ShortcutRequest;
    .locals 0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/zui/launcher/shortcuts/ShortcutRequest;

    move-result-object p0

    return-object p0
.end method

.method public query(I)Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->d:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;->b:Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->a:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :try_start_0
    new-instance p1, Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->b:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->a:Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->c:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ShortcutRequest"

    const-string v0, "Failed to query for shortcuts"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;->b:Lcom/zui/launcher/shortcuts/ShortcutRequest$QueryResult;

    return-object p0
.end method

.method public withContainer(Landroid/content/ComponentName;)Lcom/zui/launcher/shortcuts/ShortcutRequest;
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->d:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/shortcuts/ShortcutRequest;->a:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :goto_0
    return-object p0
.end method
