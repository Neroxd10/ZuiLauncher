.class final Lcom/amap/api/col/l3s/jy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/jy;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/jy$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/jy$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/kb;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/jy$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/kb;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/jy$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/kb;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/jy$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/lm;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/jy$1;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/lk;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "Lg"

    const-string v1, "proL"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    return-void
.end method
