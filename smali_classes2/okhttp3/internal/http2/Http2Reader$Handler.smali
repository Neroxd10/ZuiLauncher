.class public interface abstract Lokhttp3/internal/http2/Http2Reader$Handler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J?\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J/\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\'\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ5\u0010\"\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH&\u00a2\u0006\u0004\u0008\"\u0010#J\'\u0010\'\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\'\u0010(J/\u0010,\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0011H&\u00a2\u0006\u0004\u0008,\u0010-J-\u00100\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u00052\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH&\u00a2\u0006\u0004\u00080\u00101J\u001f\u00102\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H&\u00a2\u0006\u0004\u00082\u00103J\u001f\u00106\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u00112\u0006\u00106\u001a\u000205H&\u00a2\u0006\u0004\u00086\u00107J\u001f\u00109\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u00108\u001a\u00020\rH&\u00a2\u0006\u0004\u00089\u0010:\u00a8\u0006;"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/Any;",
        "",
        "ackSettings",
        "()V",
        "",
        "streamId",
        "",
        "origin",
        "Lokio/ByteString;",
        "protocol",
        "host",
        "port",
        "",
        "maxAge",
        "alternateService",
        "(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V",
        "",
        "inFinished",
        "Lokio/BufferedSource;",
        "source",
        "length",
        "data",
        "(ZILokio/BufferedSource;I)V",
        "lastGoodStreamId",
        "Lokhttp3/internal/http2/ErrorCode;",
        "errorCode",
        "debugData",
        "goAway",
        "(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V",
        "associatedStreamId",
        "",
        "Lokhttp3/internal/http2/Header;",
        "headerBlock",
        "headers",
        "(ZIILjava/util/List;)V",
        "ack",
        "payload1",
        "payload2",
        "ping",
        "(ZII)V",
        "streamDependency",
        "weight",
        "exclusive",
        "priority",
        "(IIIZ)V",
        "promisedStreamId",
        "requestHeaders",
        "pushPromise",
        "(IILjava/util/List;)V",
        "rstStream",
        "(ILokhttp3/internal/http2/ErrorCode;)V",
        "clearPrevious",
        "Lokhttp3/internal/http2/Settings;",
        "settings",
        "(ZLokhttp3/internal/http2/Settings;)V",
        "windowSizeIncrement",
        "windowUpdate",
        "(IJ)V",
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


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract data(ZILokio/BufferedSource;I)V
    .param p3    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .param p2    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract headers(ZIILjava/util/List;)V
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .param p2    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract settings(ZLokhttp3/internal/http2/Settings;)V
    .param p2    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract windowUpdate(IJ)V
.end method
