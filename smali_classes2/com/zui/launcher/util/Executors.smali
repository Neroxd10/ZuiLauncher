.class public Lcom/zui/launcher/util/Executors;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/Executors$SimpleThreadFactory;
    }
.end annotation


# static fields
.field public static final APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

.field public static final GLOBAL_SEARCH_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

.field public static final MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

.field public static final MESSAGE_MONITOR_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

.field public static final MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

.field public static final NETWORK_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/zui/launcher/util/Executors;->a:I

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/zui/launcher/util/Executors;->a:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/zui/launcher/util/LooperExecutor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/util/LooperExecutor;

    const-string v1, "UiThreadHelper"

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/util/LooperExecutor;

    const-string v1, "launcher-loader"

    invoke-static {v1}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/util/LooperExecutor;

    const-string v1, "launcher-appstore"

    invoke-static {v1}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->APPSTORE_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/util/LooperExecutor;

    const-string v1, "global-search-worker"

    invoke-static {v1}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->GLOBAL_SEARCH_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/util/LooperExecutor;

    const-string v1, "launcher-network"

    invoke-static {v1}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->NETWORK_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/util/LooperExecutor;

    const-string v1, "message-monitor"

    invoke-static {v1}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zui/launcher/util/Executors;->MESSAGE_MONITOR_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndStartNewForegroundLooper(Ljava/lang/String;)Landroid/os/Looper;
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
