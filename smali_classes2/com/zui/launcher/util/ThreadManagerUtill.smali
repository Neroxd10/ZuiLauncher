.class public Lcom/zui/launcher/util/ThreadManagerUtill;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;
    }
.end annotation


# static fields
.field private static a:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/util/ThreadManagerUtill;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadPool()Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;
    .locals 8

    sget-object v0, Lcom/zui/launcher/util/ThreadManagerUtill;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/util/ThreadManagerUtill;->a:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    new-instance v1, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;-><init>(IIJLcom/zui/launcher/util/ThreadManagerUtill$a;)V

    sput-object v1, Lcom/zui/launcher/util/ThreadManagerUtill;->a:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/zui/launcher/util/ThreadManagerUtill;->a:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
