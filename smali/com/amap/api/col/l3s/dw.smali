.class public abstract Lcom/amap/api/col/l3s/dw;
.super Lcom/amap/api/col/l3s/ld;
.source ""


# instance fields
.field protected isPostFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ld;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
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

    const/4 p0, 0x0

    return-object p0
.end method

.method protected makeHttpRequest()[B
    .locals 3

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result v0

    invoke-static {}, Lcom/amap/api/col/l3s/lc;->c()Lcom/amap/api/col/l3s/lc;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/lc;->b(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/amap/api/col/l3s/lc;->g(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/amap/api/col/l3s/lc;->h(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected makeHttpRequestNeedHeader()Lcom/amap/api/col/l3s/le;
    .locals 3

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result v0

    invoke-static {}, Lcom/amap/api/col/l3s/lc;->c()Lcom/amap/api/col/l3s/lc;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p0, v1}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {p0, v1}, Lcom/amap/api/col/l3s/lc;->c(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method protected makeHttpRequestWithInterrupted()[B
    .locals 2

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result v0

    invoke-static {}, Lcom/amap/api/col/l3s/lc;->c()Lcom/amap/api/col/l3s/lc;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amap/api/col/l3s/kw;->e(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/amap/api/col/l3s/lc;->i(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/amap/api/col/l3s/kw;->f(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/amap/api/col/l3s/lc;->j(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
