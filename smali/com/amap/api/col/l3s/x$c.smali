.class final Lcom/amap/api/col/l3s/x$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/at$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/x;

.field private b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/x;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$c;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/x;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/x$c;-><init>(Lcom/amap/api/col/l3s/x;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/at;)Z
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v0}, Lcom/amap/api/col/l3s/x;->i(Lcom/amap/api/col/l3s/x;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v0}, Lcom/amap/api/col/l3s/x;->j(Lcom/amap/api/col/l3s/x;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x2

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v3, 0x3

    iput v3, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v2, v2, [F

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v2, v1

    iput-object v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v2, p0, Lcom/amap/api/col/l3s/x$c;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/at;->d()Landroid/graphics/PointF;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v3}, Lcom/amap/api/col/l3s/x;->k(Lcom/amap/api/col/l3s/x;)I

    move-result v3

    if-nez v3, :cond_2

    const/high16 v2, 0x40800000    # 4.0f

    :cond_2
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-gtz v3, :cond_4

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v2}, Lcom/amap/api/col/l3s/x;->k(Lcom/amap/api/col/l3s/x;)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object v2, v2, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    :cond_5
    iget-object v2, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object v2, v2, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v3, 0x65

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4, p1}, Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p0}, Lcom/amap/api/col/l3s/x;->l(Lcom/amap/api/col/l3s/x;)I

    :cond_6
    :goto_1
    return v1

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v0, "onMove"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final b(Lcom/amap/api/col/l3s/at;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object v1, v1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/x$c;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v0, v1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x3

    iput v2, v1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v2, v0

    iput-object v2, v1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v1, p0, Lcom/amap/api/col/l3s/x$c;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    return v0

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v1, "onMoveBegin"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final c(Lcom/amap/api/col/l3s/at;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v1, 0x2

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

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v0}, Lcom/amap/api/col/l3s/x;->k(Lcom/amap/api/col/l3s/x;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/x$c;->a:Lcom/amap/api/col/l3s/x;

    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v0, "onMoveEnd"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
