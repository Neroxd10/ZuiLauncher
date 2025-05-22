.class final Lcom/amap/api/col/l3s/x$e;
.super Lcom/amap/api/col/l3s/aw$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field final synthetic b:Lcom/amap/api/col/l3s/x;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/x;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$e;->b:Lcom/amap/api/col/l3s/x;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/aw$b;-><init>()V

    new-instance p1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$e;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/x;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/x$e;-><init>(Lcom/amap/api/col/l3s/x;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/aw;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$e;->b:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/aw;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/aw;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->b()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$e;->b:Lcom/amap/api/col/l3s/x;

    invoke-static {v0}, Lcom/amap/api/col/l3s/x;->n(Lcom/amap/api/col/l3s/x;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$e;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v1, v2

    iput-object v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$e;->b:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$e;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$e;->b:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/x$e;->b:Lcom/amap/api/col/l3s/x;

    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->zoomOut(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v0, "onZoomOut"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
