.class final Lcom/amap/api/col/l3s/if$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/if;->clearUserInfoAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/if;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/if;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v0}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v1}, Lcom/amap/api/col/l3s/if;->b(Lcom/amap/api/col/l3s/if;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v1}, Lcom/amap/api/col/l3s/if;->c(Lcom/amap/api/col/l3s/if;)I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v1}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {p0}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    const-string v2, "NearbySearch"

    const-string v3, "clearUserInfoAsyn"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v1}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {p0}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {v2}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/if$1;->a:Lcom/amap/api/col/l3s/if;

    invoke-static {p0}, Lcom/amap/api/col/l3s/if;->a(Lcom/amap/api/col/l3s/if;)Lcom/amap/api/col/l3s/gw;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    throw v1
.end method
