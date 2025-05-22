.class public Lcom/zui/launcher/statehandlers/DepthController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateHandler;
.implements Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;
    }
.end annotation


# static fields
.field public static final DEPTH:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/launcher/statehandlers/DepthController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final b:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/zui/launcher/Launcher;

.field private d:I

.field private e:Z

.field private f:Lcom/android/systemui/shared/system/WallpaperManagerCompat;

.field private g:Landroid/view/SurfaceControl;

.field private h:F

.field private i:Z

.field private j:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/statehandlers/DepthController$a;

    const-string v1, "depth"

    invoke-direct {v0, v1}, Lcom/zui/launcher/statehandlers/DepthController$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/statehandlers/DepthController$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/statehandlers/DepthController$b;-><init>(Lcom/zui/launcher/statehandlers/DepthController;)V

    iput-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->a:Landroid/view/ViewTreeObserver$OnDrawListener;

    new-instance v0, Lcom/zui/launcher/statehandlers/b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/statehandlers/b;-><init>(Lcom/zui/launcher/statehandlers/DepthController;)V

    iput-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->b:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->i:Z

    iput-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/statehandlers/DepthController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/statehandlers/DepthController;->j(F)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/statehandlers/DepthController;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/statehandlers/DepthController;->h:F

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/statehandlers/DepthController;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/statehandlers/DepthController;)Lcom/android/systemui/shared/system/WallpaperManagerCompat;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController;->f:Lcom/android/systemui/shared/system/WallpaperManagerCompat;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/statehandlers/DepthController;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController;->b:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/statehandlers/DepthController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/statehandlers/DepthController;->i:Z

    return p1
.end method

.method private g()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/shared/system/BlurUtils;->supportsBlursOnWindows()Z

    move-result v0

    invoke-direct {p0}, Lcom/zui/launcher/statehandlers/DepthController;->h()V

    iget-object v1, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/statehandlers/DepthController;->f:Lcom/android/systemui/shared/system/WallpaperManagerCompat;

    iget v3, p0, Lcom/zui/launcher/statehandlers/DepthController;->h:F

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/shared/system/WallpaperManagerCompat;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    :cond_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->g:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getScrimView()Lcom/zui/launcher/views/ScrimView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getScrimView()Lcom/zui/launcher/views/ScrimView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/views/ScrimView;->isFullyOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->e:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->h:F

    iget v2, p0, Lcom/zui/launcher/statehandlers/DepthController;->d:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    :cond_3
    :goto_1
    const-string v0, "DepthController"

    const-string v3, "blur track setBackgroundBlurRadius 1"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Lcom/zui/launcher/statehandlers/DepthController;->g:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController;->g:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->f:Lcom/android/systemui/shared/system/WallpaperManagerCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->d:I

    new-instance v0, Lcom/android/systemui/shared/system/WallpaperManagerCompat;

    iget-object v1, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/WallpaperManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->f:Lcom/android/systemui/shared/system/WallpaperManagerCompat;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->j:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/zui/launcher/statehandlers/DepthController$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/statehandlers/DepthController$c;-><init>(Lcom/zui/launcher/statehandlers/DepthController;)V

    iput-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->j:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController;->j:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method private j(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->h:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/launcher/statehandlers/DepthController;->h:F

    invoke-direct {p0}, Lcom/zui/launcher/statehandlers/DepthController;->g()V

    return-void
.end method


# virtual methods
.method public synthetic i(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/statehandlers/DepthController;->e:Z

    invoke-direct {p0}, Lcom/zui/launcher/statehandlers/DepthController;->g()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->i:Z

    sget-object v1, Lcom/zui/launcher/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    new-array v2, v0, [F

    iget-object v3, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v4, p1}, Lcom/zui/launcher/LauncherState;->getDepth(Landroid/content/Context;Z)F

    move-result p1

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/statehandlers/DepthController$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/statehandlers/DepthController$d;-><init>(Lcom/zui/launcher/statehandlers/DepthController;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setActivityStarted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController;->a:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->a:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)V

    :goto_0
    return-void
.end method

.method public setState(Lcom/zui/launcher/LauncherState;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/statehandlers/DepthController;->h:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/zui/launcher/statehandlers/DepthController;->j(F)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/statehandlers/DepthController;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->hasAnimationFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->h:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Lcom/zui/launcher/anim/PropertySetter;

    move-result-object p3

    sget-object v0, Lcom/zui/launcher/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    const/16 v1, 0xd

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p3, p0, v0, p1, p2}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController;->g:Landroid/view/SurfaceControl;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController;->g:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/statehandlers/DepthController;->g()V

    :cond_0
    return-void
.end method
