.class public Lcom/lenovo/cdnsdk/b/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/cdnsdk/b/f;

.field private static b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/lenovo/cdnsdk/b/f;
    .locals 2

    sget-object v0, Lcom/lenovo/cdnsdk/b/f;->a:Lcom/lenovo/cdnsdk/b/f;

    if-nez v0, :cond_2

    const-class v0, Lcom/lenovo/cdnsdk/b/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/cdnsdk/b/f;->a:Lcom/lenovo/cdnsdk/b/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/cdnsdk/b/f;

    invoke-direct {v1}, Lcom/lenovo/cdnsdk/b/f;-><init>()V

    sput-object v1, Lcom/lenovo/cdnsdk/b/f;->a:Lcom/lenovo/cdnsdk/b/f;

    :cond_0
    sget-object v1, Lcom/lenovo/cdnsdk/b/f;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    new-instance v1, Lcom/lenovo/cdnsdk/b/l;

    invoke-direct {v1}, Lcom/lenovo/cdnsdk/b/l;-><init>()V

    sput-object v1, Lcom/lenovo/cdnsdk/b/f;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    sget-object v0, Lcom/lenovo/cdnsdk/b/f;->a:Lcom/lenovo/cdnsdk/b/f;

    return-object v0
.end method

.method public static a(ILjava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    sget p0, Lcom/lenovo/cdnsdk/b/k;->b:I

    :cond_0
    sget-object v0, Lcom/lenovo/cdnsdk/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/lenovo/cdnsdk/b/m;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/cdnsdk/b/m;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
