.class public final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\'\u001a\u00020\u0014\u0012\u0006\u0010&\u001a\u00020\u0014\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u00084\u00105J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\nJ\u001d\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u0015\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010&\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u0016R\u0016\u0010\'\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0016R\u0019\u0010)\u001a\u00020(8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0019\u0010.\u001a\u00020-8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u0016\u00102\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u0010\u001fR\u0016\u00103\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010\u0016\u00a8\u00066"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketWriter;",
        "Ljava/io/Closeable;",
        "",
        "close",
        "()V",
        "",
        "code",
        "Lokio/ByteString;",
        "reason",
        "writeClose",
        "(ILokio/ByteString;)V",
        "opcode",
        "payload",
        "writeControlFrame",
        "formatOpcode",
        "data",
        "writeMessageFrame",
        "writePing",
        "(Lokio/ByteString;)V",
        "writePong",
        "",
        "isClient",
        "Z",
        "Lokio/Buffer$UnsafeCursor;",
        "maskCursor",
        "Lokio/Buffer$UnsafeCursor;",
        "",
        "maskKey",
        "[B",
        "Lokio/Buffer;",
        "messageBuffer",
        "Lokio/Buffer;",
        "Lokhttp3/internal/ws/MessageDeflater;",
        "messageDeflater",
        "Lokhttp3/internal/ws/MessageDeflater;",
        "",
        "minimumDeflateSize",
        "J",
        "noContextTakeover",
        "perMessageDeflate",
        "Ljava/util/Random;",
        "random",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "Lokio/BufferedSink;",
        "sink",
        "Lokio/BufferedSink;",
        "getSink",
        "()Lokio/BufferedSink;",
        "sinkBuffer",
        "writerClosed",
        "<init>",
        "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V",
        "okhttp"
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
.field private final a:Lokio/Buffer;

.field private final b:Lokio/Buffer;

.field private c:Z

.field private d:Lokhttp3/internal/ws/MessageDeflater;

.field private final e:[B

.field private final f:Lokio/Buffer$UnsafeCursor;

.field private final g:Z

.field private final h:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Z

.field private final k:Z

.field private final l:J


# direct methods
.method public constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V
    .locals 1
    .param p2    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->h:Lokio/BufferedSink;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->i:Ljava/util/Random;

    iput-boolean p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->j:Z

    iput-boolean p5, p0, Lokhttp3/internal/ws/WebSocketWriter;->k:Z

    iput-wide p6, p0, Lokhttp3/internal/ws/WebSocketWriter;->l:J

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->a:Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->h:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:[B

    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:Z

    if-eqz p1, :cond_1

    new-instance p2, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    return-void
.end method

.method private final a(ILokio/ByteString;)V
    .locals 5

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    or-int/lit16 p1, p1, 0x80

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:Z

    if-eqz p1, :cond_1

    or-int/lit16 p1, v0, 0x80

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->i:Ljava/util/Random;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:[B

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:[B

    invoke-virtual {p1, v1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    if-lez v0, :cond_2

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p1, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    sget-object p1, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:[B

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p1, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :cond_2
    :goto_1
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->h:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Payload size must be less than or equal to 125"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->d:Lokhttp3/internal/ws/MessageDeflater;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/ws/MessageDeflater;->close()V

    :cond_0
    return-void
.end method

.method public final getRandom()Ljava/util/Random;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->i:Ljava/util/Random;

    return-object p0
.end method

.method public final getSink()Lokio/BufferedSink;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->h:Lokio/BufferedSink;

    return-object p0
.end method

.method public final writeClose(ILokio/ByteString;)V
    .locals 1
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-virtual {v0, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    :cond_1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    :cond_3
    const/16 p1, 0x8

    const/4 p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->a(ILokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Z

    throw p1
.end method

.method public final writeMessageFrame(ILokio/ByteString;)V
    .locals 5
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->a:Lokio/Buffer;

    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    const/16 v0, 0x80

    or-int/2addr p1, v0

    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result p2

    int-to-long v1, p2

    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->l:J

    cmp-long p2, v1, v3

    if-ltz p2, :cond_1

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->d:Lokhttp3/internal/ws/MessageDeflater;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lokhttp3/internal/ws/MessageDeflater;

    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->k:Z

    invoke-direct {p2, v1}, Lokhttp3/internal/ws/MessageDeflater;-><init>(Z)V

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->d:Lokhttp3/internal/ws/MessageDeflater;

    :goto_0
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->a:Lokio/Buffer;

    invoke-virtual {p2, v1}, Lokhttp3/internal/ws/MessageDeflater;->deflate(Lokio/Buffer;)V

    or-int/lit8 p1, p1, 0x40

    :cond_1
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->a:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->size()J

    move-result-wide v1

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    const/4 p1, 0x0

    iget-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    const-wide/16 p1, 0x7d

    cmp-long p1, v1, p1

    if-gtz p1, :cond_3

    long-to-int p1, v1

    or-int/2addr p1, v0

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    :cond_3
    const-wide/32 p1, 0xffff

    cmp-long p1, v1, p1

    if-gtz p1, :cond_4

    or-int/lit8 p1, v0, 0x7e

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    long-to-int p2, v1

    invoke-virtual {p1, p2}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    goto :goto_2

    :cond_4
    or-int/lit8 p1, v0, 0x7f

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    :goto_2
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->i:Ljava/util/Random;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:[B

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:[B

    invoke-virtual {p1, p2}, Lokio/Buffer;->write([B)Lokio/Buffer;

    const-wide/16 p1, 0x0

    cmp-long v0, v1, p1

    if-lez v0, :cond_5

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->a:Lokio/Buffer;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    sget-object p1, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:[B

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Lokio/Buffer$UnsafeCursor;->close()V

    :cond_5
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Lokio/Buffer;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->a:Lokio/Buffer;

    invoke-virtual {p1, p2, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->h:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    return-void

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writePing(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->a(ILokio/ByteString;)V

    return-void
.end method

.method public final writePong(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->a(ILokio/ByteString;)V

    return-void
.end method
