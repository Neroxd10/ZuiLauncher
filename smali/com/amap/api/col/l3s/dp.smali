.class public final Lcom/amap/api/col/l3s/dp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/dp$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/l3s/do;

.field private c:Lcom/amap/api/col/l3s/dv;

.field private d:Lcom/amap/api/col/l3s/dp$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/dp;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/l3s/dp;->b:Lcom/amap/api/col/l3s/do;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/do;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/amap/api/col/l3s/do;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dp;->b:Lcom/amap/api/col/l3s/do;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dp;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dp;->b:Lcom/amap/api/col/l3s/do;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dp;->b:Lcom/amap/api/col/l3s/do;

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/dp$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dp;->d:Lcom/amap/api/col/l3s/dp$a;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/dv;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dp;->c:Lcom/amap/api/col/l3s/dv;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dp;->b:Lcom/amap/api/col/l3s/do;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/do;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dp;->b:Lcom/amap/api/col/l3s/do;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dp;->b:Lcom/amap/api/col/l3s/do;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/im;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/do$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/amap/api/col/l3s/do$a;->a:[B

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/dp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->getMapBaseStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/custom_texture_data"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/amap/api/col/l3s/do$a;->a:[B

    invoke-static {v1, v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->writeDatasToFile(Ljava/lang/String;[B)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dp;->d:Lcom/amap/api/col/l3s/dp$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dp;->d:Lcom/amap/api/col/l3s/dp$a;

    iget-object v2, p0, Lcom/amap/api/col/l3s/dp;->c:Lcom/amap/api/col/l3s/dv;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/col/l3s/dp$a;->a(Ljava/lang/String;Lcom/amap/api/col/l3s/dv;)V

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/dp;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/ka;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ka;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "CustomStyleTask"

    const-string v1, "download customStyle"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
