.class final Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;->a(Lcom/amap/api/col/l3s/bg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/bg;

.field final synthetic b:Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;Lcom/amap/api/col/l3s/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/col/l3s/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;

    iget-object v0, v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-static {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bg;->c()Lcom/amap/api/col/l3s/ck;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v2

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;->onDownload(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
