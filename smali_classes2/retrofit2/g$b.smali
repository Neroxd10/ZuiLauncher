.class final Lretrofit2/g$b;
.super Lokhttp3/ResponseBody;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final b:Lokhttp3/ResponseBody;

.field private final c:Lokio/BufferedSource;

.field d:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 1

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lretrofit2/g$b;->b:Lokhttp3/ResponseBody;

    new-instance v0, Lretrofit2/g$b$a;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lretrofit2/g$b$a;-><init>(Lretrofit2/g$b;Lokio/Source;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/g$b;->c:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method b()V
    .locals 0

    iget-object p0, p0, Lretrofit2/g$b;->d:Ljava/io/IOException;

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lretrofit2/g$b;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    iget-object p0, p0, Lretrofit2/g$b;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lretrofit2/g$b;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public source()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lretrofit2/g$b;->c:Lokio/BufferedSource;

    return-object p0
.end method
