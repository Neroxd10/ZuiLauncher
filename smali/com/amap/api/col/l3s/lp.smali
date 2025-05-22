.class public final Lcom/amap/api/col/l3s/lp;
.super Lcom/amap/api/col/l3s/lu;
.source ""


# instance fields
.field private a:Lcom/amap/api/col/l3s/kq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/lu;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/ks;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ks;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/lp;->a:Lcom/amap/api/col/l3s/kq;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3s/lu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/lu;-><init>(Lcom/amap/api/col/l3s/lu;)V

    new-instance p1, Lcom/amap/api/col/l3s/ks;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/ks;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/lp;->a:Lcom/amap/api/col/l3s/kq;

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/lp;->a:Lcom/amap/api/col/l3s/kq;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/kq;->b([B)[B

    move-result-object p0

    return-object p0
.end method
