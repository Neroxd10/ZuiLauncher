.class public final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;,
        Lokhttp3/internal/cache2/Relay$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 D:\u0002DEB5\u0008\u0002\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0008\u00101\u001a\u0004\u0018\u00010\t\u0012\u0006\u00108\u001a\u00020\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u0001\u00a2\u0006\u0004\u0008B\u0010CJ\u0015\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005R\u0019\u0010\u0012\u001a\u00020\u00118\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0016\u001a\u00020\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0013\u0010(\u001a\u00020\u001a8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u001eR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010)R\"\u0010+\u001a\u00020*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R$\u00101\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u0010\u000b\"\u0004\u00084\u00105R\u0019\u00106\u001a\u00020\u00118\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00086\u0010\u0013\u001a\u0004\u00087\u0010\u0015R\"\u00108\u001a\u00020\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u0017\u001a\u0004\u00089\u0010\u0019\"\u0004\u0008:\u0010\u0005R$\u0010<\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010A\u00a8\u0006F"
    }
    d2 = {
        "Lokhttp3/internal/cache2/Relay;",
        "",
        "upstreamSize",
        "",
        "commit",
        "(J)V",
        "Lokio/ByteString;",
        "metadata",
        "()Lokio/ByteString;",
        "Lokio/Source;",
        "newSource",
        "()Lokio/Source;",
        "prefix",
        "metadataSize",
        "writeHeader",
        "(Lokio/ByteString;JJ)V",
        "writeMetadata",
        "Lokio/Buffer;",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer",
        "()Lokio/Buffer;",
        "bufferMaxSize",
        "J",
        "getBufferMaxSize",
        "()J",
        "",
        "complete",
        "Z",
        "getComplete",
        "()Z",
        "setComplete",
        "(Z)V",
        "Ljava/io/RandomAccessFile;",
        "file",
        "Ljava/io/RandomAccessFile;",
        "getFile",
        "()Ljava/io/RandomAccessFile;",
        "setFile",
        "(Ljava/io/RandomAccessFile;)V",
        "isClosed",
        "Lokio/ByteString;",
        "",
        "sourceCount",
        "I",
        "getSourceCount",
        "()I",
        "setSourceCount",
        "(I)V",
        "upstream",
        "Lokio/Source;",
        "getUpstream",
        "setUpstream",
        "(Lokio/Source;)V",
        "upstreamBuffer",
        "getUpstreamBuffer",
        "upstreamPos",
        "getUpstreamPos",
        "setUpstreamPos",
        "Ljava/lang/Thread;",
        "upstreamReader",
        "Ljava/lang/Thread;",
        "getUpstreamReader",
        "()Ljava/lang/Thread;",
        "setUpstreamReader",
        "(Ljava/lang/Thread;)V",
        "<init>",
        "(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V",
        "Companion",
        "RelaySource",
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


# static fields
.field public static final Companion:Lokhttp3/internal/cache2/Relay$Companion;

.field public static final PREFIX_CLEAN:Lokio/ByteString;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFIX_DIRTY:Lokio/ByteString;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private final d:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:I

.field private f:Ljava/io/RandomAccessFile;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lokio/Source;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:J

.field private final i:Lokio/ByteString;

.field private final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache2/Relay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/Relay$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/cache2/Relay;->Companion:Lokhttp3/internal/cache2/Relay$Companion;

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "OkHttp cache v1\n"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "OkHttp DIRTY :(\n"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lokhttp3/internal/cache2/Relay;->g:Lokio/Source;

    iput-wide p3, p0, Lokhttp3/internal/cache2/Relay;->h:J

    iput-object p5, p0, Lokhttp3/internal/cache2/Relay;->i:Lokio/ByteString;

    iput-wide p6, p0, Lokhttp3/internal/cache2/Relay;->j:J

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->b:Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->g:Lokio/Source;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->c:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->d:Lokio/Buffer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    return-void
.end method

.method private final a(Lokio/ByteString;JJ)V
    .locals 1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v0, p2, p3}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    invoke-virtual {v0, p4, p5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Lokhttp3/internal/cache2/FileOperator;

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    const-string p2, "file!!.channel"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 p2, 0x0

    const-wide/16 p4, 0x20

    move-object p0, p1

    move-wide p1, p2

    move-object p3, v0

    invoke-virtual/range {p0 .. p5}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$writeHeader(Lokhttp3/internal/cache2/Relay;Lokio/ByteString;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/cache2/Relay;->a(Lokio/ByteString;JJ)V

    return-void
.end method

.method private final b(J)V
    .locals 6

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->i:Lokio/ByteString;

    invoke-virtual {v3, v0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-string v2, "file!!.channel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->i:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    int-to-long v4, p0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    return-void
.end method


# virtual methods
.method public final commit(J)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache2/Relay;->b(J)V

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->a(Lokio/ByteString;JJ)V

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->c:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->g:Lokio/Source;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->g:Lokio/Source;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getBuffer()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->d:Lokio/Buffer;

    return-object p0
.end method

.method public final getBufferMaxSize()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->j:J

    return-wide v0
.end method

.method public final getComplete()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/cache2/Relay;->c:Z

    return p0
.end method

.method public final getFile()Ljava/io/RandomAccessFile;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public final getSourceCount()I
    .locals 0

    iget p0, p0, Lokhttp3/internal/cache2/Relay;->e:I

    return p0
.end method

.method public final getUpstream()Lokio/Source;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->g:Lokio/Source;

    return-object p0
.end method

.method public final getUpstreamBuffer()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->b:Lokio/Buffer;

    return-object p0
.end method

.method public final getUpstreamPos()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->h:J

    return-wide v0
.end method

.method public final getUpstreamReader()Ljava/lang/Thread;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->a:Ljava/lang/Thread;

    return-object p0
.end method

.method public final isClosed()Z
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final metadata()Lokio/ByteString;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->i:Lokio/ByteString;

    return-object p0
.end method

.method public final newSource()Lokio/Source;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lokhttp3/internal/cache2/Relay;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/cache2/Relay;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    new-instance v0, Lokhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->c:Z

    return-void
.end method

.method public final setFile(Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p1    # Ljava/io/RandomAccessFile;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->f:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public final setSourceCount(I)V
    .locals 0

    iput p1, p0, Lokhttp3/internal/cache2/Relay;->e:I

    return-void
.end method

.method public final setUpstream(Lokio/Source;)V
    .locals 0
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->g:Lokio/Source;

    return-void
.end method

.method public final setUpstreamPos(J)V
    .locals 0

    iput-wide p1, p0, Lokhttp3/internal/cache2/Relay;->h:J

    return-void
.end method

.method public final setUpstreamReader(Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->a:Ljava/lang/Thread;

    return-void
.end method
