.class public abstract Lcom/amap/api/col/l3s/cj;
.super Lcom/amap/api/col/l3s/ck;
.source ""


# direct methods
.method public constructor <init>(ILcom/amap/api/col/l3s/bg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/ck;-><init>(ILcom/amap/api/col/l3s/bg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bg;->a:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/ck;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    iget-object v1, v0, Lcom/amap/api/col/l3s/bg;->a:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bg;->a(Lcom/amap/api/col/l3s/ck;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ck;->b:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->d()V

    return-void
.end method
