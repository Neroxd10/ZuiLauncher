.class final Lcom/amap/api/col/l3s/aj$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/aj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/aj;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {v0}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->refreshLogo()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/aj;->g(Lcom/amap/api/col/l3s/aj;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showLogoEnabled(Z)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/aj;->f(Lcom/amap/api/col/l3s/aj;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showIndoorSwitchControlsEnabled(Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/aj;->e(Lcom/amap/api/col/l3s/aj;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showMyLocationButtonEnabled(Z)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/aj;->d(Lcom/amap/api/col/l3s/aj;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showCompassEnabled(Z)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/aj;->c(Lcom/amap/api/col/l3s/aj;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showScaleEnabled(Z)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p1}, Lcom/amap/api/col/l3s/aj;->a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj$1;->a:Lcom/amap/api/col/l3s/aj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/aj;->b(Lcom/amap/api/col/l3s/aj;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showZoomControlsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "UiSettingsDelegateImp"

    const-string v0, "handleMessage"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
