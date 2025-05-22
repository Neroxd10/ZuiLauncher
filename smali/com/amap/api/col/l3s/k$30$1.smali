.class final Lcom/amap/api/col/l3s/k$30$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k$30;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k$30;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k$30;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$30$1;->a:Lcom/amap/api/col/l3s/k$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$30$1;->a:Lcom/amap/api/col/l3s/k$30;

    iget-object v1, v0, Lcom/amap/api/col/l3s/k$30;->b:Lcom/amap/api/col/l3s/k;

    iget v0, v0, Lcom/amap/api/col/l3s/k$30;->a:I

    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/k;->a(Lcom/amap/api/col/l3s/k;I)I

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$30$1;->a:Lcom/amap/api/col/l3s/k$30;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k$30;->b:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$30$1;->a:Lcom/amap/api/col/l3s/k$30;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$30;->b:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/fo;->j(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
