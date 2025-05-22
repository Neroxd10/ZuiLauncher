.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

.field private volatile c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

.field private volatile d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->d:Z

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->e:Z

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->a:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public static createFailFuture(Ljava/lang/Exception;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Ljava/util/List;)V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;I)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->getExceptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    iput-boolean v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->d:Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->e:Z

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;

    invoke-interface {v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;->cancel(Z)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->d:Z

    return v2
.end method

.method public get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    monitor-exit p0

    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;I)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;->get()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    invoke-virtual {v3, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->addException(Ljava/lang/Exception;)V

    :goto_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;->getTaskUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->addPilotUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "findtime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PilotResult.get:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u6ca1\u6709\u88ab\u5b9e\u73b0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get(JLjava/util/concurrent/TimeUnit;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object p0

    return-object p0
.end method

.method public isCancelled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->d:Z

    return p0
.end method

.method public isDone()Z
    .locals 2

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->e:Z

    :cond_2
    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->e:Z

    return p0
.end method
