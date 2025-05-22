.class public Lcom/zui/launcher/AppStoreHelperProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object p0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private b()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/AppStoreHelperProvider$c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/AppStoreHelperProvider$c;-><init>(Lcom/zui/launcher/AppStoreHelperProvider;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.launcher.action.UITASK_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "versionCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.lenovo.leos.appstore"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.zui.launcher.permission.REPORT_UITASK"

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Landroid/content/Context;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInfoInDatabase : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->a(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->c(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "taskstate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->h(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->j(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "viewID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->a(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zui/launcher/LauncherSettings$DownloadAppInfos;->getContentUri(J)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/AppStoreHelperProvider$d;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/zui/launcher/AppStoreHelperProvider$d;-><init>(Lcom/zui/launcher/AppStoreHelperProvider;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteItem(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/zui/launcher/AppStoreHelperProvider;->c(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreHelperProvider;->deleteItemFromDatabase(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteItemFromDatabase(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherSettings$DownloadAppInfos;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Lcom/zui/launcher/AppStoreHelperProvider$e;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/launcher/AppStoreHelperProvider$e;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;
    .locals 14

    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherSettings$DownloadAppInfos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 v5, 0x0

    const-string v3, "packageName=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "packageName"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v0, "versionCode"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "taskstate"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "progress"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "viewID"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v13, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    int-to-long v10, v6

    move-object v6, v13

    move-object v7, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " progress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppStoreHelper"

    invoke-static {v6, v5}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v13, v5, v6}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->b(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;J)J

    sget-object v5, Lcom/zui/launcher/util/Executors;->APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v6, Lcom/zui/launcher/AppStoreHelperProvider$b;

    invoke-direct {v6, v4, v13}, Lcom/zui/launcher/AppStoreHelperProvider$b;-><init>(Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V

    invoke-virtual {v5, v6}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    move-object v4, v13

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method public static sendRequestToAppStore(Lcom/zui/launcher/Launcher;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/AppStoreHelperProvider$f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/AppStoreHelperProvider$f;-><init>(Lcom/zui/launcher/Launcher;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static syncOneAppWithAppStore(Lcom/zui/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/AppStoreHelperProvider$g;

    invoke-direct {v0, p1, p2, p0}, Lcom/zui/launcher/AppStoreHelperProvider$g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/Launcher;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addValue(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V
    .locals 8

    sget-object v3, Lcom/zui/launcher/LauncherSettings$DownloadAppInfos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "generate_new_download_app_id"

    invoke-static {v0, v1}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->b(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;J)J

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->c(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "taskstate"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->h(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->j(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "viewID"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p1, Lcom/zui/launcher/util/Executors;->APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v7, Lcom/zui/launcher/AppStoreHelperProvider$a;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider$a;-><init>(Lcom/zui/launcher/AppStoreHelperProvider;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V

    invoke-virtual {p1, v7}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addValue(Lcom/zui/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    new-instance v7, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-virtual {p0, p1, p2, v7}, Lcom/zui/launcher/AppStoreHelperProvider;->addValue(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V

    return-void
.end method

.method public containTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "containTask : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , versionCode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache, pkgName: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getVersionCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updatePercent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    invoke-direct {p0}, Lcom/zui/launcher/AppStoreHelperProvider;->b()V

    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    invoke-static {p2, p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2, p4, p5}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->k(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;J)J

    invoke-static {p2, p6}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->i(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;I)I

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->g(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;I)I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/AppStoreHelperProvider;->d(Landroid/content/Context;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    const/4 v3, 0x2

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-virtual {p0, p1, p2, v7}, Lcom/zui/launcher/AppStoreHelperProvider;->addValue(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V

    :goto_0
    return-void
.end method

.method public updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTaskState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/AppStoreHelperProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    invoke-static {p2, p3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->i(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;I)I

    invoke-static {p2, p5}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->g(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;I)I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/AppStoreHelperProvider;->d(Landroid/content/Context;Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)V

    goto :goto_0

    :cond_1
    const-string p0, "updateTaskState cannot find view "

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
