.class final Lcom/amap/api/col/l3s/s$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/s;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/amap/api/col/l3s/s;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/s;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/s$1;->h:Lcom/amap/api/col/l3s/s;

    iput-object p2, p0, Lcom/amap/api/col/l3s/s$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3s/s$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amap/api/col/l3s/s$1;->c:Z

    iput-object p5, p0, Lcom/amap/api/col/l3s/s$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/amap/api/col/l3s/s$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/amap/api/col/l3s/s$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/amap/api/col/l3s/s$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/s$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "amap_web_logo"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/s$1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/s$1;->c:Z

    sget-object v2, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_DAY_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3s/s$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3s/s$1;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/col/l3s/s$1;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v6, Lcom/amap/api/col/l3s/t$d;

    invoke-direct {v6, v3, v4, v5, v2}, Lcom/amap/api/col/l3s/t$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "md5_day"

    invoke-virtual {v6, v1, v3}, Lcom/amap/api/col/l3s/t$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/amap/api/col/l3s/t;

    iget-object v4, p0, Lcom/amap/api/col/l3s/s$1;->h:Lcom/amap/api/col/l3s/s;

    invoke-static {v4}, Lcom/amap/api/col/l3s/s;->a(Lcom/amap/api/col/l3s/s;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    invoke-direct {v3, v4, v6}, Lcom/amap/api/col/l3s/t;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/t$a;)V

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/t;->a()V

    :cond_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/s$1;->h:Lcom/amap/api/col/l3s/s;

    iget-object v3, v3, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/s$1;->h:Lcom/amap/api/col/l3s/s;

    iget-object v3, v3, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeLogoIconStyle(Ljava/lang/String;ZI)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/s$1;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/s$1;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/s$1;->c:Z

    sget-object v2, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_NIGHT_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3s/s$1;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3s/s$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/col/l3s/s$1;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v6, Lcom/amap/api/col/l3s/t$d;

    invoke-direct {v6, v3, v4, v5, v2}, Lcom/amap/api/col/l3s/t$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "md5_night"

    invoke-virtual {v6, v1, v3}, Lcom/amap/api/col/l3s/t$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/col/l3s/t;

    iget-object v3, p0, Lcom/amap/api/col/l3s/s$1;->h:Lcom/amap/api/col/l3s/s;

    invoke-static {v3}, Lcom/amap/api/col/l3s/s;->a(Lcom/amap/api/col/l3s/s;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    invoke-direct {v1, v3, v6}, Lcom/amap/api/col/l3s/t;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/t$a;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t;->a()V

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/s$1;->h:Lcom/amap/api/col/l3s/s;

    iget-object v1, v1, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/s$1;->h:Lcom/amap/api/col/l3s/s;

    iget-object p0, p0, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeLogoIconStyle(Ljava/lang/String;ZI)V

    :cond_3
    return-void
.end method
