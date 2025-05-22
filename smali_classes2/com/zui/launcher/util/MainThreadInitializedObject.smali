.class public Lcom/zui/launcher/util/MainThreadInitializedObject;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->a:Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;

    return-void
.end method

.method static synthetic a(Ljava/lang/Class;ILandroid/content/Context;)Lcom/zui/launcher/util/ResourceBasedOverride;
    .locals 0

    invoke-static {p0, p2, p1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method

.method public static forOverride(Ljava/lang/Class;I)Lcom/zui/launcher/util/MainThreadInitializedObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/zui/launcher/util/ResourceBasedOverride;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    new-instance v1, Lcom/zui/launcher/util/z;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/util/z;-><init>(Ljava/lang/Class;I)V

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    return-object v0
.end method


# virtual methods
.method public synthetic b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->a:Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public synthetic c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v0, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->a:Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->getObject(Lcom/zui/launcher/util/MainThreadInitializedObject;Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/zui/launcher/util/x;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/util/x;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject;Landroid/content/Context;)V

    const-string p1, "main.thread.object"

    invoke-static {p1, v0}, Lcom/zui/launcher/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/util/y;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/util/y;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public getNoCreate()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public initializeForTesting(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/util/MainThreadInitializedObject;->b:Ljava/lang/Object;

    return-void
.end method
