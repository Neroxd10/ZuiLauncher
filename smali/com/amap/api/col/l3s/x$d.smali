.class final Lcom/amap/api/col/l3s/x$d;
.super Lcom/amap/api/col/l3s/av$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/x;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Point;

.field private f:[F

.field private g:F

.field private h:[F

.field private i:F

.field private j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/x;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/av$a;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/x$d;->b:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/x$d;->c:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/x$d;->d:Z

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$d;->e:Landroid/graphics/Point;

    const/16 p1, 0xa

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/amap/api/col/l3s/x$d;->f:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/x$d;->g:F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$d;->h:[F

    iput v0, p0, Lcom/amap/api/col/l3s/x$d;->i:F

    new-instance p1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x$d;->j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/x;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/x$d;-><init>(Lcom/amap/api/col/l3s/x;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/av;)Z
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "onScaleRotate"

    const-string v3, "GLMapGestrureDetector"

    iget-object v0, v1, Lcom/amap/api/col/l3s/x$d;->j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v4, 0x2

    iput v4, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v5, 0x4

    iput v5, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v5, v4, [F

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->a()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->a()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v8, 0x1

    aput v6, v5, v8

    iput-object v5, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v5, v1, Lcom/amap/api/col/l3s/x$d;->j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->h()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->i()J

    move-result-wide v9

    long-to-float v6, v9

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->b()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->c()F

    move-result v10

    float-to-int v10, v10

    iget-object v11, v1, Lcom/amap/api/col/l3s/x$d;->e:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v1, Lcom/amap/api/col/l3s/x$d;->e:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v1, Lcom/amap/api/col/l3s/x$d;->e:Landroid/graphics/Point;

    iput v9, v13, Landroid/graphics/Point;->x:I

    iput v10, v13, Landroid/graphics/Point;->y:I

    float-to-double v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    double-to-float v0, v13

    iget-object v13, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v13}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;)I

    move-result v13

    if-gtz v13, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3e4ccccd    # 0.2f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    iput-boolean v8, v1, Lcom/amap/api/col/l3s/x$d;->d:Z

    :cond_0
    const/16 v13, 0x65

    const/high16 v14, 0x40000000    # 2.0f

    :try_start_0
    iget-object v15, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v15, v15, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v15}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v15

    invoke-interface {v15}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomGesturesEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    iget-boolean v15, v1, Lcom/amap/api/col/l3s/x$d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v15, :cond_1

    const v15, 0x3d75c28f    # 0.06f

    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    iput-boolean v8, v1, Lcom/amap/api/col/l3s/x$d;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    move v0, v7

    goto/16 :goto_2

    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v15, v1, Lcom/amap/api/col/l3s/x$d;->b:Z

    if-eqz v15, :cond_6

    const v15, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    cmpl-float v15, v11, v14

    if-gtz v15, :cond_2

    cmpl-float v15, v12, v14

    if-lez v15, :cond_3

    :cond_2
    :try_start_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v16, 0x3ca3d70a    # 0.02f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    move v15, v8

    goto :goto_1

    :cond_3
    move v15, v7

    :goto_1
    if-nez v15, :cond_5

    const/4 v15, 0x0

    cmpl-float v16, v6, v15

    if-lez v16, :cond_5

    div-float v7, v0, v6

    iput v7, v1, Lcom/amap/api/col/l3s/x$d;->g:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v14, v1, Lcom/amap/api/col/l3s/x$d;->f:[F

    iget-object v4, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v4}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;)I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    aput v7, v14, v4

    iget-object v4, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v4}, Lcom/amap/api/col/l3s/x;->g(Lcom/amap/api/col/l3s/x;)I

    iget-object v4, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v4, v4, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-static {v13, v0, v9, v10}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    cmpl-float v0, v0, v15

    if-lez v0, :cond_4

    iget-object v0, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, v5, v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V

    move v4, v8

    goto :goto_4

    :cond_4
    iget-object v0, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v4, 0x2

    invoke-interface {v0, v5, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    move v0, v8

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v0

    move v0, v8

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_2
    invoke-static {v4, v3, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    move v4, v0

    :goto_4
    :try_start_4
    iget-object v0, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->isLockMapAngle(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/x$d;->d:Z

    if-nez v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->g()F

    move-result v0

    float-to-double v14, v0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->f()F

    move-result v0

    move/from16 v17, v9

    float-to-double v8, v0

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->e()F

    move-result v0

    float-to-double v14, v0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/au;->d()F

    move-result v0

    move-wide/from16 v18, v8

    float-to-double v7, v0

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    sub-double v8, v18, v7

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v14

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v14

    double-to-float v0, v8

    iget-boolean v7, v1, Lcom/amap/api/col/l3s/x$d;->c:Z

    const/high16 v8, 0x40800000    # 4.0f

    if-nez v7, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/amap/api/col/l3s/x$d;->c:Z

    goto :goto_5

    :cond_7
    const/4 v7, 0x1

    :goto_5
    iget-boolean v9, v1, Lcom/amap/api/col/l3s/x$d;->c:Z

    if-eqz v9, :cond_a

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v9, v9, v14

    if-gez v9, :cond_a

    cmpl-float v9, v11, v8

    if-gtz v9, :cond_8

    cmpl-float v8, v12, v8

    if-lez v8, :cond_9

    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    move/from16 v16, v7

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    if-nez v16, :cond_a

    div-float v6, v0, v6

    iput v6, v1, Lcom/amap/api/col/l3s/x$d;->i:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v8, v1, Lcom/amap/api/col/l3s/x$d;->h:[F

    iget-object v9, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v9}, Lcom/amap/api/col/l3s/x;->c(Lcom/amap/api/col/l3s/x;)I

    move-result v9

    rem-int/lit8 v9, v9, 0xa

    aput v6, v8, v9

    iget-object v6, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {v6}, Lcom/amap/api/col/l3s/x;->h(Lcom/amap/api/col/l3s/x;)I

    iget-object v6, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v6, v6, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move/from16 v8, v17

    invoke-static {v13, v0, v8, v10}, Lcom/autonavi/base/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/base/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v0, v1, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v5, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v8, v7

    goto :goto_8

    :catchall_3
    move-exception v0

    move v8, v7

    goto :goto_7

    :cond_a
    move v8, v4

    goto :goto_8

    :catchall_4
    move-exception v0

    move v8, v4

    :goto_7
    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return v8
.end method

.method public final b(Lcom/amap/api/col/l3s/av;)Z
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$d;->j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x4

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/au;->a()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/au;->a()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v2, v1

    iput-object v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v2, p0, Lcom/amap/api/col/l3s/x$d;->j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/au;->b()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/au;->c()F

    move-result p1

    float-to-int p1, p1

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/x$d;->d:Z

    iget-object v3, p0, Lcom/amap/api/col/l3s/x$d;->e:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->x:I

    iput p1, v3, Landroid/graphics/Point;->y:I

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/x$d;->b:Z

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/x$d;->c:Z

    iget-object v3, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v3, v3, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v4, 0x64

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v2, p1}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v3, v3, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v3, v3, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->isLockMapAngle(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v3, v3, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object p0, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapAngle(I)F

    move-result p0

    invoke-static {v4, p0, v2, p1}, Lcom/autonavi/base/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/base/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object p0

    invoke-interface {v3, v0, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "GLMapGestrureDetector"

    const-string v0, "onScaleRotateBegin"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public final c(Lcom/amap/api/col/l3s/av;)V
    .locals 11

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$d;->j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/au;->a()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/au;->a()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    iput-object v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$d;->j:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v5

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/x$d;->d:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v0, 0x66

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v3}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v1

    invoke-interface {p1, v5, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;)I

    move-result p1

    const v1, -0x39e3c400    # -9999.0f

    const/16 v4, 0xa

    const/4 v6, 0x0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;)I

    move-result p1

    if-le p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1}, Lcom/amap/api/col/l3s/x;->b(Lcom/amap/api/col/l3s/x;)I

    move-result p1

    :goto_0
    move v7, v3

    move v8, v6

    :goto_1
    if-ge v7, v4, :cond_1

    iget-object v9, p0, Lcom/amap/api/col/l3s/x$d;->f:[F

    aget v10, v9, v7

    add-float/2addr v8, v10

    aput v6, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    div-float/2addr v8, p1

    const p1, 0x3b83126f    # 0.004f

    cmpg-float p1, p1, v8

    if-gtz p1, :cond_4

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr v8, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    cmpl-float v7, v8, p1

    if-ltz v7, :cond_2

    move v8, p1

    :cond_2
    iget p1, p0, Lcom/amap/api/col/l3s/x$d;->g:F

    cmpg-float p1, p1, v6

    if-gez p1, :cond_3

    neg-float v8, v8

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPreciseLevel(I)F

    move-result p1

    add-float/2addr p1, v8

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iput v6, p0, Lcom/amap/api/col/l3s/x$d;->g:F

    move v7, p1

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->isLockMapAngle(I)Z

    move-result p1

    if-nez p1, :cond_c

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v8, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v8, v8, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapAngle(I)F

    move-result v8

    invoke-static {v0, v8, v3, v3}, Lcom/autonavi/base/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/base/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v8, "onScaleRotateEnd"

    invoke-static {p1, v0, v8}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1}, Lcom/amap/api/col/l3s/x;->c(Lcom/amap/api/col/l3s/x;)I

    move-result p1

    if-lez p1, :cond_b

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x6

    invoke-interface {p1, v5, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1}, Lcom/amap/api/col/l3s/x;->c(Lcom/amap/api/col/l3s/x;)I

    move-result p1

    if-le p1, v4, :cond_7

    move p1, v4

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    invoke-static {p1}, Lcom/amap/api/col/l3s/x;->c(Lcom/amap/api/col/l3s/x;)I

    move-result p1

    :goto_5
    move v0, v3

    move v8, v6

    :goto_6
    if-ge v0, v4, :cond_8

    iget-object v9, p0, Lcom/amap/api/col/l3s/x$d;->h:[F

    aget v10, v9, v0

    add-float/2addr v8, v10

    aput v6, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    int-to-float p1, p1

    div-float/2addr v8, p1

    const p1, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v8

    if-gtz p1, :cond_b

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr v8, p1

    iget-object p1, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object p1, p1, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapAngle(I)F

    move-result p1

    float-to-int p1, p1

    rem-int/lit16 p1, p1, 0x168

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v4, v8, v0

    if-ltz v4, :cond_9

    move v8, v0

    :cond_9
    iget v0, p0, Lcom/amap/api/col/l3s/x$d;->i:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_a

    neg-float v8, v8

    :cond_a
    int-to-float p1, p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    rem-int/lit16 p1, p1, 0x168

    int-to-float p1, p1

    goto :goto_7

    :cond_b
    move p1, v1

    :goto_7
    iput v6, p0, Lcom/amap/api/col/l3s/x$d;->g:F

    goto :goto_8

    :cond_c
    move p1, v1

    :goto_8
    cmpl-float v0, v7, v1

    if-nez v0, :cond_d

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_e

    :cond_d
    move v3, v2

    :cond_e
    if-eqz v3, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/l3s/x$d;->a:Lcom/amap/api/col/l3s/x;

    iget-object v0, v0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    iget-object v6, p0, Lcom/amap/api/col/l3s/x$d;->e:Landroid/graphics/Point;

    float-to-int v8, p1

    const/16 v9, 0x1f4

    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->startPivotZoomRotateAnim(ILandroid/graphics/Point;FII)V

    :cond_f
    return-void
.end method
