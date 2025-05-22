.class final Lcom/amap/api/col/l3s/dh$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/dh;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/col/l3s/dh;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/dh;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh$1;->b:Lcom/amap/api/col/l3s/dh;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/dh$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh$1;->b:Lcom/amap/api/col/l3s/dh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dh;->a(Lcom/amap/api/col/l3s/dh;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh$1;->b:Lcom/amap/api/col/l3s/dh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dh;->b(Lcom/amap/api/col/l3s/dh;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh$1;->b:Lcom/amap/api/col/l3s/dh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dh;->a(Lcom/amap/api/col/l3s/dh;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh$1;->b:Lcom/amap/api/col/l3s/dh;

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dh$1;->a:Z

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/dh;->a(Lcom/amap/api/col/l3s/dh;Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart()V
    .locals 0

    return-void
.end method
