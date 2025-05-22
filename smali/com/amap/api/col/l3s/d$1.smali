.class final Lcom/amap/api/col/l3s/d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/d;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/d$1;->a:Lcom/amap/api/col/l3s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/d$1;->a:Lcom/amap/api/col/l3s/d;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$1;->a:Lcom/amap/api/col/l3s/d;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;Z)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$1;->a:Lcom/amap/api/col/l3s/d;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/d;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ALManager"

    const-string p2, "onServiceConnected"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$1;->a:Lcom/amap/api/col/l3s/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/d;->i:Landroid/os/Messenger;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;Z)Z

    return-void
.end method
