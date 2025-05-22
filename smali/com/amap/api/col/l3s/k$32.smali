.class final Lcom/amap/api/col/l3s/k$32;
.super Lcom/amap/api/col/l3s/k$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$32;->a:Lcom/amap/api/col/l3s/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-super {p0}, Lcom/amap/api/col/l3s/k$a;->run()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$32;->a:Lcom/amap/api/col/l3s/k;

    iget v1, p0, Lcom/amap/api/col/l3s/k$a;->g:I

    iget v2, p0, Lcom/amap/api/col/l3s/k$a;->d:I

    iget v3, p0, Lcom/amap/api/col/l3s/k$a;->e:I

    iget p0, p0, Lcom/amap/api/col/l3s/k$a;->f:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/amap/api/col/l3s/k;->a(IIII)V

    return-void
.end method
