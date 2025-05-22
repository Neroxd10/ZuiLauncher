.class public abstract Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;
.super Lcom/zui/launcher/LauncherAppTransitionManager;
.source ""

# interfaces
.implements Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;,
        Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;,
        Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;
    }
.end annotation


# static fields
.field public static final ALL_APPS_PROGRESS_OFF_SCREEN:F = 1.3059858f

.field public static final ANIMATION_DELAY_NAV_FADE_IN:J = 0xb8L

.field public static final ANIMATION_NAV_FADE_IN_DURATION:I = 0x10a

.field public static final ANIMATION_NAV_FADE_OUT_DURATION:I = 0x85

.field public static final APP_LAUNCH_DURATION:J = 0x1c2L

.field protected static final CONTENT_ALPHA_DURATION:I = 0xd9

.field protected static final CONTENT_SCALE_DURATION:I = 0x15e

.field protected static final CONTENT_SCRIM_DURATION:I = 0x15e

.field protected static final CONTENT_TRANSLATION_DURATION:I = 0x15e

.field public static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RECENTS_LAUNCH_DURATION:I = 0x96

.field public static final SPLIT_DIVIDER_ANIM_DURATION:I = 0x64

.field public static final SPLIT_LAUNCH_DURATION:I = 0x172

.field public static final STATUS_BAR_TRANSITION_DURATION:I = 0x78

.field public static final STATUS_BAR_TRANSITION_PRE_DELAY:I = 0x79

.field private static final k:Z


# instance fields
.field private final a:Lcom/zui/launcher/dragndrop/DragLayer;

.field final b:Landroid/os/Handler;

.field private c:Lcom/zui/launcher/DeviceProfile;

.field private d:Lcom/zui/quickstep/util/RemoteAnimationProvider;

.field private e:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

.field final f:Landroid/animation/AnimatorListenerAdapter;

.field private final g:F

.field private final h:F

.field private i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;

.field protected final mLauncher:Lcom/zui/launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-string v0, "persist.debug.shell_starting_surface"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAppTransitionManager;-><init>()V

    new-instance v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)V

    iput-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->f:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;)V

    iput-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->j:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->b:Landroid/os/Handler;

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070218

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v0, 0x7f0708ee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v0, 0x7f0701cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-direct {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->y()V

    const v0, 0x7f070216

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->h:F

    const v0, 0x7f070469

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->g:F

    invoke-direct {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$g;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$g;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;I)V

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->j:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;->a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)V

    sget-object p1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->j:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/SystemUiProxy;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/animation/AnimatorSet;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->j(Landroid/animation/AnimatorSet;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/animation/Animator;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->g(Landroid/animation/Animator;I)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Lcom/zui/launcher/dragndrop/DragLayer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private g(Landroid/animation/Animator;I)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private h([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 3
    .param p1    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    and-int/2addr p0, v1

    :cond_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private i(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .locals 11
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v8, p0

    move-object v9, p1

    move-object v2, p3

    iget-object v0, v8, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-static {p3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->o([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v7

    iget-object v0, v8, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v10

    invoke-direct {p0, p3, v7}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->p([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->h([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->m(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;

    move-result-object v0

    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v10}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->l(ZI)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$h;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$h;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$i;

    invoke-direct {v0, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$i;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method private j(Landroid/animation/AnimatorSet;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 8
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/widget/LauncherAppWidgetHostView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-static {p3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->o([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->p([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, p3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->h([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->n(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$b;

    invoke-direct {p2, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$b;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private k([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ObjectAnimator;
    .locals 5

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDepthController()Lcom/zui/launcher/statehandlers/DepthController;

    move-result-object v0

    new-array v1, v1, [F

    sget-object v3, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    iget-object v4, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/zui/launcher/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v3

    aput v3, v1, v2

    const-string v3, "Depth"

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/systemui/shared/system/BlurUtils;->supportsBlursOnWindows()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    :cond_1
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v4, "Blur layer"

    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Lcom/zui/launcher/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)V

    new-instance p1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;

    invoke-direct {p1, p0, v0, v3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$e;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/launcher/statehandlers/DepthController;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    return-object v1
.end method

.method private l(ZI)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Landroid/util/Pair<",
            "Landroid/animation/AnimatorSet;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    if-eqz p1, :cond_0

    fill-array-data v2, :array_0

    goto :goto_0

    :cond_0
    fill-array-data v2, :array_1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v6, v1, [F

    if-eqz p1, :cond_1

    aput v3, v6, v5

    iget v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->h:F

    aput v3, v6, v4

    goto :goto_1

    :cond_1
    iget v7, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->h:F

    aput v7, v6, v5

    aput v3, v6, v4

    :goto_1
    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v7, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v3, v7}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v3

    const-wide/16 v7, 0x15e

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    sget-object v4, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v4, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aget v9, v2, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    sget-object v9, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    aget v5, v6, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v9, p1, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v9, 0xd9

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$j;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$j;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p0, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p1, p0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p0, Lcom/zui/launcher/d2;

    invoke-direct {p0, p1, v3, v4}, Lcom/zui/launcher/d2;-><init>(Landroid/view/View;FF)V

    goto/16 :goto_3

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v9, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v3, v9}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0, v2, v6}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v3

    new-instance v9, Lcom/zui/launcher/i2;

    invoke-direct {v9, v2}, Lcom/zui/launcher/i2;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v9}, Lcom/zui/launcher/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/zui/launcher/h2;

    invoke-direct {v3, v6, v0}, Lcom/zui/launcher/h2;-><init>([FLandroid/animation/AnimatorSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    sget-object v3, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    const v9, 0x7f040255

    invoke-static {v6, v9}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    aput v9, p1, v5

    aput v6, p1, v4

    goto :goto_2

    :cond_4
    new-array p1, v1, [I

    aput v6, p1, v5

    aput v9, p1, v4

    :goto_2
    iget-object v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getScrimView()Lcom/zui/launcher/views/ScrimView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_5

    aget v4, p1, v5

    invoke-virtual {v1, v4}, Lcom/zui/launcher/views/ScrimView;->setBackgroundColor(I)V

    sget-object v4, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    invoke-static {v1, v4, p1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    new-instance p1, Lcom/zui/launcher/g2;

    invoke-direct {p1, p0, v2, v3}, Lcom/zui/launcher/g2;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Ljava/util/List;Z)V

    move-object p0, p1

    :goto_3
    int-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private m(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;
    .locals 28

    move-object/from16 v15, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    xor-int/lit8 v1, p6, 0x1

    const/4 v13, 0x1

    invoke-static {v0, v10, v1, v11, v13}, Lcom/zui/launcher/views/FloatingIconView;->getFloatingIconView(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/zui/launcher/views/FloatingIconView;

    move-result-object v12

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-direct {v8, v14, v0, v7}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    new-instance v6, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v6, v12}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v6}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->addReleaseCheck(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;)V

    invoke-virtual {v8}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v17

    const/4 v5, 0x2

    new-array v4, v5, [I

    iget-object v0, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->getFirstAppTargetTaskId()I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v13, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move/from16 v18, v0

    goto :goto_1

    :cond_1
    move/from16 v18, v7

    :goto_1
    new-instance v3, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;

    iget-object v0, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    aget v19, v4, v7

    aget v20, v4, v13

    invoke-virtual {v12}, Lcom/zui/launcher/views/FloatingIconView;->isDifferentFromAppIcon()Z

    move-result v21

    move-object v0, v3

    move-object v13, v3

    move-object/from16 v3, p5

    move-object/from16 v22, v4

    move-object v4, v11

    move v14, v5

    move-object/from16 v5, p1

    move-object/from16 v23, v6

    move/from16 v6, v19

    move/from16 v19, v7

    move/from16 v7, v20

    move-object/from16 v24, v8

    move/from16 v8, v18

    move-object v14, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;-><init>(Landroid/content/res/Resources;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V

    iget v0, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->a:I

    iget v1, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->c:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->b:I

    iget v3, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->d:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v1, v0

    add-int/2addr v3, v2

    invoke-virtual {v14, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x2

    new-array v0, v7, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v0, 0x1c2

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$k;

    move-object/from16 v1, v24

    invoke-direct {v0, v15, v10, v1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$k;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/view/View;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    iget-object v0, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_3

    move v4, v10

    goto :goto_3

    :cond_3
    iget-object v0, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v4, v0

    :goto_3
    if-eqz p6, :cond_4

    move v5, v10

    goto :goto_4

    :cond_4
    iget v0, v15, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->g:F

    move v5, v0

    :goto_4
    new-instance v2, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v25, v2

    move-object v2, v13

    move-object v13, v6

    move-object v6, v11

    move/from16 v18, v7

    move-object v7, v14

    move-object v14, v8

    move/from16 v8, p7

    move v11, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v20

    move-object/from16 v26, v13

    move-object/from16 v13, p2

    move-object/from16 v27, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v21

    move-object/from16 v16, v17

    move-object/from16 v17, v23

    invoke-direct/range {v0 .. v17}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/RectF;[ILandroid/graphics/RectF;Lcom/zui/launcher/views/FloatingIconView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/Point;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v1, v25

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$l;->onUpdate(FZ)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v19

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->k([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private n(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v10, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-direct {v10, v14, v0, v15}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    invoke-virtual {v10}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->getFirstAppTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i:Ljava/util/LinkedHashMap;

    iget v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i:Ljava/util/LinkedHashMap;

    iget v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v15

    :goto_0
    iget-object v2, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->i:Ljava/util/LinkedHashMap;

    iget v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v1, v15

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/zui/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    iget-object v0, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    move v12, v11

    goto :goto_3

    :cond_3
    iget-object v0, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v12, v0

    :goto_3
    iget-object v0, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    new-instance v3, Landroid/util/Size;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v1, p1

    move-object v2, v7

    move v4, v12

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Lcom/zui/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/zui/quickstep/views/FloatingWidgetView;

    move-result-object v6

    iget-object v0, v13, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/zui/quickstep/views/FloatingWidgetView;->getInitialCornerRadius()F

    move-result v0

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v11

    :goto_4
    new-instance v11, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v11, v6}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v10, v11}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->addReleaseCheck(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;)V

    invoke-virtual {v10}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v16

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v0, 0x1c2

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$c;

    invoke-direct {v0, v13, v10}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$c;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/zui/launcher/j3;

    invoke-direct {v0, v5}, Lcom/zui/launcher/j3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v6, v0}, Lcom/zui/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    new-instance v10, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v15, v3

    move v3, v12

    move v12, v4

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v5, p5

    move-object/from16 v17, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v8

    move/from16 v8, p6

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    move-object v13, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move v14, v12

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$d;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;FFLandroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/views/FloatingWidgetView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v15, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v14, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v15, v0, v1

    const/4 v1, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->k([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static o([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_0

    iget v2, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private p([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;
    .locals 5
    .param p1    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    iget p2, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-direct {p1, v1, v1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_2
    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_1
    if-eqz p2, :cond_5

    rem-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    :goto_2
    rsub-int/lit8 p2, p2, 0x4

    invoke-static {p1, v0, p0, p2}, Lcom/zui/launcher/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_5
    return-object p1
.end method

.method private q()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic r(Landroid/view/View;FF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    sget-object p1, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic s(Ljava/util/List;Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic t([FLandroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p2, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method static synthetic u(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private y()V
    .locals 0

    return-void
.end method

.method private z()Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected abstract composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getActivityLaunchOptions(Lcom/zui/launcher/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 9

    invoke-direct {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p1

    new-instance v0, Lcom/zui/launcher/util/RunnableList;

    invoke-direct {v0}, Lcom/zui/launcher/util/RunnableList;-><init>()V

    new-instance v1, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;

    invoke-direct {v1, p0, p2, v0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$n;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/view/View;Lcom/zui/launcher/util/RunnableList;)V

    iput-object v1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->e:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance v3, Lcom/zui/launcher/LauncherAnimationRunner;

    iget-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->e:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v1, 0x1

    invoke-direct {v3, p2, v0, v1}, Lcom/zui/launcher/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1c2

    :goto_0
    move-wide v4, p1

    const-wide/16 p1, 0x78

    sub-long p1, v4, p1

    const-wide/16 v0, 0x79

    sub-long v6, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getActivityLaunchOptions, duration:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", statusBarTransitionDelay:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickstepTransition"

    invoke-static {p2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v8

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    invoke-static {p1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/zui/launcher/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method protected abstract isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onDeviceProfileChanged(Lcom/zui/launcher/DeviceProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->c:Lcom/zui/launcher/DeviceProfile;

    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->d:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    new-instance v0, Lcom/zui/launcher/f2;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/f2;-><init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/quickstep/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public supportsAdaptiveIconAnimation()Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/launcher/config/BaseFlags;->ADAPTIVE_ICON_WINDOW_ANIM:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic v(Ljava/util/List;Z)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/e2;->a:Lcom/zui/launcher/e2;

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getScrimView()Lcom/zui/launcher/views/ScrimView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getScrimView()Lcom/zui/launcher/views/ScrimView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/ScrimView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public synthetic w(Lcom/zui/quickstep/util/RemoteAnimationProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->d:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->d:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    :cond_0
    return-void
.end method

.method x([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {p1, p0, p2}, Lcom/zui/quickstep/TaskUtils;->taskIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;II)Z

    move-result p0

    return p0
.end method
