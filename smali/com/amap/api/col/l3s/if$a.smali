.class final Lcom/amap/api/col/l3s/if$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/if;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/if;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/if$a;->a:Lcom/amap/api/col/l3s/if;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/if;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/if$a;-><init>(Lcom/amap/api/col/l3s/if;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/if$a;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v0}, Lcom/amap/api/col/l3s/if;->d(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/if$a;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v0}, Lcom/amap/api/col/l3s/if;->d(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/services/nearby/UploadInfoCallback;->OnUploadInfoCallback()Lcom/amap/api/services/nearby/UploadInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/if$a;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/if;->b(Lcom/amap/api/col/l3s/if;Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/if$a;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v1}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/if$a;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v2}, Lcom/amap/api/col/l3s/if;->b(Lcom/amap/api/col/l3s/if;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/if$a;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {p0}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NearbySearch"

    const-string v1, "UpdateDataTask"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
