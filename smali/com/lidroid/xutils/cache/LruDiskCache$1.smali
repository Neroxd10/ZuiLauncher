.class Lcom/lidroid/xutils/cache/LruDiskCache$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
