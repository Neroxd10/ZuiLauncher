.class final Lcom/amap/api/col/l3s/gu$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/col/l3s/gu;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/gu;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/gu$a;->b:Lcom/amap/api/col/l3s/gu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "handleMessage"

    iput-object p1, p0, Lcom/amap/api/col/l3s/gu$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/col/l3s/gv;

    if-nez p1, :cond_2

    new-instance p1, Lcom/amap/api/col/l3s/gv;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/amap/api/col/l3s/gv;-><init>(ZZ)V

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3s/gu;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/gv;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/gl;->a(Z)Lcom/amap/api/col/l3s/je;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ka;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ka;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/gv;->a()Z

    move-result p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/gl;->a(Z)Lcom/amap/api/col/l3s/je;

    move-result-object p1

    sput-object p1, Lcom/amap/api/col/l3s/gu;->a:Lcom/amap/api/col/l3s/je;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu$a;->a:Ljava/lang/String;

    const-string v0, "ManifestConfig"

    invoke-static {p1, v0, p0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
