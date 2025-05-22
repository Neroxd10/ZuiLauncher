.class public final Lcom/amap/api/col/l3s/dm;
.super Lcom/amap/api/col/l3s/im;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/dm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/im<",
        "Ljava/lang/String;",
        "Lcom/amap/api/col/l3s/dm$a;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/im;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p1, "1.0"

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->j:Ljava/lang/String;

    const-string p1, "0"

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->k:Ljava/lang/String;

    const-string p1, "lastModified"

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->l:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dm;->m:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->n:Ljava/lang/String;

    const-string p1, "/map/styles"

    iput-object p1, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/im;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/im;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p1, "1.0"

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->j:Ljava/lang/String;

    const-string p1, "0"

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->k:Ljava/lang/String;

    const-string p1, "lastModified"

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->l:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dm;->m:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/amap/api/col/l3s/dm;->n:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/dm;->m:Z

    if-eqz p3, :cond_0

    const-string p2, "/sdk/map/styles"

    iput-object p2, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    goto :goto_0

    :cond_0
    const-string p1, "/map/styles"

    iput-object p1, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/im;->h:Z

    return-void
.end method

.method private b([B)Lcom/amap/api/col/l3s/dm$a;
    .locals 3

    new-instance v0, Lcom/amap/api/col/l3s/dm$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/dm$a;-><init>()V

    iput-object p1, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dm;->m:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length p0, p1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iput-object v1, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    goto :goto_0

    :cond_0
    array-length p0, p1

    const/16 v2, 0x400

    if-gt p0, v2, :cond_1

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {p0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "errcode"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iput-object v1, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CustomStyleRequest"

    const-string v1, "loadData"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/amap/api/col/l3s/le;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/amap/api/col/l3s/le;->a:[B

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dm;->b([B)Lcom/amap/api/col/l3s/dm$a;

    move-result-object p0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dm$a;->d:Z

    iget-object v0, p1, Lcom/amap/api/col/l3s/le;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v2, "lastModified"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/amap/api/col/l3s/le;->b:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm$a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_1
    return-object p0
.end method

.method protected final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final synthetic a([B)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dm;->b([B)Lcom/amap/api/col/l3s/dm$a;

    move-result-object p0

    return-object p0
.end method

.method protected final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->n:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->i:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dm;->k:Ljava/lang/String;

    return-void
.end method

.method public final getIPV6URL()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dm;->getURL()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/dm;->m:Z

    if-nez v1, :cond_0

    const-string v1, "output"

    const-string v2, "bin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dm;->n:Ljava/lang/String;

    const-string v2, "sdkType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dm;->i:Ljava/lang/String;

    const-string v2, "styleid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dm;->j:Ljava/lang/String;

    const-string v2, "protocol"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ispublic"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dm;->k:Ljava/lang/String;

    const-string v2, "lastModified"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3s/ix;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/jf;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ix;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getRequestHead()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/je;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sget-object v2, Lcom/amap/api/col/l3s/u;->c:Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "3dmap"

    aput-object v4, v3, v0

    const-string v0, "platform=Android&sdkversion=%s&product=%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "platinfo"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ix;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x-INFO"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "key"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "logversion"

    const-string v0, "2.1"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final getURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://restsdk.amap.com/v4"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportIPV6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
