.class public final Lcom/lenovo/cdnsdk/b/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Lcom/lenovo/cdnsdk/b/i;

.field public b:I

.field public transient c:Lcom/lenovo/cdnsdk/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/cdnsdk/b/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lcom/lenovo/cdnsdk/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/cdnsdk/b/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/lenovo/cdnsdk/b/h;

.field private h:Lcom/lenovo/cdnsdk/b/g;

.field private i:Ljava/net/HttpURLConnection;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/cdnsdk/b/h;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/json"

    iput-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->f:Ljava/lang/String;

    sget v0, Lcom/lenovo/cdnsdk/b/k;->b:I

    iput v0, p0, Lcom/lenovo/cdnsdk/b/n;->b:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/cdnsdk/b/n;->k:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/lenovo/cdnsdk/b/n;->l:I

    const v0, 0x927c0

    iput v0, p0, Lcom/lenovo/cdnsdk/b/n;->m:I

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->g:Lcom/lenovo/cdnsdk/b/h;

    iput-object p2, p0, Lcom/lenovo/cdnsdk/b/n;->e:Ljava/lang/String;

    sget-object p1, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    invoke-static {}, Lcom/lenovo/cdnsdk/b/c;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->o:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->o:Landroid/os/Handler;

    :cond_0
    sget-object p1, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget p1, p1, Lcom/lenovo/cdnsdk/b/c;->e:I

    if-lez p1, :cond_1

    iput p1, p0, Lcom/lenovo/cdnsdk/b/n;->k:I

    :cond_1
    sget-object p1, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget p1, p1, Lcom/lenovo/cdnsdk/b/c;->f:I

    if-lez p1, :cond_2

    iput p1, p0, Lcom/lenovo/cdnsdk/b/n;->l:I

    :cond_2
    sget-object p1, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget p1, p1, Lcom/lenovo/cdnsdk/b/c;->g:I

    if-lez p1, :cond_3

    iput p1, p0, Lcom/lenovo/cdnsdk/b/n;->m:I

    :cond_3
    sget-object p1, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget-object p1, p1, Lcom/lenovo/cdnsdk/b/c;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget-object p1, p1, Lcom/lenovo/cdnsdk/b/c;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->f:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->h:Lcom/lenovo/cdnsdk/b/g;

    if-nez p1, :cond_5

    new-instance p1, Lcom/lenovo/cdnsdk/b/g;

    invoke-direct {p1}, Lcom/lenovo/cdnsdk/b/g;-><init>()V

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->h:Lcom/lenovo/cdnsdk/b/g;

    :cond_5
    iget-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    if-nez p1, :cond_6

    new-instance p1, Lcom/lenovo/cdnsdk/b/i;

    invoke-direct {p1}, Lcom/lenovo/cdnsdk/b/i;-><init>()V

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/lenovo/cdnsdk/b/n;)Lcom/lenovo/cdnsdk/b/o;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->d:Lcom/lenovo/cdnsdk/b/o;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/cdnsdk/b/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/cdnsdk/b/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->g:Lcom/lenovo/cdnsdk/b/h;

    sget-object v1, Lcom/lenovo/cdnsdk/b/h;->a:Lcom/lenovo/cdnsdk/b/h;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string p1, "utf-8"

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->d:Lcom/lenovo/cdnsdk/b/o;

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/o;->c:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HiHttp"

    invoke-static {p1, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private d()Ljava/net/HttpURLConnection;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n;->g:Lcom/lenovo/cdnsdk/b/h;

    invoke-virtual {v1}, Lcom/lenovo/cdnsdk/b/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/lenovo/cdnsdk/b/n;->l:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/lenovo/cdnsdk/b/n;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/n;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HiHttp"

    invoke-static {v1, v0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private e(Ljava/lang/Exception;)V
    .locals 1

    iget v0, p0, Lcom/lenovo/cdnsdk/b/n;->k:I

    if-lez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " Connect error, Retry connect :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/lenovo/cdnsdk/b/n;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HiHttp"

    invoke-static {v0, p1}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/n;->p()V

    const-wide/16 p0, 0x3e8

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->d:Lcom/lenovo/cdnsdk/b/o;

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/o;->c:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic f(Lcom/lenovo/cdnsdk/b/n;)Lcom/lenovo/cdnsdk/b/a;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->c:Lcom/lenovo/cdnsdk/b/a;

    return-object p0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget-object v0, v0, Lcom/lenovo/cdnsdk/b/c;->d:Lcom/lenovo/cdnsdk/b/g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/lenovo/cdnsdk/b/g;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->h:Lcom/lenovo/cdnsdk/b/g;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/b/c;->d:Lcom/lenovo/cdnsdk/b/g;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/lenovo/cdnsdk/b/g;->a:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/lenovo/cdnsdk/b/g;->a:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/b/g;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->h:Lcom/lenovo/cdnsdk/b/g;

    iget-object v0, v0, Lcom/lenovo/cdnsdk/b/g;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->h:Lcom/lenovo/cdnsdk/b/g;

    iget-object v0, v0, Lcom/lenovo/cdnsdk/b/g;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/lenovo/cdnsdk/b/n;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->d:Lcom/lenovo/cdnsdk/b/o;

    iput-object p1, v0, Lcom/lenovo/cdnsdk/b/o;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/lenovo/cdnsdk/b/o;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n;->c:Lcom/lenovo/cdnsdk/b/a;

    iget-object v1, v1, Lcom/lenovo/cdnsdk/b/a;->a:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/lenovo/cdnsdk/b/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/lenovo/cdnsdk/b/o;->a:Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/lenovo/cdnsdk/b/n;->o:Landroid/os/Handler;

    new-instance v0, Lcom/lenovo/cdnsdk/b/n$b;

    invoke-direct {v0, p0}, Lcom/lenovo/cdnsdk/b/n$b;-><init>(Lcom/lenovo/cdnsdk/b/n;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "HiHttp"

    :try_start_0
    sget-object v2, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget-object v2, v2, Lcom/lenovo/cdnsdk/b/c;->c:Lcom/lenovo/cdnsdk/b/i;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget-object v2, v2, Lcom/lenovo/cdnsdk/b/c;->c:Lcom/lenovo/cdnsdk/b/i;

    iget-object v3, v2, Lcom/lenovo/cdnsdk/b/i;->a:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/lenovo/cdnsdk/b/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    sget-object v3, Lcom/lenovo/cdnsdk/b/c;->a:Lcom/lenovo/cdnsdk/b/c;

    iget-object v3, v3, Lcom/lenovo/cdnsdk/b/c;->c:Lcom/lenovo/cdnsdk/b/i;

    invoke-virtual {v2, v3}, Lcom/lenovo/cdnsdk/b/i;->a(Lcom/lenovo/cdnsdk/b/i;)V

    :cond_1
    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->g:Lcom/lenovo/cdnsdk/b/h;

    sget-object v3, Lcom/lenovo/cdnsdk/b/h;->a:Lcom/lenovo/cdnsdk/b/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v2, v3, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    iget-object v2, v2, Lcom/lenovo/cdnsdk/b/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/cdnsdk/b/n;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->e:Ljava/lang/String;

    :cond_3
    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->e:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/n;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/n;->k()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v1, v0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/cdnsdk/b/n;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/n;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/cdnsdk/b/n;->n:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    iget-object v3, v3, Lcom/lenovo/cdnsdk/b/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/lenovo/cdnsdk/b/n;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->p:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HiHttp"

    invoke-static {v1, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method static synthetic l(Lcom/lenovo/cdnsdk/b/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/n;->p()V

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->a:Lcom/lenovo/cdnsdk/b/i;

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HiHttp"

    invoke-static {v0, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method static synthetic n(Lcom/lenovo/cdnsdk/b/n;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->q:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic o(Lcom/lenovo/cdnsdk/b/n;)Ljava/net/HttpURLConnection;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private p()V
    .locals 3

    const-string v0, "HiHttp"

    :try_start_0
    iget v1, p0, Lcom/lenovo/cdnsdk/b/n;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/cdnsdk/b/n;->k:I

    invoke-direct {p0}, Lcom/lenovo/cdnsdk/b/n;->d()Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/cdnsdk/b/n;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/lenovo/cdnsdk/b/n;->e(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n;->d:Lcom/lenovo/cdnsdk/b/o;

    iput-object v1, p0, Lcom/lenovo/cdnsdk/b/o;->c:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/lenovo/cdnsdk/b/n;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic q(Lcom/lenovo/cdnsdk/b/n;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n;->o:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/cdnsdk/b/n$a;

    invoke-direct {v1, p0}, Lcom/lenovo/cdnsdk/b/n$a;-><init>(Lcom/lenovo/cdnsdk/b/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
