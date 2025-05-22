.class public final Lcom/amap/api/col/l3s/la;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/la$b;,
        Lcom/amap/api/col/l3s/la$c;,
        Lcom/amap/api/col/l3s/la$a;
    }
.end annotation


# static fields
.field private static k:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljavax/net/ssl/SSLContext;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amap/api/col/l3s/lb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljavax/net/ssl/SSLContext;

.field private e:Ljava/net/Proxy;

.field private volatile f:Z

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/amap/api/col/l3s/la$b;

.field private l:Lcom/amap/api/col/l3s/kw$a;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3s/la;-><init>(IILjava/net/Proxy;ZB)V

    return-void
.end method

.method private constructor <init>(IILjava/net/Proxy;ZB)V
    .locals 4

    const-string p5, "TLS"

    const-string v0, "ht"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/la;->f:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/amap/api/col/l3s/la;->g:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/l3s/la;->h:J

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/la;->o:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    iput p1, p0, Lcom/amap/api/col/l3s/la;->a:I

    iput p2, p0, Lcom/amap/api/col/l3s/la;->b:I

    iput-object p3, p0, Lcom/amap/api/col/l3s/la;->e:Ljava/net/Proxy;

    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/amap/api/col/l3s/ja;->b(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/la;->c:Z

    invoke-static {}, Lcom/amap/api/col/l3s/iv;->d()V

    invoke-static {}, Lcom/amap/api/col/l3s/ja;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/la;->c:Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/la;->l:Lcom/amap/api/col/l3s/kw$a;

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "-"

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/la;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string p3, "ic"

    invoke-static {p2, v0, p3}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p2, p0, Lcom/amap/api/col/l3s/la;->c:Z

    if-eqz p2, :cond_5

    :try_start_1
    sget-object p2, Lcom/amap/api/col/l3s/la;->k:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/amap/api/col/l3s/la;->k:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-static {p5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lcom/amap/api/col/l3s/la;->k:Ljava/lang/ref/SoftReference;

    :cond_2
    sget-object p2, Lcom/amap/api/col/l3s/la;->k:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/amap/api/col/l3s/la;->k:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    :cond_3
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_4

    :try_start_2
    invoke-static {p5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2

    :cond_4
    invoke-virtual {p2, p1, p1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/la;->d:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    const-string p2, "ne"

    invoke-static {p1, v0, p2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    new-instance p1, Lcom/amap/api/col/l3s/la$b;

    invoke-direct {p1, v1}, Lcom/amap/api/col/l3s/la$b;-><init>(B)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/la;->j:Lcom/amap/api/col/l3s/la$b;

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/l3s/ld;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/col/l3s/la;-><init>(Lcom/amap/api/col/l3s/ld;ZB)V

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/l3s/ld;ZB)V
    .locals 6

    iget v1, p1, Lcom/amap/api/col/l3s/ld;->a:I

    iget v2, p1, Lcom/amap/api/col/l3s/ld;->b:I

    iget-object v3, p1, Lcom/amap/api/col/l3s/ld;->c:Ljava/net/Proxy;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3s/la;-><init>(IILjava/net/Proxy;ZB)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ld;->getSDKName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    instance-of p2, p1, Lcom/amap/api/col/l3s/kx;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/amap/api/col/l3s/kx;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/kx;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ld;->getRequestHead()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/la;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ht"

    const-string p2, "pnfr"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/ld;)I
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/iv;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->isSupportIPV6()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3s/iv;->a()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    if-ne v1, p0, :cond_3

    return v1

    :catchall_0
    move-exception p0

    const-string v1, "htu"

    const-string v2, "gt"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/col/l3s/la$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/amap/api/col/l3s/la$a;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZIZ)Lcom/amap/api/col/l3s/la$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZIZ)Lcom/amap/api/col/l3s/la$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZIZ)",
            "Lcom/amap/api/col/l3s/la$a;"
        }
    .end annotation

    invoke-static {p1, p2, p7}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/kz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p7}, Lcom/amap/api/col/l3s/la;->b(I)V

    if-nez p5, :cond_0

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget-object p2, p0, Lcom/amap/api/col/l3s/la;->j:Lcom/amap/api/col/l3s/la$b;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/la$b;->a()Lcom/amap/api/col/l3s/la$c;

    move-result-object p2

    iput-object p4, p0, Lcom/amap/api/col/l3s/la;->n:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/amap/api/col/l3s/la;->j:Lcom/amap/api/col/l3s/la$b;

    invoke-virtual {p2, p4}, Lcom/amap/api/col/l3s/la$b;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/la$c;

    move-result-object p2

    :cond_1
    const/4 p3, 0x1

    if-eqz p8, :cond_2

    const-string p4, "/v3/iasdkauth"

    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {p4}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/la;->o:Z

    iget-object p4, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {p4}, Lcom/amap/api/col/l3s/iv;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const-string p8, "lct"

    invoke-interface {p5, p8, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget p4, Lcom/amap/api/col/l3s/kw;->a:I

    invoke-direct {p0, p4, p1, p5}, Lcom/amap/api/col/l3s/la;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p4, p0, Lcom/amap/api/col/l3s/la;->c:Z

    if-eqz p4, :cond_3

    invoke-static {p1}, Lcom/amap/api/col/l3s/ja;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance p4, Ljava/net/URL;

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/la;->l:Lcom/amap/api/col/l3s/kw$a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/amap/api/col/l3s/kw$a;->a()Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/la;->e:Ljava/net/Proxy;

    if-eqz p1, :cond_5

    invoke-virtual {p4, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    :cond_6
    :goto_1
    iget-boolean p4, p0, Lcom/amap/api/col/l3s/la;->c:Z

    if-eqz p4, :cond_8

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    sget-boolean p4, Lcom/amap/api/col/l3s/iv$f;->a:Z

    if-eqz p4, :cond_7

    invoke-direct {p0}, Lcom/amap/api/col/l3s/la;->b()Lcom/amap/api/col/l3s/lb;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p4}, Lcom/amap/api/col/l3s/lb;->a()V

    goto :goto_2

    :cond_7
    iget-object p4, p0, Lcom/amap/api/col/l3s/la;->d:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_2
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_3

    :cond_8
    check-cast p1, Ljava/net/HttpURLConnection;

    :goto_3
    sget-object p2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz p2, :cond_9

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0xd

    if-le p2, p4, :cond_9

    const-string p2, "Connection"

    const-string p4, "close"

    invoke-virtual {p1, p2, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, p5, p1}, Lcom/amap/api/col/l3s/la;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    if-eqz p6, :cond_a

    const-string p0, "POST"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_4

    :cond_a
    const-string p0, "GET"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :goto_4
    new-instance p0, Lcom/amap/api/col/l3s/la$a;

    invoke-direct {p0, p1, p7}, Lcom/amap/api/col/l3s/la$a;-><init>(Ljava/net/HttpURLConnection;I)V

    return-object p0
.end method

.method private a(Lcom/amap/api/col/l3s/la$a;ZJ)Lcom/amap/api/col/l3s/le;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "par"

    const-string v3, "ht"

    const-string v4, ""

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/kz;->a()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/amap/api/col/l3s/la$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_7

    const-string v12, "gsid"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move-object v4, v12

    :cond_0
    :try_start_1
    iget-object v12, v1, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-boolean v12, v1, Lcom/amap/api/col/l3s/la;->o:Z

    if-eqz v12, :cond_2

    const-string v12, "sc"

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-direct {v1, v7, v11}, Lcom/amap/api/col/l3s/la;->a(Ljava/util/Map;Z)Z

    move-result v12

    move v13, v10

    goto :goto_0

    :cond_1
    iget-object v12, v1, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {v12}, Lcom/amap/api/col/l3s/iv;->b(Ljava/lang/String;)V

    move v12, v11

    move v13, v12

    goto :goto_0

    :cond_2
    invoke-direct {v1, v7, v10}, Lcom/amap/api/col/l3s/la;->a(Ljava/util/Map;Z)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v13, v9

    :goto_0
    if-eqz v12, :cond_6

    :try_start_2
    iget-object v14, v1, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    const-string v15, "loc"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v1, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    if-ne v13, v9, :cond_3

    move v13, v10

    goto :goto_1

    :cond_3
    move v13, v11

    :goto_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v11, v1, Lcom/amap/api/col/l3s/la;->n:Ljava/lang/String;

    invoke-static {v14, v13, v15, v5, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v5, v1, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    if-ne v13, v9, :cond_5

    move v11, v10

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    invoke-static {v5, v11}, Lcom/amap/api/col/l3s/iv;->b(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    if-ne v13, v10, :cond_8

    iget-object v5, v1, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11, v5}, Lcom/amap/api/col/l3s/kz;->a(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    :cond_7
    const/4 v12, 0x0

    :catchall_1
    :cond_8
    :goto_3
    const/16 v5, 0xc8

    if-ne v8, v5, :cond_c

    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :try_start_5
    new-instance v14, Ljava/io/PushbackInputStream;

    invoke-direct {v14, v13, v9}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    new-array v8, v9, [B

    invoke-virtual {v14, v8}, Ljava/io/PushbackInputStream;->read([B)I

    invoke-virtual {v14, v8}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v9, 0x0

    aget-byte v11, v8, v9

    const/16 v9, 0x1f

    if-ne v11, v9, :cond_9

    aget-byte v8, v8, v10

    const/16 v9, -0x75

    if-ne v8, v9, :cond_9

    if-nez p2, :cond_9

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object v15, v8

    goto :goto_4

    :cond_9
    move-object v15, v14

    :goto_4
    const/16 v8, 0x400

    :try_start_7
    new-array v8, v8, [B

    :goto_5
    invoke-virtual {v15, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/amap/api/col/l3s/ka;->c()V

    new-instance v10, Lcom/amap/api/col/l3s/le;

    invoke-direct {v10}, Lcom/amap/api/col/l3s/le;-><init>()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v10, Lcom/amap/api/col/l3s/le;->a:[B

    iput-object v7, v10, Lcom/amap/api/col/l3s/le;->b:Ljava/util/Map;

    iget-object v7, v1, Lcom/amap/api/col/l3s/la;->i:Ljava/lang/String;

    iput-object v7, v10, Lcom/amap/api/col/l3s/le;->c:Ljava/lang/String;

    iput-object v4, v10, Lcom/amap/api/col/l3s/le;->d:Ljava/lang/String;

    iput-boolean v12, v10, Lcom/amap/api/col/l3s/le;->e:Z

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/amap/api/col/l3s/kz;->a(Ljava/net/URL;Lcom/amap/api/col/l3s/le;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v16, v10

    move-wide v10, v11

    invoke-static/range {v6 .. v11}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-eqz v13, :cond_b

    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_7
    :try_start_a
    invoke-virtual {v14}, Ljava/io/PushbackInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-object v16

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v13

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object/from16 v17, v13

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v13

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v17, v13

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v13

    const/4 v14, 0x0

    :goto_a
    const/4 v15, 0x0

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v17, v13

    const/4 v14, 0x0

    :goto_b
    const/4 v15, 0x0

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_c
    :try_start_c
    new-instance v0, Lcom/amap/api/col/l3s/it;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/amap/api/col/l3s/la;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/amap/api/col/l3s/la;->i:Ljava/lang/String;

    invoke-direct {v0, v5, v4, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/amap/api/col/l3s/it;->a(I)V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catchall_a
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    :goto_c
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    goto :goto_f

    :catch_4
    move-exception v0

    const/4 v5, 0x0

    :goto_d
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_e
    :try_start_d
    new-instance v6, Lcom/amap/api/col/l3s/it;

    const-string v7, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    iget-object v1, v1, Lcom/amap/api/col/l3s/la;->i:Ljava/lang/String;

    invoke-direct {v6, v7, v4, v1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread interrupted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/it;->h()V

    :cond_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :catchall_b
    move-exception v0

    move-object v1, v0

    :goto_f
    if-eqz v5, :cond_e

    :try_start_e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception v0

    move-object v4, v0

    invoke-static {v4, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_10
    if-eqz v17, :cond_f

    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    move-object v4, v0

    invoke-static {v4, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_11
    if-eqz v14, :cond_10

    :try_start_10
    invoke-virtual {v14}, Ljava/io/PushbackInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object v4, v0

    invoke-static {v4, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_12
    if-eqz v15, :cond_11

    :try_start_11
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object v4, v0

    invoke-static {v4, v3, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_13
    throw v1
.end method

.method private a(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amap/api/col/l3s/kw;->b:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_2

    const-string v1, "targetHost"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean p3, p0, Lcom/amap/api/col/l3s/la;->c:Z

    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/la;->j:Lcom/amap/api/col/l3s/la$b;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/la$b;->b(Ljava/lang/String;)V

    :cond_3
    return-object p2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "="

    const-string v1, ""

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    array-length v2, p0

    const/4 v4, 0x0

    move-object v5, v1

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, p0, v4

    const-string v7, "sdkversion"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    :cond_0
    const-string v7, "product"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    if-le v2, v3, :cond_3

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v1}, Lcom/amap/api/col/l3s/jv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-le v0, v3, :cond_3

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amap/api/col/l3s/jv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    const-string v0, "ht"

    const-string v2, "pnfp"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    return-object p1

    :catchall_0
    :cond_2
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/l3s/la;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "gsid"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/amap/api/col/l3s/la$a;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/amap/api/col/l3s/la$a;->b:I

    invoke-static {p0}, Lcom/amap/api/col/l3s/iv;->a(I)V

    return-void
.end method

.method private static a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/la$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v2, p0, Lcom/amap/api/col/l3s/la$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    :try_start_2
    iget v3, p0, Lcom/amap/api/col/l3s/la$a;->b:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    iget p0, p0, Lcom/amap/api/col/l3s/la$a;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x4

    if-ne p0, v3, :cond_2

    :cond_1
    move v0, v4

    goto :goto_1

    :catchall_0
    const/4 v1, 0x0

    :catchall_1
    move v2, v0

    :catchall_2
    :cond_2
    :goto_1
    move v4, v0

    move-object v3, v1

    move v5, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const-wide/16 v0, 0x0

    sub-long/2addr p4, p2

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move v6, p1

    invoke-static/range {v3 .. v8}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;ZZZJ)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "csid"

    iget-object v0, p0, Lcom/amap/api/col/l3s/la;->i:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "ht"

    const-string v1, "adh"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget p1, p0, Lcom/amap/api/col/l3s/la;->a:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget p0, p0, Lcom/amap/api/col/l3s/la;->b:I

    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/util/Map;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)Z"
        }
    .end annotation

    const-string v0, "#"

    const-string v1, "lct"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "sc"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-le v4, v2, :cond_1

    const-string v4, "1"

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    return v3

    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, p0

    goto :goto_2

    :catchall_0
    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method private b()Lcom/amap/api/col/l3s/lb;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/la;->m:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amap/api/col/l3s/la;->m:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lcom/amap/api/col/l3s/lb;

    sget-object v3, Lcom/amap/api/col/l3s/iv;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/l3s/la;->d:Ljavax/net/ssl/SSLContext;

    invoke-direct {v2, v3, v4}, Lcom/amap/api/col/l3s/lb;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLContext;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/amap/api/col/l3s/la;->m:Ljava/lang/ref/SoftReference;

    :cond_1
    sget-object v1, Lcom/amap/api/col/l3s/la;->k:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/amap/api/col/l3s/la;->m:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/lb;

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Lcom/amap/api/col/l3s/lb;

    sget-object v2, Lcom/amap/api/col/l3s/iv;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/amap/api/col/l3s/la;->d:Ljavax/net/ssl/SSLContext;

    invoke-direct {v1, v2, p0}, Lcom/amap/api/col/l3s/lb;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v1

    :catchall_0
    move-exception p0

    const-string v1, "ht"

    const-string v2, "gsf"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "platinfo"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    const-string v0, "ht"

    const-string v2, "pnfh"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x1388

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iput v1, p0, Lcom/amap/api/col/l3s/la;->a:I

    iput v1, p0, Lcom/amap/api/col/l3s/la;->b:I

    :goto_0
    return-void

    :cond_1
    iget p1, p0, Lcom/amap/api/col/l3s/la;->a:I

    sub-int/2addr p1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/la;->a:I

    iget p1, p0, Lcom/amap/api/col/l3s/la;->b:I

    sub-int/2addr p1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/la;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZI)Lcom/amap/api/col/l3s/le;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/amap/api/col/l3s/le;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const-string v10, "mgr"

    const-string v11, "ht"

    const-string v12, "\u672a\u77e5\u7684\u9519\u8bef"

    move-object/from16 v2, p1

    :try_start_0
    invoke-static {v2, v1}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/amap/api/col/l3s/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3s/le;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v7, 0x0

    const/4 v15, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide v13, v8

    move/from16 v8, p8

    move v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZIZ)Lcom/amap/api/col/l3s/la$a;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, v1, Lcom/amap/api/col/l3s/la$a;->a:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/amap/api/col/l3s/it; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v3, p7

    :try_start_2
    invoke-direct {v0, v1, v3, v13, v14}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJ)Lcom/amap/api/col/l3s/le;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2, v11, v10}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1

    :catchall_1
    move-exception v0

    move-object v13, v1

    move-object/from16 v16, v2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v13, v1

    move-object/from16 v16, v2

    goto/16 :goto_4

    :catch_1
    move-object v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto/16 :goto_6

    :catch_2
    move-object v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto/16 :goto_8

    :catch_3
    move-object v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto/16 :goto_a

    :catch_4
    move-object v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto/16 :goto_c

    :catch_5
    move-object v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto/16 :goto_e

    :catch_6
    move-object v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto/16 :goto_10

    :catch_7
    move-object v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object v13, v1

    goto :goto_1

    :catch_8
    move-exception v0

    move-object v13, v1

    goto :goto_3

    :catch_9
    move-object v13, v1

    const/4 v2, 0x1

    goto :goto_5

    :catch_a
    move-object v13, v1

    const/4 v2, 0x1

    goto :goto_7

    :catch_b
    move-object v13, v1

    const/4 v2, 0x1

    goto :goto_9

    :catch_c
    move-object v13, v1

    const/4 v2, 0x1

    goto :goto_b

    :catch_d
    move-object v13, v1

    const/4 v2, 0x1

    goto :goto_d

    :catch_e
    move-object v13, v1

    const/4 v2, 0x1

    goto :goto_f

    :catch_f
    move-object v13, v1

    const/4 v2, 0x1

    goto :goto_11

    :catchall_3
    move-exception v0

    const/4 v13, 0x0

    :goto_1
    const/16 v16, 0x0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    invoke-direct {v0, v12}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    const/4 v14, 0x1

    goto :goto_14

    :catch_10
    move-exception v0

    const/4 v13, 0x0

    :goto_3
    const/16 v16, 0x0

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->g()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const/4 v2, 0x1

    xor-int/lit8 v14, v1, 0x1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :catchall_6
    move-exception v0

    const/4 v2, 0x1

    goto :goto_13

    :catch_11
    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_5
    const/16 v16, 0x0

    :goto_6
    :try_start_7
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_12
    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_7
    const/16 v16, 0x0

    :goto_8
    new-instance v0, Lcom/amap/api/col/l3s/it;

    invoke-direct {v0, v12}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_13
    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_9
    const/16 v16, 0x0

    :goto_a
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_14
    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_b
    const/16 v16, 0x0

    :goto_c
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_15
    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_d
    const/16 v16, 0x0

    :goto_e
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_16
    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_f
    const/16 v16, 0x0

    :goto_10
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_17
    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_11
    const/16 v16, 0x0

    :goto_12
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    :goto_13
    move-object v1, v0

    move v14, v2

    :goto_14
    if-eqz v14, :cond_2

    :try_start_8
    invoke-static/range {p8 .. p8}, Lcom/amap/api/col/l3s/iv;->a(I)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 p0, v13

    move/from16 p1, v0

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    :cond_2
    if-eqz v16, :cond_3

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_15

    :catchall_9
    move-exception v0

    move-object v2, v0

    invoke-static {v2, v11, v10}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_15
    throw v1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BZI)Lcom/amap/api/col/l3s/le;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BZI)",
            "Lcom/amap/api/col/l3s/le;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p6

    const-string v11, "\u672a\u77e5\u7684\u9519\u8bef"

    const-string v12, "mPt"

    const-string v13, "ht"

    :try_start_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/la;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_1
    invoke-static {v2, v3, v1}, Lcom/amap/api/col/l3s/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3s/le;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v7, 0x1

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide v14, v8

    move/from16 v8, p8

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZIZ)Lcom/amap/api/col/l3s/la$a;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lcom/amap/api/col/l3s/it; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v2, v1, Lcom/amap/api/col/l3s/la$a;->a:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/amap/api/col/l3s/it; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v10, :cond_2

    :try_start_3
    array-length v3, v10
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v3, :cond_2

    :try_start_4
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v14, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    throw v0

    :cond_2
    :goto_1
    move/from16 v3, p7

    invoke-direct {v0, v1, v3, v14, v15}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJ)Lcom/amap/api/col/l3s/le;

    move-result-object v1
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-static {v2, v13, v12}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v1

    :catchall_3
    move-exception v0

    move-object v14, v2

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v14, v2

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v14, v2

    const/4 v3, 0x1

    goto/16 :goto_e

    :catch_2
    move-object v14, v2

    const/4 v3, 0x1

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object v14, v2

    const/4 v3, 0x1

    goto/16 :goto_12

    :catch_4
    move-exception v0

    move-object v14, v2

    const/4 v3, 0x1

    goto/16 :goto_14

    :catch_5
    move-exception v0

    move-object v14, v2

    const/4 v3, 0x1

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move-object v14, v2

    const/4 v3, 0x1

    goto/16 :goto_18

    :catch_7
    move-exception v0

    move-object v14, v2

    const/4 v3, 0x1

    goto/16 :goto_1a

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    goto :goto_3

    :catch_a
    const/4 v3, 0x1

    goto :goto_f

    :catch_b
    move-exception v0

    goto :goto_4

    :catch_c
    move-exception v0

    goto :goto_5

    :catch_d
    move-exception v0

    goto :goto_6

    :catch_e
    move-exception v0

    goto :goto_7

    :catch_f
    move-exception v0

    goto :goto_8

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    :goto_3
    const/4 v3, 0x1

    goto :goto_d

    :catch_11
    move-exception v0

    const/4 v1, 0x0

    :goto_4
    const/4 v3, 0x1

    goto :goto_11

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    :goto_5
    const/4 v3, 0x1

    goto :goto_13

    :catch_13
    move-exception v0

    const/4 v1, 0x0

    :goto_6
    const/4 v3, 0x1

    goto :goto_15

    :catch_14
    move-exception v0

    const/4 v1, 0x0

    :goto_7
    const/4 v3, 0x1

    goto :goto_17

    :catch_15
    move-exception v0

    const/4 v1, 0x0

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_19

    :catchall_5
    move-exception v0

    const/4 v1, 0x0

    :goto_9
    const/4 v14, 0x0

    :goto_a
    :try_start_8
    invoke-static {v0, v13, v12}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    invoke-direct {v0, v11}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    const/4 v15, 0x1

    goto/16 :goto_1c

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    :goto_b
    const/4 v14, 0x0

    :goto_c
    :try_start_9
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->g()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    const/4 v3, 0x1

    xor-int/lit8 v15, v2, 0x1

    :try_start_a
    invoke-static {v0, v13, v12}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    goto :goto_1c

    :catchall_8
    move-exception v0

    const/4 v3, 0x1

    goto :goto_1b

    :catch_17
    move-exception v0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_d
    const/4 v14, 0x0

    :goto_e
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_18
    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_f
    const/4 v14, 0x0

    :goto_10
    new-instance v0, Lcom/amap/api/col/l3s/it;

    invoke-direct {v0, v11}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_19
    move-exception v0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_11
    const/4 v14, 0x0

    :goto_12
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1a
    move-exception v0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_13
    const/4 v14, 0x0

    :goto_14
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1b
    move-exception v0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_15
    const/4 v14, 0x0

    :goto_16
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1c
    move-exception v0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_17
    const/4 v14, 0x0

    :goto_18
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1d
    move-exception v0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_19
    const/4 v14, 0x0

    :goto_1a
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :catchall_9
    move-exception v0

    :goto_1b
    move-object v2, v0

    move v15, v3

    :goto_1c
    if-eqz v15, :cond_4

    :try_start_c
    invoke-static/range {p8 .. p8}, Lcom/amap/api/col/l3s/iv;->a(I)V

    const/4 v0, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 p0, v1

    move/from16 p1, v0

    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catchall_a
    :cond_4
    if-eqz v14, :cond_5

    :try_start_d
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_1d

    :catchall_b
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v13, v12}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1d
    throw v2
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;I)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p6

    const-string v1, "mgr"

    const-string v2, "hth"

    const-string v3, "\u672a\u77e5\u7684\u9519\u8bef"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    :try_start_0
    invoke-static {v7, v0}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_17
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/col/l3s/la$a;

    move-result-object v7
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lcom/amap/api/col/l3s/it; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, v7, Lcom/amap/api/col/l3s/la$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0x190

    if-ge v0, v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/amap/api/col/l3s/it; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    move-object/from16 p0, v7

    move/from16 p1, v0

    move-wide/from16 p2, v15

    move-wide/from16 p4, v8

    :try_start_3
    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v6

    :goto_0
    const/16 v8, 0x32

    if-ge v0, v8, :cond_0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {v3, v2, v1}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v4

    :catchall_1
    move-exception v0

    move v4, v6

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v5

    move v4, v6

    goto :goto_3

    :catch_1
    move-object v3, v5

    move v4, v6

    goto :goto_4

    :catch_2
    move v4, v6

    goto :goto_5

    :catch_3
    move-object v3, v5

    move v4, v6

    goto :goto_6

    :catch_4
    move-object v3, v5

    move v4, v6

    goto :goto_7

    :catch_5
    move-object v3, v5

    move v4, v6

    goto :goto_8

    :catch_6
    move-object v3, v5

    move v4, v6

    goto :goto_9

    :catch_7
    move-object v3, v5

    move v4, v6

    goto :goto_a

    :cond_2
    :try_start_5
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v6, "http\u8bfb\u53d6header\u5931\u8d25"

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/amap/api/col/l3s/it; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :goto_2
    move-object v6, v5

    move-object v5, v7

    goto/16 :goto_c

    :catch_8
    move-exception v0

    move-object v3, v5

    :goto_3
    move-object v5, v7

    goto/16 :goto_d

    :catch_9
    move-object v3, v5

    :goto_4
    move-object v5, v7

    goto/16 :goto_e

    :catch_a
    :goto_5
    move-object v6, v5

    move-object v5, v7

    goto/16 :goto_f

    :catch_b
    move-object v3, v5

    :goto_6
    move-object v5, v7

    goto/16 :goto_10

    :catch_c
    move-object v3, v5

    :goto_7
    move-object v5, v7

    goto/16 :goto_11

    :catch_d
    move-object v3, v5

    :goto_8
    move-object v5, v7

    goto/16 :goto_12

    :catch_e
    move-object v3, v5

    :goto_9
    move-object v5, v7

    goto/16 :goto_13

    :catch_f
    move-object v3, v5

    :goto_a
    move-object v5, v7

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    goto :goto_b

    :catch_10
    move-exception v0

    move-object v3, v5

    goto :goto_d

    :catch_11
    move-object v3, v5

    goto :goto_e

    :catch_12
    move-object v3, v5

    goto :goto_10

    :catch_13
    move-object v3, v5

    goto :goto_11

    :catch_14
    move-object v3, v5

    goto :goto_12

    :catch_15
    move-object v3, v5

    goto :goto_13

    :catch_16
    move-object v3, v5

    goto :goto_14

    :catchall_4
    move-exception v0

    move v4, v6

    :goto_b
    move-object v6, v5

    :goto_c
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/l3s/it;

    invoke-direct {v0, v3}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catch_17
    move-exception v0

    move-object v3, v5

    move v4, v6

    :goto_d
    :try_start_7
    throw v0

    :catch_18
    move-object v3, v5

    move v4, v6

    :goto_e
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v6, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catch_19
    move v4, v6

    :catch_1a
    move-object v6, v5

    :goto_f
    :try_start_8
    new-instance v0, Lcom/amap/api/col/l3s/it;

    invoke-direct {v0, v3}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_15

    :catch_1b
    move-object v3, v5

    move v4, v6

    :goto_10
    :try_start_9
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v6, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1c
    move-object v3, v5

    move v4, v6

    :goto_11
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v6, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1d
    move-object v3, v5

    move v4, v6

    :goto_12
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v6, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1e
    move-object v3, v5

    move v4, v6

    :goto_13
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v6, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1f
    move-object v3, v5

    move v4, v6

    :goto_14
    new-instance v0, Lcom/amap/api/col/l3s/it;

    const-string v6, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    move-object v6, v3

    :goto_15
    move-object v3, v0

    if-eqz v4, :cond_3

    :try_start_a
    invoke-static {v5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;)V

    const/4 v0, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 p0, v5

    move/from16 p1, v0

    move-wide/from16 p2, v7

    move-wide/from16 p4, v9

    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    :cond_3
    if-eqz v6, :cond_4

    :try_start_b
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_16

    :catchall_8
    move-exception v0

    move-object v4, v0

    invoke-static {v4, v2, v1}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_16
    throw v3
.end method

.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/la;->f:Z

    return-void
.end method

.method final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/la;->h:J

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[BLcom/amap/api/col/l3s/ky$a;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/amap/api/col/l3s/ky$a;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    const-string v11, "mdr"

    const-string v12, "ht"

    if-nez v10, :cond_0

    return-void

    :cond_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    :try_start_0
    invoke-static {v2, v1}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_1

    array-length v1, v9

    if-lez v1, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    move/from16 v16, v15

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, v16

    move/from16 v8, p9

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/col/l3s/la$a;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    :try_start_2
    iget-object v2, v1, Lcom/amap/api/col/l3s/la$a;->a:Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/amap/api/col/l3s/la;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RANGE"

    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_2

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1

    :cond_2
    move-object v3, v14

    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {v2}, Lcom/amap/api/col/l3s/la;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, v15

    :goto_2
    const/16 v7, 0xce

    if-eq v5, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    move v7, v15

    :goto_3
    and-int/2addr v6, v7

    if-eqz v6, :cond_7

    new-instance v6, Lcom/amap/api/col/l3s/it;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/amap/api/col/l3s/la;->i:Ljava/lang/String;

    invoke-direct {v6, v5, v4, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v6}, Lcom/amap/api/col/l3s/ky$a;->onException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :try_start_5
    invoke-static {v1}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;)V

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 p0, v1

    move/from16 p1, v0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-void

    :cond_7
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move/from16 p2, v6

    move-wide/from16 p3, v17

    move-wide/from16 p5, v4

    invoke-static/range {p1 .. p6}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    const/16 v4, 0x400

    :try_start_9
    new-array v5, v4, [B

    :goto_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_a

    iget-boolean v6, v0, Lcom/amap/api/col/l3s/la;->f:Z

    if-nez v6, :cond_a

    invoke-virtual {v14, v5, v15, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_a

    iget-wide v7, v0, Lcom/amap/api/col/l3s/la;->g:J

    const-wide/16 v16, -0x1

    cmp-long v7, v7, v16

    if-eqz v7, :cond_8

    iget-wide v7, v0, Lcom/amap/api/col/l3s/la;->h:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 p1, v14

    :try_start_a
    iget-wide v13, v0, Lcom/amap/api/col/l3s/la;->g:J

    cmp-long v7, v7, v13

    if-gez v7, :cond_b

    goto :goto_7

    :cond_8
    move-object/from16 p1, v14

    :goto_7
    if-ne v6, v4, :cond_9

    iget-wide v7, v0, Lcom/amap/api/col/l3s/la;->h:J

    invoke-interface {v10, v5, v7, v8}, Lcom/amap/api/col/l3s/ky$a;->onDownload([BJ)V

    goto :goto_8

    :cond_9
    new-array v7, v6, [B

    invoke-static {v5, v15, v7, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v13, v0, Lcom/amap/api/col/l3s/la;->h:J

    invoke-interface {v10, v7, v13, v14}, Lcom/amap/api/col/l3s/ky$a;->onDownload([BJ)V

    :goto_8
    iget-wide v7, v0, Lcom/amap/api/col/l3s/la;->h:J

    int-to-long v13, v6

    add-long/2addr v7, v13

    iput-wide v7, v0, Lcom/amap/api/col/l3s/la;->h:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v14, p1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_e

    :cond_a
    move-object/from16 p1, v14

    :cond_b
    :try_start_b
    iget-boolean v0, v0, Lcom/amap/api/col/l3s/la;->f:Z

    if-eqz v0, :cond_c

    invoke-interface/range {p8 .. p8}, Lcom/amap/api/col/l3s/ky$a;->onStop()V

    goto :goto_9

    :cond_c
    invoke-interface/range {p8 .. p8}, Lcom/amap/api/col/l3s/ky$a;->onFinish()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :goto_9
    if-eqz p1, :cond_d

    :try_start_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_a

    :catch_0
    :catchall_4
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_a
    if-eqz v2, :cond_e

    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_b
    if-eqz v3, :cond_f

    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_c
    return-void

    :catchall_7
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object/from16 p1, v14

    goto :goto_e

    :catchall_9
    move-exception v0

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object v3, v14

    goto :goto_e

    :catchall_b
    move-exception v0

    move-object v2, v14

    goto :goto_d

    :catchall_c
    move-exception v0

    move-object v1, v14

    move-object v2, v1

    :goto_d
    move-object v3, v2

    :goto_e
    const/4 v13, 0x1

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object v1, v14

    move-object v2, v1

    move-object v3, v2

    :goto_f
    move v13, v15

    :goto_10
    :try_start_f
    invoke-interface {v10, v0}, Lcom/amap/api/col/l3s/ky$a;->onException(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_12

    if-eqz v13, :cond_10

    :try_start_10
    invoke-static {v1}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;)V

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 p0, v1

    move/from16 p1, v0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    :catchall_e
    :cond_10
    if-eqz v14, :cond_11

    :try_start_11
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    goto :goto_11

    :catch_1
    :catchall_f
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    if-eqz v2, :cond_12

    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    if-eqz v3, :cond_13

    :try_start_13
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :catchall_12
    move-exception v0

    move-object v4, v0

    if-eqz v13, :cond_14

    :try_start_14
    invoke-static {v1}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;)V

    const/4 v0, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 p0, v1

    move/from16 p1, v0

    move-wide/from16 p2, v5

    move-wide/from16 p4, v7

    invoke-static/range {p0 .. p5}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/la$a;ZJJ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_13

    :catchall_13
    :cond_14
    if-eqz v14, :cond_15

    :try_start_15
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    goto :goto_14

    :catch_2
    :catchall_14
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_14
    if-eqz v2, :cond_16

    :try_start_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_15

    goto :goto_15

    :catchall_15
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_15
    if-eqz v3, :cond_17

    :try_start_17
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    goto :goto_16

    :catchall_16
    move-exception v0

    move-object v1, v0

    invoke-static {v1, v12, v11}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_16
    throw v4
.end method

.method final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/la;->g:J

    return-void
.end method
