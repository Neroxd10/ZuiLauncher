.class final Lcom/amap/api/col/l3s/dx$d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/dx$d;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/amap/api/col/l3s/dx$d;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/dx$d;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dx$d$1;->b:Lcom/amap/api/col/l3s/dx$d;

    iput-object p2, p0, Lcom/amap/api/col/l3s/dx$d$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dx$d$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx$d$1;->b:Lcom/amap/api/col/l3s/dx$d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dx$d;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx$d$1;->b:Lcom/amap/api/col/l3s/dx$d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dx$d;->a()V

    throw v0
.end method
