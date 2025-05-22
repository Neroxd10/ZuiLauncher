.class final Lcom/amap/api/col/l3s/dx$2;
.super Lcom/amap/api/col/l3s/dx$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/dx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/dx$a<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/dx;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dx$2;->a:Lcom/amap/api/col/l3s/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dx$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/dx$2;->a:Lcom/amap/api/col/l3s/dx;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dx;->a(Lcom/amap/api/col/l3s/dx;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dx$2;->a:Lcom/amap/api/col/l3s/dx;

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx$a;->b:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/dx;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/dx;->a(Lcom/amap/api/col/l3s/dx;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
