.class final Lcom/amap/api/col/l3s/fo$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fo$1;->invalidateCompassView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fo$1;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo$1$2;->a:Lcom/amap/api/col/l3s/fo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo$1$2;->a:Lcom/amap/api/col/l3s/fo$1;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fo;->b(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fl;->a()V

    return-void
.end method
