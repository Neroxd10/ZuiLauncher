.class public final Lcom/amap/api/col/l3s/cn;
.super Lcom/amap/api/col/l3s/cj;
.source ""


# direct methods
.method public constructor <init>(ILcom/amap/api/col/l3s/bg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/cj;-><init>(ILcom/amap/api/col/l3s/bg;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/ck;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object v1, v0, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bg;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bg;->d()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->c()Lcom/amap/api/col/l3s/ck;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/api/col/l3s/co;->h()V

    return-void
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->e()V

    return-void
.end method
