.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe<",
        "Ljava/io/Serializable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private final d:Ljava/io/File;

.field private final e:Ljava/lang/String;

.field private f:Ljava/io/RandomAccessFile;

.field private g:Ljava/nio/channels/FileChannel;

.field private final h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private i:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

.field private j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m:J

.field private n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x80000

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->m:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->e:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".tmp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->d:Ljava/io/File;

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    iput-object p6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->i:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FileOutputPipe"

    const-string v1, "Unexcepted Exception in the progressListener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->i:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->i:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->f:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->d:Ljava/io/File;

    const-string v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->f:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g:Ljava/nio/channels/FileChannel;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    :cond_2
    return-void
.end method

.method private c([BJI)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->d(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    if-le p4, p3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->flush()V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private d(J)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->a:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private e()V
    .locals 9

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->i:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->progress()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->m:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    :cond_1
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->m:J

    sub-long v0, v2, v0

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    const-wide/16 v7, 0x64

    div-long/2addr v4, v7

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    :cond_2
    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->m:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FileOutputPipe"

    const-string v1, "Unexcepted Exception in the progressListener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g:Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->f:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->f:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g:Ljava/nio/channels/FileChannel;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->flush()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->isAllFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->f()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->d:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->removeOdometer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    return-wide v0
.end method

.method public declared-synchronized flush()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->g:Ljava/nio/channels/FileChannel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->finish(JJ)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->persistOdometer(Ljava/io/Serializable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "FileOutputPipe"

    const-string v2, "Unexcepted Exception in the flushData"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadOdometer(I)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->loadOdometer()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->i:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->l:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->removeOdometer()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c:J

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->newInstance(IJ)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    :cond_3
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public target()Ljava/io/Serializable;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->b:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic target()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->target()Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized write([BJI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->b()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->e()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->c([BJI)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->i:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    int-to-long v0, p4

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->finish(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->f()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;->a()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
