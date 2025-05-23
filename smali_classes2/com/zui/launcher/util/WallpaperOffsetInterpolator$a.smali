.class Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/WallpaperOffsetInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:Landroid/app/WallpaperManager;

.field private c:F

.field private d:Z

.field private e:J

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->a:Landroid/view/animation/Interpolator;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->b:Landroid/app/WallpaperManager;

    return-void
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "WPOffsetInterpolator"

    :try_start_0
    const-string v1, "setOffsetSafely"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->b:Landroid/app/WallpaperManager;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v1, v1}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error updating wallpaper offset: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 p1, 0x5

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    iget v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->g:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->g:F

    iput p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->a(Landroid/os/IBinder;)V

    iput-boolean v2, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->d:Z

    return-void

    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr p1, v5

    int-to-float p1, p1

    div-float p1, v4, p1

    iput p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->h:F

    iget-object p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->b:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    return-void

    :cond_4
    iput-boolean v5, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->d:Z

    iget v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    iput v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->f:F

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->e:J

    :cond_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->g:F

    :cond_6
    iget p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    iget-boolean v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->d:Z

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->e:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    const/high16 v8, 0x437a0000    # 250.0f

    div-float/2addr v1, v8

    iget-object v8, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v8, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v8, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->f:F

    iget v9, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->g:F

    sub-float/2addr v9, v8

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    iput v8, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-gez v1, :cond_7

    move v2, v5

    :cond_7
    iput-boolean v2, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->d:Z

    goto :goto_0

    :cond_8
    iget v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->g:F

    iput v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    :goto_0
    iget v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->c:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->a(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->b:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->h:F

    invoke-virtual {p1, v1, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    :cond_9
    iget-boolean p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;->d:Z

    if-eqz p1, :cond_a

    invoke-static {p0, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    return-void
.end method
