.class final Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByProvinceName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v0, v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/col/l3s/bh;

    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/bh;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "OfflineMapManager"

    const-string v1, "downloadByProvinceName"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
