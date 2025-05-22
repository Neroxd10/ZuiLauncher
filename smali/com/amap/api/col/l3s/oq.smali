.class public final Lcom/amap/api/col/l3s/oq;
.super Lcom/amap/api/col/l3s/jb;
.source ""


# instance fields
.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:[B

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jb;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/oq;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/amap/api/col/l3s/oq;->e:Ljava/util/Map;

    const-string v1, ""

    iput-object v1, p0, Lcom/amap/api/col/l3s/oq;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/oq;->g:[B

    iput-object v0, p0, Lcom/amap/api/col/l3s/oq;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oq;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/l3s/oq;->d:Ljava/util/Map;

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oq;->g:[B

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oq;->h:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/l3s/oq;->e:Ljava/util/Map;

    return-void
.end method

.method public final getEntityBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oq;->g:[B

    return-object p0
.end method

.method public final getIPV6URL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/oq;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oq;->h:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/amap/api/col/l3s/jb;->getIPV6URL()Ljava/lang/String;

    move-result-object p0

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/oq;->e:Ljava/util/Map;

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/oq;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oq;->f:Ljava/lang/String;

    return-object p0
.end method
