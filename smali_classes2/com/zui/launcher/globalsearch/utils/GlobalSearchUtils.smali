.class public Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils$b;
    }
.end annotation


# static fields
.field public static CACHE_VALID:Z = false

.field public static final TAG:Ljava/lang/String; = "GlobalSearchUtils"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->h(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getService"

    invoke-static {v0, v4, v3}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v0, v1, v3}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p1}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->h(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    new-array v0, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v0, v5

    const-string v3, "asInterface"

    invoke-static {p1, v3, v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v5

    invoke-static {p1, v1, v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bytesToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "Unexpected error while invoking "

    const-string v1, "GlobalSearchUtils"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0
.end method

.method public static getDatabaseType()Ljava/lang/String;
    .locals 1

    const-string v0, "global_search.db"

    return-object v0
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;
    .locals 1

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils$b;->a()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageNameByIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error while finding class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "GlobalSearchUtils"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v0
.end method

.method private static varargs i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error while finding method "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalSearchUtils"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v0
.end method

.method public static isDownloading(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGameApp(Ljava/lang/String;)Z
    .locals 6

    const-class v0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "zuimode"

    const-string v3, "android.app.IZuiModeService$Stub"

    invoke-static {v1, v3}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v2

    const-string v5, "isContainedInUserManagedApps"

    invoke-static {v1, v5, v4}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v4, v1, v5}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v2

    const-string v0, "isContainedInSystemManagedApps"

    invoke-static {v1, v0, v5}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    or-int p0, v4, v2

    return p0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private j(Lcom/zui/launcher/Launcher;Landroid/content/Intent;)V
    .locals 3

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->a:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->CACHE_VALID:Z

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getPackageNameByIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->doSQLFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getDatabaseType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update game_app set modified = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " where game_packageName LIKE\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static parseIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    const-string p0, "GlobalSearchUtils"

    const-string v1, "Error parsing Intent"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public addGameProvider(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/globalsearch/utils/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/globalsearch/utils/b;-><init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic d(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->saveGameProviderInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public synthetic e(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->saveGameProviderInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public synthetic f(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/AppInfo;)V
    .locals 0

    invoke-virtual {p2}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->j(Lcom/zui/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic g(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->j(Lcom/zui/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method

.method public getLocalGameAppData(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserForIdentifier(J)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getDatabaseType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " modified DESC LIMIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v3, "game_intent"

    const-string v4, "game_title"

    const-string v5, "game_packageName"

    const-string v6, "game_icon"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v2, v13, v14}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "game_app"

    const-string v7, "modified>0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move-object v6, v3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    aget-object v5, v3, v13

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v3, v3, v7

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v10

    invoke-virtual {v10, v14, v9, v14}, Lcom/zui/launcher/LauncherModel;->getAppInfo(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/AppInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v11, v10, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez v11, :cond_1

    move-object v10, v14

    goto :goto_1

    :cond_1
    iget-object v10, v10, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v10, v10, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_1
    new-instance v11, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;

    invoke-direct {v11}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;-><init>()V

    invoke-virtual {v11, v8}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->setIntent(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->setPackName(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->setUser(Landroid/os/UserHandle;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->build()Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    move-result-object v7

    const-string v8, "GlobalSearch"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLocalGameAppData localGameAppInfo -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "GlobalSearchUtils"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v1

    return-object v12

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public removeGameProvider(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/globalsearch/utils/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/globalsearch/utils/c;-><init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveGameProviderInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v1, v1, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getPackageNameByIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    sput-boolean v7, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->CACHE_VALID:Z

    invoke-static {v4}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->isGameApp(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "GlobalSearchUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveGameProviderInfo gameApp -->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",info ->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",isAdd ->"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v8, Lcom/zui/launcher/GlobalSearchDbSettings$GameSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "generateNewGameAppId"

    const/4 v10, 0x0

    invoke-static {v8, v0, v9, v10}, Lcom/zui/launcher/GlobalSearchDbSettings;->call(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "value"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getDatabaseType()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->doSQLFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v0, v7, v10}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v13, "game_app"

    const-string v12, "game_packageName"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "game_packageName=?"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v0

    move-object/from16 v16, v11

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-nez v13, :cond_1

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "game_title"

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "game_packageName"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "game_intent"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "game_icon"

    invoke-static {v6}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "game_app"

    invoke-virtual {v0, v3, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "game_app"

    const-string v3, "game_packageName=?"

    invoke-virtual {v0, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "GlobalSearchUtils"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public updateGameAppInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/AppInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/globalsearch/utils/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/globalsearch/utils/d;-><init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/AppInfo;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateGameProviderInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/globalsearch/utils/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/globalsearch/utils/a;-><init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
