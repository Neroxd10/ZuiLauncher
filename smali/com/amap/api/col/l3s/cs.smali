.class public final Lcom/amap/api/col/l3s/cs;
.super Lcom/amap/api/col/l3s/ck;
.source ""


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/bg;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/l3s/ck;-><init>(ILcom/amap/api/col/l3s/bg;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object p1, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object p1, p1, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ck;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object v0, p1, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/bg;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->c()Lcom/amap/api/col/l3s/ck;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/api/col/l3s/co;->h()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->d()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bg;->f:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/ck;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object v1, v0, Lcom/amap/api/col/l3s/bg;->f:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bg;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->c()Lcom/amap/api/col/l3s/ck;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/api/col/l3s/co;->h()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->d()V

    return-void
.end method
