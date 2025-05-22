.class public abstract Lcom/amap/api/col/l3s/lu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field c:Lcom/amap/api/col/l3s/lu;

.field d:[B


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/lu;->d:[B

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/l3s/lu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/lu;->d:[B

    iput-object p1, p0, Lcom/amap/api/col/l3s/lu;->c:Lcom/amap/api/col/l3s/lu;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/lu;->d:[B

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/lu;->a([B)[B

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/lu;->c:Lcom/amap/api/col/l3s/lu;

    if-eqz p0, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/lu;->d:[B

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected abstract a([B)[B
.end method

.method public b([B)V
    .locals 0

    return-void
.end method
