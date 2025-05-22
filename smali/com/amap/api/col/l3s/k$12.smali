.class final Lcom/amap/api/col/l3s/k$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$12;->b:Lcom/amap/api/col/l3s/k;

    iput p2, p0, Lcom/amap/api/col/l3s/k$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$12;->b:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->n(Lcom/amap/api/col/l3s/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$12;->b:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/amap/api/col/l3s/k$12;->a:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setHighlightSubwayEnable(IZ)V

    :cond_0
    return-void
.end method
