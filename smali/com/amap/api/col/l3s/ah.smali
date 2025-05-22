.class public final Lcom/amap/api/col/l3s/ah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:J

.field private d:F

.field private e:Landroid/content/Context;

.field private f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private g:Lcom/amap/api/maps/model/Marker;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/ah;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ah;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ah;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ah;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ah;->a:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ah;->b:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ah;F)F
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/ah;->d:F

    return p1
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, -0x5a

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :catchall_0
    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ah;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/ah;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ah;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ah;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ah;)F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/ah;->d:F

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/ah;)Lcom/amap/api/maps/model/Marker;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ah;->g:Lcom/amap/api/maps/model/Marker;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/ah;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/ah;->h:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/ah;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ah;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ah;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ah;->b:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/maps/model/Marker;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ah;->g:Lcom/amap/api/maps/model/Marker;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ah;->h:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ah;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ah;->b:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/ah;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ah;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ah;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ah$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ah$1;-><init>(Lcom/amap/api/col/l3s/ah;Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
