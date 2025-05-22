.class public Lorg/greenrobot/greendao/async/AsyncOperation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    }
.end annotation


# static fields
.field public static final FLAG_MERGE_TX:I = 0x1

.field public static final FLAG_STOP_QUEUE_ON_EXCEPTION:I = 0x2

.field public static final FLAG_TRACK_CREATOR_STACKTRACE:I = 0x4


# instance fields
.field final a:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field final b:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/greenrobot/greendao/database/Database;

.field final d:Ljava/lang/Object;

.field final e:I

.field volatile f:J

.field volatile g:J

.field private volatile h:Z

.field volatile i:Ljava/lang/Throwable;

.field final j:Ljava/lang/Exception;

.field volatile k:Ljava/lang/Object;

.field volatile l:I

.field m:I


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->a:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    iput p5, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->e:I

    iput-object p2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->b:Lorg/greenrobot/greendao/AbstractDao;

    iput-object p3, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->c:Lorg/greenrobot/greendao/database/Database;

    iput-object p4, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->d:Ljava/lang/Object;

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "AsyncOperation was created here"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->j:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method a()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->c:Lorg/greenrobot/greendao/database/Database;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->b:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method b(Lorg/greenrobot/greendao/async/AsyncOperation;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->a()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->a()Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->f:J

    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->i:Ljava/lang/Throwable;

    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->k:Ljava/lang/Object;

    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->l:I

    return-void
.end method

.method declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCreatorStacktrace()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->j:Ljava/lang/Exception;

    return-object p0
.end method

.method public getDuration()J
    .locals 4

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->g:J

    iget-wide v2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->f:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    const-string v0, "This operation did not yet complete"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMergedOperationsCount()I
    .locals 0

    iget p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->l:I

    return p0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->waitForCompletion()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->i:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->k:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncDaoException;

    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->i:Ljava/lang/Throwable;

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/async/AsyncDaoException;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSequenceNumber()I
    .locals 0

    iget p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->m:I

    return p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->i:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getTimeCompleted()J
    .locals 2

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->g:J

    return-wide v0
.end method

.method public getTimeStarted()J
    .locals 2

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->f:J

    return-wide v0
.end method

.method public getType()Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->a:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z

    return p0
.end method

.method public isCompletedSucessfully()Z
    .locals 1

    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->i:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFailed()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->i:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMergeTx()Z
    .locals 1

    iget p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->e:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->i:Ljava/lang/Throwable;

    return-void
.end method

.method public declared-synchronized waitForCompletion()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->k:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    int-to-long v0, p1

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Interrupted while waiting for operation to complete"

    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
