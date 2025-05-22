.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils$b;
    }
.end annotation


# static fields
.field private static c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;

.field private static d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;

.field private static e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

.field private static f:Ljava/lang/Boolean;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->a:Z

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->b:Z

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;-><init>()V

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;-><init>()V

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;->setLedroidContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;)Z
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;)Z
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->d()Z

    move-result p0

    return p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/busybox"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chmod 777 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->runRootCommand(Ljava/lang/String;)Z

    return-void
.end method

.method private d()Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;->shellUsable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->shellUsable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    return p0
.end method

.method private e(Landroid/content/Context;)V
    .locals 7

    const-string v0, "busybox"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const/16 v3, 0x400

    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0, v3, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->c(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p0

    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "RootUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/busybox"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file fail,path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw p0
.end method

.method private declared-synchronized f()Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    const-string v0, "RootUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRoot:isRoot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return v0

    :cond_0
    :try_start_3
    const-string v2, "RootUtils"

    const-string v3, "tryRoot start:isRoot=null"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils$b;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v4, 0x2710

    :try_start_4
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    :try_start_6
    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "RootUtils"

    const-string v3, "tryRoot:time out!"

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :goto_5
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_5

    :try_start_c
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->checkIfBusyboxExists(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :catch_3
    :try_start_d
    const-string v0, "RootUtils"

    const-string v2, "tryRoot:checkIfBusyboxExists failed!"

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    :cond_5
    :goto_6
    const-string v0, "RootUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRoot end:isRoot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->a:Z

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    monitor-exit p0

    return v0

    :goto_7
    :try_start_f
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_8

    :cond_6
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_10
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->a:Z

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;
    .locals 3

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    return-object v0
.end method


# virtual methods
.method public checkIfBusyboxExists(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "busybox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->e(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized getShell()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;->shellUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/LenovoShell;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->shellUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initRoot()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils$a;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->b:Z

    return p0
.end method

.method public declared-synchronized isRootRunning()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "RootUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRootRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRooted()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "RootUtils"

    const-string v1, "isRooted:isRoot=null,mainLooper!"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTryingRoot()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runRootCommand(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getShell()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;->runWaitFor(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->success()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public runRootCommandForResult(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getShell()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;->runWaitFor(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->getStandardOutput()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public runRootCommands(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getShell()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;->runWaitFor(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->success()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
