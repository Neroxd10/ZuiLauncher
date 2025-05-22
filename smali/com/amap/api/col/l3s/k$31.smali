.class final Lcom/amap/api/col/l3s/k$31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->onIndoorBuildingActivity(I[B)V
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

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$31;->a:Lcom/amap/api/col/l3s/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$31;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->r(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/k$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$31;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->r(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/k$b;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$31;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->s(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ax;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/k$b;->a(Lcom/amap/api/col/l3s/ax;)V

    :cond_0
    return-void
.end method
