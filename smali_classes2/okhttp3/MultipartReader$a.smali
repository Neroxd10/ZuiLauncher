.class final Lokhttp3/MultipartReader$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lokio/Timeout;

.field final synthetic b:Lokhttp3/MultipartReader;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader$a;->a:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$a;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$a;)V

    :cond_0
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 15
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_b

    iget-object v6, v0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$a;

    move-result-object v6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    move-result-object v6

    invoke-interface {v6}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    iget-object v7, v0, Lokhttp3/MultipartReader$a;->a:Lokio/Timeout;

    invoke-virtual {v6}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    sget-object v10, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v7}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v11

    invoke-virtual {v6}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v13

    invoke-virtual {v10, v11, v12, v13, v14}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v6}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v6}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v13

    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_1
    :try_start_0
    iget-object v4, v0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-static {v4, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    const-wide/16 v11, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v13, v14}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_3
    return-wide v11

    :catchall_0
    move-exception v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v6, v13, v14}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_4
    throw v0

    :cond_5
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6
    :try_start_1
    iget-object v4, v0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-static {v4, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_7

    const-wide/16 v11, -0x1

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lokhttp3/MultipartReader$a;->b:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_8
    return-wide v11

    :catchall_1
    move-exception v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_9
    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lokhttp3/MultipartReader$a;->a:Lokio/Timeout;

    return-object p0
.end method
