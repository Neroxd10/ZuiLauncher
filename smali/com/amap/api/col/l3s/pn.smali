.class public final Lcom/amap/api/col/l3s/pn;
.super Lcom/amap/api/col/l3s/kx;
.source ""


# instance fields
.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:[B

.field j:[B

.field k:Z

.field l:Ljava/lang/String;

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/kx;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/pn;->f:Ljava/util/Map;

    const-string p2, ""

    iput-object p2, p0, Lcom/amap/api/col/l3s/pn;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3s/pn;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3s/pn;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3s/pn;->i:[B

    iput-object p1, p0, Lcom/amap/api/col/l3s/pn;->j:[B

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/pn;->k:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/pn;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3s/pn;->m:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/pn;->n:Z

    return-void
.end method


# virtual methods
.method public final e()[B
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->i:[B

    return-object p0
.end method

.method public final f()[B
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->j:[B

    return-object p0
.end method

.method protected final getIPDNSName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final getIPV6URL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->m:Ljava/util/Map;

    return-object p0
.end method

.method public final getRequestHead()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->f:Ljava/util/Map;

    return-object p0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/pn;->k:Z

    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pn;->l:Ljava/lang/String;

    return-object p0
.end method

.method protected final j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/pn;->n:Z

    return p0
.end method
