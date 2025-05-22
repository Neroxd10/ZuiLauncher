.class public final Lcom/amap/api/col/l3s/do;
.super Lcom/amap/api/col/l3s/im;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/do$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/im<",
        "Ljava/lang/String;",
        "Lcom/amap/api/col/l3s/do$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/im;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p1, "/map/styles"

    iput-object p1, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final synthetic a([B)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/amap/api/col/l3s/do$a;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/do$a;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/do$a;->a:[B

    return-object p0
.end method

.method protected final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    return-void
.end method

.method public final getIPV6URL()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/do;->getURL()Ljava/lang/String;

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

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "output"

    const-string v2, "bin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final getURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final isSupportIPV6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
