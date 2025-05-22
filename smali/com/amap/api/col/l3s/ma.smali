.class public abstract Lcom/amap/api/col/l3s/ma;
.super Ljava/lang/Object;
.source ""


# instance fields
.field c:Lcom/amap/api/col/l3s/ma;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3s/ma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ma;->c:Lcom/amap/api/col/l3s/ma;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ma;->c:Lcom/amap/api/col/l3s/ma;

    const v0, 0x7fffffff

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ma;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public a_(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ma;->c:Lcom/amap/api/col/l3s/ma;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ma;->a_(I)V

    :cond_0
    return-void
.end method

.method public a_(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ma;->c:Lcom/amap/api/col/l3s/ma;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ma;->a_(Z)V

    :cond_0
    return-void
.end method

.method protected abstract c()Z
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ma;->c:Lcom/amap/api/col/l3s/ma;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ma;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ma;->c()Z

    move-result p0

    return p0
.end method
