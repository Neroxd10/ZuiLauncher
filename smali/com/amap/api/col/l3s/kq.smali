.class public abstract Lcom/amap/api/col/l3s/kq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/amap/api/col/l3s/kq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/l3s/kq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/kq;->a:Lcom/amap/api/col/l3s/kq;

    return-void
.end method


# virtual methods
.method protected abstract a([B)[B
.end method

.method public final b([B)[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/kq;->a:Lcom/amap/api/col/l3s/kq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/kq;->b([B)[B

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/kq;->a([B)[B

    move-result-object p0

    return-object p0
.end method
