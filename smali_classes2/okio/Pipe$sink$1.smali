.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "",
        "close",
        "()V",
        "flush",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "write",
        "(Lokio/Buffer;J)V",
        "Lokio/Timeout;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# instance fields
.field private final a:Lokio/Timeout;

.field final synthetic b:Lokio/Pipe;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$sink$1;->a:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 10

    iget-object v0, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_9

    iget-object p0, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    sget-object v4, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_4
    :try_start_2
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_5
    throw v1

    :cond_6
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_7
    :try_start_3
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_2

    :catchall_1
    move-exception v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_8
    throw v1

    :cond_9
    :goto_2
    return-void

    :cond_a
    :try_start_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public flush()V
    .locals 10

    iget-object v0, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_8

    iget-object p0, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    sget-object v4, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_3
    :try_start_1
    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_4
    throw v1

    :cond_5
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6
    :try_start_2
    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_2

    :catchall_1
    move-exception v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_7
    throw v1

    :cond_8
    :goto_2
    return-void

    :cond_9
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lokio/Pipe$sink$1;->a:Lokio/Timeout;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 10
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_5

    iget-object v3, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getMaxBufferSize$okio()J

    move-result-wide v3

    iget-object v5, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v5}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lokio/Pipe$sink$1;->a:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    sub-long/2addr p2, v1

    iget-object v1, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "source is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v3, :cond_b

    iget-object p0, p0, Lokio/Pipe$sink$1;->b:Lokio/Pipe;

    invoke-interface {v3}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    sget-object v4, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6
    :try_start_1
    invoke-interface {v3, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_7
    throw p1

    :cond_8
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_9
    :try_start_2
    invoke-interface {v3, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_2

    :catchall_1
    move-exception p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_a
    throw p1

    :cond_b
    :goto_2
    return-void

    :cond_c
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
