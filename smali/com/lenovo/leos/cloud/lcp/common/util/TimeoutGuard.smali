.class public final Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:J

.field private volatile c:J

.field private volatile d:Ljava/lang/Thread;

.field private volatile e:Z

.field private volatile f:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->e:Z

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkin()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->b:J

    return-void
.end method

.method public getLastCheckin()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->b:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeoutThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->c:J

    return-wide v0
.end method

.method public run()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeoutGard-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : timeout ocurrs.timeoutListener.warning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->f:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeoutGuard"

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->f:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->f:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;->warning(Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, " timeoutListener.warning Exception "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setTimeoutListener(Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->f:Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;

    return-void
.end method

.method public setTimeoutThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->c:J

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->d:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->checkin()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard;->d:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
