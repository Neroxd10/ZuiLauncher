.class public abstract Lcom/autonavi/base/amap/mapcore/NativeBase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/base/amap/mapcore/NativeBase$Method;
    }
.end annotation


# static fields
.field private static final CREATE_OVERLAY:Ljava/lang/String; = "createOverlay"

.field private static final STACK_NUMBER:I = 0x3

.field private static final UPDATE_OPTIONS:Ljava/lang/String; = "updateOptions"


# instance fields
.field private volatile destory:Z

.field private mCalledFuntion:Z

.field methodMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/base/amap/mapcore/NativeBase$Method;",
            ">;"
        }
    .end annotation
.end field

.field runnableArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected useRunnable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->mCalledFuntion:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->useRunnable:Z

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->destory:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->methodMap:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->runnableArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized callAllFunction()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/NativeBase;->isReady()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->destory:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->mCalledFuntion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->mCalledFuntion:Z

    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->useRunnable:Z

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->runnableArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->destory:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->runnableArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->runnableArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->methodMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v3, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->destory:Z

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->access$000(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->access$000(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->access$100(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->access$200(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->access$000(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;->access$300(Lcom/autonavi/base/amap/mapcore/NativeBase$Method;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_9
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->methodMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    monitor-exit p0

    return-void

    :cond_a
    :goto_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createNative()V
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->destory:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->runnableArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->methodMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/NativeBase;->finalizeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method protected abstract finalizeNative()V
.end method

.method protected abstract getNative()J
.end method

.method protected isReady()Z
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/NativeBase;->getNative()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public varargs declared-synchronized storeUncallFunction(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->useRunnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->runnableArrayList:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p3, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->runnableArrayList:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/autonavi/base/amap/mapcore/NativeBase$Method;-><init>(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->methodMap:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/NativeBase;->mCalledFuntion:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    monitor-exit p0

    return-void
.end method

.method public validate()V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    const-class v4, Lcom/autonavi/base/amap/mapcore/annotations/ParameterIsClass;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-class v4, Lcom/autonavi/base/amap/mapcore/annotations/ParameterIsClass;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/autonavi/base/amap/mapcore/annotations/ParameterIsClass;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/autonavi/base/amap/mapcore/annotations/ParameterIsClass;->required()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    instance-of v7, v7, Ljava/lang/Object;

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u51fd\u6570\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \u53c2\u6570\u4e0d\u662f\u5bf9\u8c61\u7c7b\u578b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
