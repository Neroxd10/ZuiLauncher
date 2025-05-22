.class final Lcom/amap/api/col/l3s/k$b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k$b;->a(Lcom/amap/api/col/l3s/ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fm;

.field final synthetic b:Lcom/amap/api/col/l3s/k$b;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k$b;Lcom/amap/api/col/l3s/fm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$b$2;->b:Lcom/amap/api/col/l3s/k$b;

    iput-object p2, p0, Lcom/amap/api/col/l3s/k$b$2;->a:Lcom/amap/api/col/l3s/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$b$2;->a:Lcom/amap/api/col/l3s/fm;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$b$2;->b:Lcom/amap/api/col/l3s/k$b;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fm;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$b$2;->a:Lcom/amap/api/col/l3s/fm;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$b$2;->b:Lcom/amap/api/col/l3s/k$b;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$b$2;->a:Lcom/amap/api/col/l3s/fm;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/fm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$b$2;->a:Lcom/amap/api/col/l3s/fm;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/fm;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
