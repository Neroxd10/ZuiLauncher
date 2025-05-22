.class final Lcom/amap/api/col/l3s/aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/aj;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->g:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->i:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/aj;->j:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->k:Z

    iput v1, p0, Lcom/amap/api/col/l3s/aj;->l:I

    iput v0, p0, Lcom/amap/api/col/l3s/aj;->m:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aj;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/aj;->o:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/aj;->p:Z

    new-instance v0, Lcom/amap/api/col/l3s/aj$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/aj$1;-><init>(Lcom/amap/api/col/l3s/aj;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/aj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/aj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/aj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/aj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/aj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->f:Z

    return p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/aj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->n:Z

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/aj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->k:Z

    return p0
.end method


# virtual methods
.method public final getLogoMarginRate(I)F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLogoMarginRate(I)F

    move-result p0

    return p0
.end method

.method public final getLogoPosition()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/aj;->l:I

    return p0
.end method

.method public final getZoomPosition()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/aj;->m:I

    return p0
.end method

.method public final isCompassEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->i:Z

    return p0
.end method

.method public final isGestureScaleByMapCenter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->p:Z

    return p0
.end method

.method public final isIndoorSwitchEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->n:Z

    return p0
.end method

.method public final isLogoEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->k:Z

    return p0
.end method

.method public final isMyLocationButtonEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->f:Z

    return p0
.end method

.method public final isRotateGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->c:Z

    return p0
.end method

.method public final isScaleControlsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->j:Z

    return p0
.end method

.method public final isScrollGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->d:Z

    return p0
.end method

.method public final isTiltGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->e:Z

    return p0
.end method

.method public final isZoomControlsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->h:Z

    return p0
.end method

.method public final isZoomGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->g:Z

    return p0
.end method

.method public final isZoomInByScreenCenter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/aj;->o:Z

    return p0
.end method

.method public final requestRefreshLogo()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setAllGesturesEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/aj;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/aj;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/aj;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/aj;->setScrollGesturesEnabled(Z)V

    return-void
.end method

.method public final setCompassEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->i:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setGestureScaleByMapCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->p:Z

    return-void
.end method

.method public final setIndoorSwitchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->n:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setLogoBottomMargin(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setLogoBottomMargin(I)V

    return-void
.end method

.method public final setLogoEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->k:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setLogoLeftMargin(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setLogoLeftMargin(I)V

    return-void
.end method

.method public final setLogoMarginRate(IF)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setLogoMarginRate(IF)V

    return-void
.end method

.method public final setLogoPosition(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/aj;->l:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setLogoPosition(I)V

    return-void
.end method

.method public final setMyLocationButtonEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->f:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setRotateGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->c:Z

    return-void
.end method

.method public final setScaleControlsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->j:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setScrollGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->d:Z

    return-void
.end method

.method public final setTiltGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->e:Z

    return-void
.end method

.method public final setZoomControlsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->h:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setZoomGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->g:Z

    return-void
.end method

.method public final setZoomInByScreenCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aj;->o:Z

    return-void
.end method

.method public final setZoomPosition(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/aj;->m:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/aj;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setZoomPosition(I)V

    return-void
.end method
