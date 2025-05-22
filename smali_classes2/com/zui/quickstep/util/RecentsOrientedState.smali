.class public final Lcom/zui/quickstep/util/RecentsOrientedState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/RecentsOrientedState$SurfaceRotation;
    }
.end annotation


# instance fields
.field private a:Landroid/database/ContentObserver;

.field private b:Lcom/zui/launcher/touch/PagedOrientationHandler;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Landroid/content/Context;

.field private final h:Landroid/content/ContentResolver;

.field private final i:Landroid/content/SharedPreferences;

.field private final j:Landroid/view/OrientationEventListener;

.field private final k:Landroid/graphics/Matrix;

.field private l:I

.field private m:I

.field private n:Landroid/content/res/Configuration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/quickstep/util/RecentsOrientedState$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zui/quickstep/util/RecentsOrientedState$a;-><init>(Lcom/zui/quickstep/util/RecentsOrientedState;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->a:Landroid/database/ContentObserver;

    sget-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->PORTRAIT:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->b:Lcom/zui/launcher/touch/PagedOrientationHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    iput v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    iput v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->e:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->f:I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->k:Landroid/graphics/Matrix;

    iput v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->m:I

    iput v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->o:I

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->h:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->i:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/zui/quickstep/util/RecentsOrientedState$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/quickstep/util/RecentsOrientedState$b;-><init>(Lcom/zui/quickstep/util/RecentsOrientedState;Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    iput-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->j:Landroid/view/OrientationEventListener;

    const/4 p2, 0x1

    iput p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr p2, p1

    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    div-int/2addr p2, p1

    const/16 p1, 0x258

    if-ge p2, p1, :cond_0

    iget p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    :cond_0
    iget p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->e()V

    return-void
.end method

.method public static final LLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RecentsOrientedState"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/util/RecentsOrientedState;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->h()V

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/util/RecentsOrientedState;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->m:I

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/util/RecentsOrientedState;I)I
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->m:I

    return p1
.end method

.method private d(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->n:Landroid/content/res/Configuration;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/shared/system/ConfigurationCompat;->getWindowConfigurationRotation(Landroid/content/res/Configuration;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->j:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->TWO_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->g(IZ)Z

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->h()V

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->j()V

    return-void
.end method

.method private g(IZ)Z
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDisableSensorRotation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x16b

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->canRecentsActivityRotate()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    or-int/2addr p1, p2

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_1
    iput p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDisableSensorRotation:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->canRecentsActivityRotate()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eq v0, v1, :cond_3

    sget-object p1, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance p2, Lcom/zui/quickstep/util/x;

    invoke-direct {p2, p0, v1}, Lcom/zui/quickstep/util/x;-><init>(Lcom/zui/quickstep/util/RecentsOrientedState;Z)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->i()Z

    move-result p0

    return p0
.end method

.method public static getRotationForUserDegreesRotated(FI)I
    .locals 8

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x46

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_c

    const/4 v4, 0x0

    const/16 v5, 0x154

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x2

    if-eq p1, v3, :cond_7

    const/16 v0, 0xfa

    if-eq p1, v7, :cond_5

    if-eq p1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x14

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_4

    int-to-float v2, v5

    cmpl-float v2, p0, v2

    if-lez v2, :cond_2

    cmpg-float v2, p0, v6

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-lez v2, :cond_3

    cmpg-float v1, p0, v1

    if-gez v1, :cond_3

    return v7

    :cond_3
    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_e

    cmpg-float p0, p0, v6

    if-gez p0, :cond_e

    return v3

    :cond_4
    :goto_0
    return v4

    :cond_5
    const/16 v1, 0x6e

    int-to-float v1, v1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_6

    return v2

    :cond_6
    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_e

    return v3

    :cond_7
    const/16 v3, 0xc8

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_8

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, p0, v3

    if-lez v3, :cond_8

    return v7

    :cond_8
    int-to-float v3, v5

    cmpl-float v3, p0, v3

    if-lez v3, :cond_9

    cmpg-float v3, p0, v6

    if-ltz v3, :cond_a

    :cond_9
    const/4 v3, 0x0

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_b

    int-to-float v3, v0

    cmpg-float v3, p0, v3

    if-gez v3, :cond_b

    :cond_a
    return v4

    :cond_b
    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_e

    cmpg-float p0, p0, v1

    if-gez p0, :cond_e

    return v2

    :cond_c
    cmpl-float v4, p0, v1

    if-lez v4, :cond_d

    const/16 v4, 0x122

    int-to-float v4, v4

    cmpg-float v4, p0, v4

    if-gez v4, :cond_d

    return v3

    :cond_d
    cmpg-float v1, p0, v1

    if-gez v1, :cond_e

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_e

    return v2

    :cond_e
    :goto_1
    return p1
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->h:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/zui/quickstep/util/RecentsOrientedState;->g(IZ)Z

    return-void
.end method

.method private i()Z
    .locals 2

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    iget v1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result p0

    return p0
.end method

.method public static isRotationLandscape(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_allowRotation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->g(IZ)Z

    return-void
.end method

.method public static postDisplayRotation(IFFLandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method

.method public static preDisplayRotation(IFFLandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public canRecentsActivityRotate()Z
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public destroyListeners()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->h:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    return-void
.end method

.method public synthetic f(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->j:Landroid/view/OrientationEventListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public flipVertical(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->k:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public forceAllowRotationForTesting(Z)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->g(IZ)Z

    return-void
.end method

.method public getDisplayRotation()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    return p0
.end method

.method public getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/PointF;)F
    .locals 4

    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget-boolean v2, p2, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/zui/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/zui/quickstep/util/SplitScreenBounds;

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->g:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/zui/quickstep/util/SplitScreenBounds;->getSecondaryWindowBounds(Landroid/content/Context;)Lcom/zui/launcher/util/WindowBounds;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p3, v2, p0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    iget p0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p0, v2

    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget v2, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float v2, v2

    mul-float/2addr p0, v2

    div-float/2addr p0, v1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v2

    if-nez v3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    div-float/2addr v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_2
    iget-boolean p2, p2, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p2, :cond_3

    sub-float p2, p0, v2

    div-float/2addr v2, p2

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    sub-float/2addr p2, v0

    mul-float/2addr p2, v2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    sub-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_3
    sub-float p2, p0, v2

    div-float p2, p0, p2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-virtual {p3, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_1
    return p0
.end method

.method public getLauncherDeviceProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 2

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile;

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->e:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->portraitProfile:Lcom/zui/launcher/DeviceProfile;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeProfile:Lcom/zui/launcher/DeviceProfile;

    :goto_1
    return-object p0
.end method

.method public getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->b:Lcom/zui/launcher/touch/PagedOrientationHandler;

    return-object p0
.end method

.method public getRecentsActivityRotation()I
    .locals 0

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getRotation()I

    move-result p0

    return p0
.end method

.method public getStateId()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->o:I

    return p0
.end method

.method public getTouchRotation()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    return p0
.end method

.method public initListeners()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->h:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->e()V

    return-void
.end method

.method public isDisplayPhoneNatural()Z
    .locals 1

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMultipleOrientationSupportedByDevice()Z
    .locals 1

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOrientationChange()Z
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->e:I

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentsActivityRotationAllowed()Z
    .locals 2

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    and-int/lit16 p0, p0, 0x94

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_allowRotation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->j()V

    :cond_0
    return-void
.end method

.method public setActivityConfiguration(Landroid/content/res/Configuration;)Z
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->n:Landroid/content/res/Configuration;

    iget p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result p0

    return p0
.end method

.method public setGestureActive(Z)Z
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->g(IZ)Z

    move-result p0

    return p0
.end method

.method public setMultiWindowMode(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->g(IZ)Z

    return-void
.end method

.method public setRecentsRotation(I)Z
    .locals 1

    iput p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->f:I

    iget p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result p0

    return p0
.end method

.method public setRotationWatcherEnabled(Z)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->g(IZ)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->extractObjectNameAndAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mOrientationHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->b:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->extractObjectNameAndAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTouchRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRecentsActivityRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isRecentsActivityRotationAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSystemRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mStateId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mFlags="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transformEvent(FLandroid/view/MotionEvent;Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->k:Landroid/graphics/Matrix;

    if-eqz p3, :cond_0

    neg-float p1, p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->k:Landroid/graphics/Matrix;

    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public update(II)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/zui/quickstep/util/RecentsOrientedState;->d(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->e:I

    iput p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    iput p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    iput p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->m:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDisplayRotation:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->LLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTouchRotation:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->LLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRecentsActivityRotation:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->LLog(Ljava/lang/String;)V

    sget-object p1, Lcom/zui/launcher/touch/PagedOrientationHandler;->PORTRAIT:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->b:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->o:I

    iget p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->l:I

    shl-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->d:I

    or-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->c:I

    or-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x3

    iget v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->f:I

    if-gez v0, :cond_0

    const/4 v0, 0x7

    :cond_0
    or-int/2addr p2, v0

    iput p2, p0, Lcom/zui/quickstep/util/RecentsOrientedState;->o:I

    if-eq p2, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
