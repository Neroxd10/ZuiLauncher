.class final Lcom/amap/api/col/l3s/x$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/x;

.field private b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/x;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$b;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/x;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/x$b;-><init>(Lcom/amap/api/col/l3s/x;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/as;)Z
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x6

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v1, v1, [F

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iput-object v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v1, p0, Lcom/amap/api/col/l3s/x$b;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object v1, v1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->isLockMapCameraDegree(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v1}, Lcom/amap/api/col/l3s/x;->c(Lcom/amap/api/col/l3s/x;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/as;->d()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/as;->d()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v5}, Lcom/amap/api/col/l3s/x;->i(Lcom/amap/api/col/l3s/x;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1, v3}, Lcom/amap/api/col/l3s/aq;->a(I)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/amap/api/col/l3s/aq;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    iget v6, v5, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    iget v6, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    :cond_3
    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/high16 v6, -0x3ee00000    # -10.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v6

    if-gez p1, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v7

    if-lez p1, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v7

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;Z)Z

    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1}, Lcom/amap/api/col/l3s/x;->i(Lcom/amap/api/col/l3s/x;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;Z)Z

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v1, 0x65

    invoke-static {v1, v2}, Lcom/autonavi/base/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/base/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p0}, Lcom/amap/api/col/l3s/x;->m(Lcom/amap/api/col/l3s/x;)I

    :cond_7
    return v4

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v0, "onHove"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v4
.end method

.method public final b(Lcom/amap/api/col/l3s/as;)Z
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x6

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v2, v1

    iput-object v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->isLockMapCameraDegree(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v0, 0x64

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getCameraDegree(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/autonavi/base/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/base/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    return v1

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v0, "onHoveBegin"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final c(Lcom/amap/api/col/l3s/as;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ar;->c()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    iput-object v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->b:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->isLockMapCameraDegree(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getCameraDegree(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v0}, Lcom/amap/api/col/l3s/x;->a(Lcom/amap/api/col/l3s/x;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x7

    invoke-interface {v0, p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v0, v3}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;Z)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/x$b;->a:Lcom/amap/api/col/l3s/x;

    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v0, 0x66

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getCameraDegree(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/base/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v0, "onHoveEnd"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
