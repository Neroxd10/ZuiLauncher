.class public final Lokio/RealBufferedSink$outputStream$1;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "okio/RealBufferedSink$outputStream$1",
        "Ljava/io/OutputStream;",
        "",
        "close",
        "()V",
        "flush",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "data",
        "",
        "offset",
        "byteCount",
        "write",
        "([BII)V",
        "b",
        "(I)V",
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
.field final synthetic a:Lokio/RealBufferedSink;


# direct methods
.method constructor <init>(Lokio/RealBufferedSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object p0, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokio/RealBufferedSink;->flush()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".outputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    iget-boolean v1, v0, Lokio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object p0, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([BII)V
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    iget-boolean v1, v0, Lokio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    iget-object p0, p0, Lokio/RealBufferedSink$outputStream$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
