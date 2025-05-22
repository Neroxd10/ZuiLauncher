.class final Lcom/amap/api/col/l3s/fo$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fo$1;->invalidateZoomController(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/amap/api/col/l3s/fo$1;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fo$1;F)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo$1$3;->b:Lcom/amap/api/col/l3s/fo$1;

    iput p2, p0, Lcom/amap/api/col/l3s/fo$1$3;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$1$3;->b:Lcom/amap/api/col/l3s/fo$1;

    iget-object v0, v0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->c(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fs;

    move-result-object v0

    iget p0, p0, Lcom/amap/api/col/l3s/fo$1$3;->a:F

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/fs;->a(F)V

    return-void
.end method
