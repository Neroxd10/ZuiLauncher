.class Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;
.super Lokhttp3/RequestBody;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:[B

.field private b:Ljava/io/File;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field final synthetic g:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;Ljava/io/File;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->g:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->e:J

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->g:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->c:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->e:J

    iput-object p6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;[BLjava/lang/String;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->g:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->a:[B

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->d:Ljava/lang/String;

    array-length p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->e:J

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->e:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->d:Ljava/lang/String;

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 12

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->a:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v1, 0x0

    :cond_3
    :goto_2
    iget-wide v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->e:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x800

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v5

    invoke-interface {v0, v5, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-long/2addr v1, v3

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v6, :cond_3

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->g:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->a(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;)Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v7

    iget-wide v10, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$b;->e:J

    move-wide v8, v1

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lokio/Source;->close()V

    :cond_6
    return-void
.end method
