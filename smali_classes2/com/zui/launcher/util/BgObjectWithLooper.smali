.class public abstract Lcom/zui/launcher/util/BgObjectWithLooper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/zui/launcher/util/BgObjectWithLooper;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/util/BgObjectWithLooper;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/BgObjectWithLooper;->onInitialized(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method


# virtual methods
.method public final initializeInBackground(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/launcher/util/b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/util/b;-><init>(Lcom/zui/launcher/util/BgObjectWithLooper;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract onInitialized(Landroid/os/Looper;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
