.class final Lcom/bumptech/glide/load/engine/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "TZ;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/m<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private b:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/engine/m$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/m$a;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/m;->e:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/m;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/m;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/m;->c:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/m;->b:Lcom/bumptech/glide/load/engine/Resource;

    return-void
.end method

.method static b(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/m;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/m<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/engine/m;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/m;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/m;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/Resource;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/m;->b:Lcom/bumptech/glide/load/engine/Resource;

    sget-object v0, Lcom/bumptech/glide/load/engine/m;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/m;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/m;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/m;->c:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/m;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/m;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/m;->b:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/m;->b:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/m;->b:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result p0

    return p0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/m;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object p0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/m;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/m;->d:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/m;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/m;->b:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/m;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
