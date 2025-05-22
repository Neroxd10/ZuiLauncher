.class final Lcom/amap/api/col/l3s/if$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/if;->uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/nearby/UploadInfo;

.field final synthetic b:Lcom/amap/api/col/l3s/if;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/if;Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/if$2;->b:Lcom/amap/api/col/l3s/if;

    iput-object p2, p0, Lcom/amap/api/col/l3s/if$2;->a:Lcom/amap/api/services/nearby/UploadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if$2;->b:Lcom/amap/api/col/l3s/if;

    invoke-static {v0}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/if$2;->b:Lcom/amap/api/col/l3s/if;

    invoke-static {v1}, Lcom/amap/api/col/l3s/if;->b(Lcom/amap/api/col/l3s/if;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/col/l3s/if$2;->b:Lcom/amap/api/col/l3s/if;

    iget-object v2, p0, Lcom/amap/api/col/l3s/if$2;->a:Lcom/amap/api/services/nearby/UploadInfo;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/if$2;->b:Lcom/amap/api/col/l3s/if;

    invoke-static {p0}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NearbySearch"

    const-string v1, "uploadNearbyInfoAsyn"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
