.class final Lcom/amap/api/col/l3s/fz$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/fz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fz;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fz$1;->a:Lcom/amap/api/col/l3s/fz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/fz$1;->a:Lcom/amap/api/col/l3s/fz;

    invoke-static {p0, v0, p1}, Lcom/amap/api/col/l3s/fz;->a(Lcom/amap/api/col/l3s/fz;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
