.class public Lcom/zui/quickstep/WindowTransformSwipeHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;,
        Lcom/zui/quickstep/WindowTransformSwipeHandler$f;,
        Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseDraggingActivity;",
        "Q:",
        "Lcom/zui/quickstep/views/RecentsView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;",
        "Landroid/view/View$OnApplyWindowInsetsListener;"
    }
.end annotation


# static fields
.field public static final MAX_SWIPE_DURATION:J = 0x15eL

.field public static final MIN_OVERSHOOT_DURATION:J = 0x78L

.field public static final MIN_PROGRESS_FOR_OVERVIEW:F = 0.7f

.field public static final MIN_SWIPE_DURATION:J = 0x50L

.field private static final P:Ljava/lang/String;

.field private static final Q:Landroid/graphics/Rect;

.field private static final R:[Ljava/lang/String;

.field public static final RECENTS_ATTACH_DURATION:J = 0x12cL

.field private static final S:I

.field protected static final STATE_SCREENSHOT_CAPTURED:I

.field private static final T:I

.field private static final U:I

.field private static final V:I

.field private static final W:I

.field private static final X:I

.field private static final Y:I

.field private static final Z:I

.field private static final a0:I

.field private static final b0:I

.field private static final c0:I

.field private static final d0:I

.field private static final e0:I

.field private static final f0:I

.field private static final g0:I

.field private static final h0:I

.field private static final i0:F

.field private static final j0:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Lcom/zui/quickstep/ZuiSupplier;

.field private B:Z

.field private C:Z

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:I

.field private I:Z

.field private J:Lcom/zui/quickstep/views/LongSwipeView;

.field private K:Z

.field private L:Z

.field private final M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private O:I

.field private a:Ljava/lang/Runnable;

.field private b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field private c:Lcom/zui/quickstep/WindowTransformSwipeHandler$f;

.field private d:Z

.field private e:F

.field private f:Z

.field private g:F

.field private final h:Lcom/zui/quickstep/ActivityControlHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/quickstep/ActivityControlHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

.field private final j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private final k:I

.field private l:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private m:Lcom/zui/quickstep/MultiStateCallback;

.field protected mActivity:Lcom/zui/launcher/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

.field protected final mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field protected mDp:Lcom/zui/launcher/DeviceProfile;

.field protected final mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

.field protected mRecentsView:Lcom/zui/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TQ;"
        }
    .end annotation
.end field

.field protected final mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

.field protected final mTransformParams:Lcom/zui/quickstep/util/TransformParams;

.field protected mTransitionDragLength:I

.field protected mWindowTransitionController:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

.field private n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

.field private o:Z

.field private p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

.field private q:Lcom/zui/quickstep/views/LiveTileOverlay;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Landroid/graphics/PointF;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Q:Landroid/graphics/Rect;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->R:[Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "STATE_LAUNCHER_PRESENT"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    const/4 v0, 0x1

    const-string v1, "STATE_LAUNCHER_STARTED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T:I

    const/4 v0, 0x2

    const-string v1, "STATE_LAUNCHER_DRAWN"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    const/4 v0, 0x3

    const-string v1, "STATE_APP_CONTROLLER_RECEIVED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    const/4 v0, 0x4

    const-string v1, "STATE_SCALED_CONTROLLER_HOME"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->W:I

    const/4 v0, 0x5

    const-string v1, "STATE_SCALED_CONTROLLER_RECENTS"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->X:I

    const/4 v0, 0x6

    const-string v1, "STATE_HANDLER_INVALIDATED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    const/4 v0, 0x7

    const-string v1, "STATE_GESTURE_STARTED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Z:I

    const/16 v0, 0x8

    const-string v1, "STATE_GESTURE_CANCELLED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->a0:I

    const/16 v0, 0x9

    const-string v1, "STATE_GESTURE_COMPLETED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    const/16 v0, 0xa

    const-string v1, "STATE_CAPTURE_SCREENSHOT"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c0:I

    const/16 v0, 0xb

    const-string v1, "STATE_SCREENSHOT_CAPTURED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    const/16 v0, 0xc

    const-string v1, "STATE_SCREENSHOT_VIEW_SHOWN"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d0:I

    const/16 v0, 0xd

    const-string v1, "STATE_RESUME_LAST_TASK"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e0:I

    const/16 v0, 0xe

    const-string v1, "STATE_START_NEW_TASK"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f0:I

    const/16 v0, 0xf

    const-string v1, "STATE_CURRENT_TASK_FINISHED"

    invoke-static {v0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g0:I

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    or-int/2addr v0, v1

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T:I

    or-int/2addr v0, v1

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h0:I

    const v0, 0x3fb6db6e

    const v1, 0x40555555

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->i0:F

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;JLcom/zui/quickstep/ActivityControlHelper;ZLcom/android/systemui/shared/system/InputConsumerController;Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/views/LongSwipeView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/content/Context;",
            "J",
            "Lcom/zui/quickstep/ActivityControlHelper<",
            "TT;>;Z",
            "Lcom/android/systemui/shared/system/InputConsumerController;",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            "Lcom/zui/quickstep/views/LongSwipeView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    new-instance p3, Lcom/zui/quickstep/AnimatedFloat;

    new-instance p4, Lcom/zui/quickstep/a4;

    invoke-direct {p4, p0}, Lcom/zui/quickstep/a4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-direct {p3, p4}, Lcom/zui/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    const/4 p3, 0x0

    iput p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g:F

    sget-object p4, Lcom/zui/quickstep/b3;->a:Lcom/zui/quickstep/b3;

    iput-object p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    new-instance p4, Lcom/zui/quickstep/views/LiveTileOverlay;

    invoke-direct {p4}, Lcom/zui/quickstep/views/LiveTileOverlay;-><init>()V

    iput-object p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->q:Lcom/zui/quickstep/views/LiveTileOverlay;

    const/4 p4, -0x1

    iput p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B:Z

    iput-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    iput p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D:F

    iput-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->I:Z

    iput-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->K:Z

    iput-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->L:Z

    new-instance p3, Lcom/zui/quickstep/l4;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/l4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->N:Ljava/util/ArrayList;

    iput p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->O:I

    iput-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    iget p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    iput-object p5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    new-instance p3, Lcom/zui/quickstep/i4;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/i4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-interface {p5, p3}, Lcom/zui/quickstep/ActivityControlHelper;->createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->i:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    iput-boolean p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f:Z

    new-instance p3, Lcom/zui/quickstep/ZuiSupplier;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/ZuiSupplier;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->A:Lcom/zui/quickstep/ZuiSupplier;

    new-instance p4, Lcom/zui/quickstep/RecentsAnimationWrapper;

    sget-object p5, Lcom/zui/quickstep/i3;->a:Lcom/zui/quickstep/i3;

    invoke-direct {p4, p2, p5, p7, p3}, Lcom/zui/quickstep/RecentsAnimationWrapper;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/util/function/Supplier;)V

    iput-object p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-static {p2}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iput-object p8, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    new-instance p3, Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-direct {p3, p2}, Lcom/zui/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    new-instance p2, Lcom/zui/quickstep/util/TransformParams;

    invoke-direct {p2}, Lcom/zui/quickstep/util/TransformParams;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p3}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getCurrentActiveRotation()I

    move-result p3

    iget-object p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p4}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getDisplayRotation()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/zui/quickstep/util/TaskViewSimulator;->setLayoutRotation(II)V

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->initAfterSubclassConstructor()V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->A()V

    sget-object p2, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->initTransitionEndpoints(Lcom/zui/launcher/DeviceProfile;)V

    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p2}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result p2

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    iput p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->G:I

    int-to-float p2, p2

    const p3, 0x3e75c28f    # 0.24f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->H:I

    sget-boolean p2, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    sget-object p2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "runningTaskInfo:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "runningTaskInfo.isResizeable:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "runningTaskInfo.topActivityType:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->isTaskSupportSmallWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {p1}, Lcom/zui/quickstep/TaskSystemShortcut$Freeform;->isTaskOnDefaultDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->K:Z

    :cond_4
    iput-object p9, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    return-void
.end method

.method private A()V
    .locals 4

    new-instance v0, Lcom/zui/quickstep/MultiStateCallback;

    sget-object v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->R:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Z:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/z2;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/z2;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Z:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/w3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/w3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/f3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/f3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->a0:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/m3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/m3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/o3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/o3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e0:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/g3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/g3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f0:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/h4;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/h4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c0:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/u;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/u;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->X:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/v3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/v3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->W:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/h3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/h3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->W:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g0:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/t2;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/t2;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->X:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g0:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Z:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/s3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/s3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    new-instance v2, Lcom/zui/quickstep/d3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/d3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/f4;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/f4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e0:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/y3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/y3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Z:I

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zui/quickstep/f;

    invoke-direct {v3, v2}, Lcom/zui/quickstep/f;-><init>(Lcom/zui/quickstep/RecentsAnimationWrapper;)V

    invoke-virtual {v0, v1, v3}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d0:I

    or-int/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c0:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/zui/quickstep/z3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/z3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/MultiStateCallback;->addChangeHandler(ILjava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private A0(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V
    .locals 2

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "onAnimatorPlaybackControllerCreated"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    new-instance v0, Lcom/zui/quickstep/e4;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/e4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->adjustActivityControllerInterpolators()V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchOnStart()V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S0()V

    return-void
.end method

.method private B()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p()V

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    return-void
.end method

.method private B0()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->N0()V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x0()V

    return-void
.end method

.method private C()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->u()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->i:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method

.method private C0(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/134532571"

    if-eqz v0, :cond_0

    const-string v0, "onLauncherStart"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_2

    const-string v0, "onLauncherStart 1"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_4

    const-string v0, "onLauncherStart 2"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/util/TaskViewSimulator;->setRecentsConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object v2, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-eq v0, v2, :cond_9

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_5

    const-string v0, "onLauncherStart 3"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/zui/quickstep/p3;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/p3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    iget-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v2, :cond_6

    const-string v2, "onLauncherStart 5"

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Z:I

    invoke-virtual {v1, v2, v0}, Lcom/zui/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    sget-boolean v2, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v2, :cond_8

    const-string v2, "onLauncherStart 6"

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    :goto_0
    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s:Z

    invoke-static {p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v1, "WTS-init"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Ljava/lang/Object;Landroid/view/View;Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_1
    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T:I

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method private D()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->onGestureAnimationEnd()V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->z()V

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->resetLauncherListeners()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->q:Lcom/zui/quickstep/views/LiveTileOverlay;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseDraggingActivity;->setIgnoreWorkspaceView(Z)V

    return-void
.end method

.method private D0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E(Lcom/zui/launcher/BaseDraggingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E:F

    iput v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->offsetX(F)V

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->offsetY(F)V

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "onLongSwipeDisableUi------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Q0(Z)V

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->I:Z

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/LongSwipeView;->showDelayed(Z)V

    :cond_1
    return-void
.end method

.method private E(Lcom/zui/launcher/BaseDraggingActivity;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->K:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->supportsFreeformMultiWindow(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E0()V
    .locals 10

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E(Lcom/zui/launcher/BaseDraggingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Q0(Z)V

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v0

    :goto_1
    iget v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->G:I

    int-to-float v4, v3

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E:F

    iget v7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->H:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    iget v8, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E:F

    iget-boolean v8, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v9, 0x3e75c28f    # 0.24f

    mul-float/2addr v4, v9

    cmpl-float v4, v7, v4

    if-lez v4, :cond_5

    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v4}, Lcom/zui/quickstep/util/TaskViewSimulator;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_3
    int-to-float v4, v4

    iget-object v7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v7

    mul-float/2addr v4, v7

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v3, v5

    float-to-int v3, v3

    if-eqz v1, :cond_7

    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    float-to-int v3, v1

    :cond_7
    int-to-float v1, v3

    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v4}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/quickstep/util/RecentsOrientedState;->isOrientationChange()Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    const v4, 0x3f4ccccd    # 0.8f

    :goto_4
    mul-float/2addr v1, v4

    iget v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_9

    iget v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E:F

    iput v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    iput-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->I:Z

    goto :goto_5

    :cond_9
    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_a

    neg-float v1, v1

    iput v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    :cond_a
    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E:F

    sub-float/2addr v1, v6

    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    neg-int v1, v3

    int-to-float v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    iget-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->I:Z

    if-nez v1, :cond_b

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->I:Z

    :cond_b
    :goto_5
    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    if-eqz v0, :cond_c

    if-nez v8, :cond_d

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/LongSwipeView;->onDragEnter()V

    goto :goto_6

    :cond_c
    if-eqz v8, :cond_d

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/LongSwipeView;->onDragExit()V

    :cond_d
    :goto_6
    return-void
.end method

.method private static F(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

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

.method private F0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E(Lcom/zui/launcher/BaseDraggingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "onLongSwipeEnableUi----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    return-void
.end method

.method public static synthetic G(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B0()V

    return-void
.end method

.method private G0()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->moveWindowWithRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecentsViewScroll, this"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentShift.value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->R0()V

    :cond_0
    return-void
.end method

.method public static synthetic H(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C()V

    return-void
.end method

.method private H0()V
    .locals 0

    return-void
.end method

.method public static synthetic I(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->v0()V

    return-void
.end method

.method private I0()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/zui/quickstep/ActivityControlHelper;->onTransitionCancelled(Lcom/zui/launcher/BaseDraggingActivity;Z)V

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->clearForceInvisibleFlag(I)V

    return-void
.end method

.method public static synthetic J(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J0()V

    return-void
.end method

.method private J0()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "resumeLastTask-------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;)V

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v2, "finishRecentsAnimation"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;Z)V

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s(Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->reset()V

    return-void
.end method

.method public static synthetic K(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->v()V

    return-void
.end method

.method private K0()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-interface {v0, p0}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->onRemoteAnimationReceived(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    return-void
.end method

.method public static synthetic L(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->I0()V

    return-void
.end method

.method private L0(Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->R0()V

    return-void
.end method

.method public static final LLog(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic M(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->K0()V

    return-void
.end method

.method private M0()V
    .locals 3

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0, v1}, Lcom/zui/quickstep/ActivityControlHelper;->onSwipeUpToRecentsComplete(Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setDeferCancelUntilNextTransition(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    sget-object v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s(Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->reset()V

    return-void
.end method

.method public static synthetic N(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C0(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method

.method private N0()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T0(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->notifyGestureAnimationStartToRecents()V

    return-void
.end method

.method public static synthetic O(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->M0()V

    return-void
.end method

.method private O0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E(Lcom/zui/launcher/BaseDraggingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/LongSwipeView;->showDelayed(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic P(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w()V

    return-void
.end method

.method private P0()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "startNewTask-------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(ZZ)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    :goto_0
    iput v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t:I

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    new-instance v3, Lcom/zui/quickstep/g4;

    invoke-direct {v3, p0, v0}, Lcom/zui/quickstep/g4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;I)V

    invoke-virtual {v2, v1, v3}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;)V

    :goto_1
    sget-object p0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v0, "finishRecentsAnimation"

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic Q(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B()V

    return-void
.end method

.method private Q0(Z)V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    iget v6, v5, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v6, v6

    const v7, 0x3ca3d70a    # 0.02f

    mul-float/2addr v6, v7

    iget v5, v5, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    neg-int v5, v5

    iget v7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D:F

    iget v8, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->H:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v7, v6

    if-lez v6, :cond_1

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    int-to-float v5, v5

    mul-float/2addr v5, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private R0()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T0(F)V

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->applyWindowTransform()V

    :cond_0
    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->u:Z

    if-eq v0, v2, :cond_3

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->u:Z

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v3, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0, v1, v1}, Lcom/zui/quickstep/views/RecentsView;->performHapticFeedback(II)Z

    :cond_3
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S0()V

    :cond_5
    :goto_1
    return-void
.end method

.method private S0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object v1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setPlayFraction(F)V

    return-void
.end method

.method static synthetic T(FF)F
    .locals 0

    return p0
.end method

.method private T0(F)V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v0

    :goto_0
    const v2, 0x3e199998    # 0.14999998f

    cmpl-float p1, p1, v2

    const/4 v2, 0x1

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-eqz v3, :cond_4

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v4}, Lcom/zui/launcher/BaseActivity;->isStatusBarDark()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/zui/quickstep/RecentsAnimationWrapper;->setWindowThresholdCrossed(Z)V

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v2, p1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->setSplitScreenMinimized(Z)V

    :cond_4
    const/4 v2, 0x4

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->isStatusBarDark()Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v0

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    :cond_7
    return-void
.end method

.method public static synthetic U(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->y0()V

    return-void
.end method

.method public static synthetic Y(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->R0()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->W:I

    return v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c0:I

    return v0
.end method

.method static synthetic c(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->H0()V

    return-void
.end method

.method static synthetic d(Lcom/zui/quickstep/WindowTransformSwipeHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w0(Z)V

    return-void
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->X:I

    return v0
.end method

.method static synthetic e0(J)V
    .locals 0

    return-void
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d0:I

    return v0
.end method

.method static synthetic f0()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f0:I

    return v0
.end method

.method public static getHiddenTargetAlpha(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Float;)F
    .locals 0

    invoke-static {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e0:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->U:I

    return v0
.end method

.method public static isTaskSupportSmallWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->inZuiFreeformBlackList(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 v0, p0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic j(Lcom/zui/quickstep/WindowTransformSwipeHandler;)Lcom/zui/quickstep/MultiStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    return-object p0
.end method

.method static synthetic k(Lcom/zui/quickstep/WindowTransformSwipeHandler;)Lcom/zui/quickstep/ActivityControlHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    return-object p0
.end method

.method public static synthetic k0(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D()V

    return-void
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    return-object v0
.end method

.method private m(ZF)V
    .locals 4

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->isOrientationChange()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    int-to-float v0, v2

    mul-float/2addr p0, v0

    sub-float/2addr v1, p2

    mul-float/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->offsetX(F)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    sub-float/2addr v1, p2

    mul-float/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->offsetY(F)V

    :cond_6
    :goto_3
    return-void
.end method

.method private n(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 12
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "animateToProgress, runOnInit"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D0()V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->z()V

    move-object v0, p0

    iget-object v1, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    new-instance v11, Lcom/zui/quickstep/c4;

    move-object v2, v11

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/zui/quickstep/c4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V

    invoke-virtual {v1, v11}, Lcom/zui/quickstep/RecentsAnimationWrapper;->runOnInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "animateToProgressInternal------------------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->maybeUpdateRecentsAttachedState()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object v1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateToProgressInternal, mGestureEndTarget == HOME, mActivity==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->createHomeAnimationFactory(J)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;

    invoke-direct {v0, p0, p3, p4}, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;J)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->createWindowAnimationToHome(FLcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;)Lcom/zui/quickstep/util/RectFSpringAnim;

    move-result-object v1

    new-instance v2, Lcom/zui/quickstep/WindowTransformSwipeHandler$c;

    invoke-direct {v2, p0, p6}, Lcom/zui/quickstep/WindowTransformSwipeHandler$c;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, p7}, Lcom/zui/quickstep/util/RectFSpringAnim;->start(Landroid/graphics/PointF;)V

    iget p6, p7, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, p6}, Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;->playAtomicAnimation(F)V

    invoke-static {v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler$f;->b(Lcom/zui/quickstep/util/RectFSpringAnim;)Lcom/zui/quickstep/WindowTransformSwipeHandler$f;

    move-result-object p6

    iput-object p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c:Lcom/zui/quickstep/WindowTransformSwipeHandler$f;

    const/4 p6, 0x0

    iput-object p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    goto/16 :goto_3

    :cond_1
    sget-object p7, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToProgressInternal, mGestureEndTarget ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p6, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne p7, v0, :cond_2

    sget-object p7, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v0, "animateToProgressInternal, LAST_TASK---"

    :goto_1
    invoke-static {p7, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->NEW_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne p7, v0, :cond_3

    sget-object p7, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v0, "animateToProgressInternal, NEW_TASK------"

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne p7, v0, :cond_4

    sget-object p7, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v0, "animateToProgressInternal, RECENTS -------"

    goto :goto_1

    :cond_4
    :goto_2
    sget-object p7, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToProgressInternal, from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p7, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToProgressInternal, duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    invoke-virtual {p7, p1, p2}, Lcom/zui/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object p7

    invoke-virtual {p7, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/zui/quickstep/k3;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/k3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$d;

    invoke-direct {v0, p0, p6}, Lcom/zui/quickstep/WindowTransformSwipeHandler$d;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V

    invoke-virtual {p7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p7}, Landroid/animation/ObjectAnimator;->start()V

    invoke-static {p7}, Lcom/zui/quickstep/WindowTransformSwipeHandler$f;->a(Landroid/animation/Animator;)Lcom/zui/quickstep/WindowTransformSwipeHandler$f;

    move-result-object p6

    iput-object p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c:Lcom/zui/quickstep/WindowTransformSwipeHandler$f;

    :goto_3
    iget-object p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object p7, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne p6, p7, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p5, p1, p2}, Lcom/zui/launcher/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p5

    iget-object p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-nez p6, :cond_6

    return-void

    :cond_6
    cmpl-float p1, p1, p2

    if-eqz p1, :cond_9

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-gtz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p6, p5}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->adjustActivityControllerInterpolators()V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchOnStart()V

    :cond_8
    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mLauncherTransitionController start, duration:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_9
    :goto_4
    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "start == end, end mLauncherTransitionController duration:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    new-instance p3, Lcom/zui/quickstep/k4;

    invoke-direct {p3, p2}, Lcom/zui/quickstep/k4;-><init>(F)V

    invoke-virtual {p1, p3}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :goto_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->o:Z

    return-void
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object v1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->initTransitionEndpoints(Lcom/zui/launcher/DeviceProfile;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-long v1, p0

    invoke-interface {v0, v1, v2}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->createActivityController(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private q(Landroid/graphics/PointF;FZZ)Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "calculateEndTarget\uff0cno running tasks~"

    invoke-static {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateEndTarget\uff0crunningTaskIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateEndTarget\uff0ctaskToLaunch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    if-ltz v0, :cond_1

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/zui/quickstep/AnimatedFloat;->value:F

    const v4, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateEndTarget\uff0cisFling\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isCancel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateEndTarget\uff0creachedOverviewThreshold\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateEndTarget\uff0cmIsShelfPeeking\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateEndTarget\uff0cgoingToNewTask\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    if-nez p3, :cond_9

    if-eqz p4, :cond_4

    :cond_3
    :goto_3
    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    goto/16 :goto_7

    :cond_4
    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object p2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p1, p2, :cond_7

    iget-boolean p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    if-eqz p1, :cond_d

    goto/16 :goto_5

    :cond_5
    if-eqz v0, :cond_6

    :goto_4
    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->NEW_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    goto/16 :goto_7

    :cond_6
    if-nez v1, :cond_a

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    iget-boolean p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->v:Z

    if-eqz p1, :cond_8

    goto/16 :goto_6

    :cond_8
    if-eqz v0, :cond_3

    goto :goto_4

    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "calculateEndTarget\uff0cendVelocity\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", goingToNewTask:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "calculateEndTarget\uff0cvelocity\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    iget-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object p4, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/4 v2, 0x0

    if-ne p3, p4, :cond_c

    cmpg-float p3, p2, v2

    if-gez p3, :cond_c

    iget-boolean p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d:Z

    if-nez p3, :cond_c

    invoke-static {}, Lcom/android/systemui/shared/gamemode/GameUtils;->isGameAppForeground()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object p4, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p3, p4, :cond_b

    :cond_a
    :goto_5
    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_a

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a

    goto :goto_4

    :cond_c
    cmpg-float p3, p2, v2

    if-gez p3, :cond_f

    if-eqz v1, :cond_e

    :cond_d
    :goto_6
    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    goto :goto_7

    :cond_e
    if-eqz v0, :cond_d

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d

    goto/16 :goto_4

    :cond_f
    if-eqz v0, :cond_3

    goto/16 :goto_4

    :goto_7
    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz p0, :cond_11

    sget-object p2, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/OverviewInteractionState;

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewInteractionState;->getSystemUiStateFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_11

    sget-object p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-eq p1, p0, :cond_10

    sget-object p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne p1, p0, :cond_11

    :cond_10
    const-string p0, "calculateEndTarget\uff0cSYSUI_STATE_OVERVIEW_DISABLED!!"

    invoke-static {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    sget-object p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    return-object p0

    :cond_11
    return-object p1
.end method

.method public static synthetic q0(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P0()V

    return-void
.end method

.method public static synthetic r0(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->z0(Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private s(Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->y:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    :goto_0
    move v9, v0

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w:I

    iget v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x:I

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->y:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    float-to-int v4, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int v5, p0

    const/16 v6, 0xb

    const/16 v7, 0xd

    iget v8, p1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->containerType:I

    invoke-virtual/range {v1 .. v9}, Lcom/zui/launcher/logging/UserEventDispatcher;->logStateChangeAction(IIIIIIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic s0(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->A0(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V

    return-void
.end method

.method public static startSmallWindow(I)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeFreeformOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x8c

    const/16 v3, 0x438

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    return-void
.end method

.method private t()V
    .locals 4

    sget-object v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->CANCEL:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setShelfState(Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;Landroid/view/animation/Interpolator;J)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v1, "endLauncherTransitionController"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    new-instance v1, Lcom/zui/quickstep/x3;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/x3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    :cond_0
    return-void
.end method

.method public static synthetic t0(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->G0()V

    return-void
.end method

.method private u()V
    .locals 3

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRunningWindowAnim----mRunningWindowAnim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c:Lcom/zui/quickstep/WindowTransformSwipeHandler$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c:Lcom/zui/quickstep/WindowTransformSwipeHandler$f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler$f;->c()V

    :cond_0
    return-void
.end method

.method private u0()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B:Z

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_2

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->startSmallWindow(I)V

    :cond_2
    return-void
.end method

.method private v()V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zui_navbar_gesture_freeform_ms"

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v2, v5}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    :cond_0
    new-instance v1, Lcom/zui/quickstep/n3;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/n3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->finishRecentsControllerToHome(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v1, "finishRecentsAnimation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;Z)V

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s(Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private v0()V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    return-void
.end method

.method private w()V
    .locals 4

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g0:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    new-instance v3, Lcom/zui/quickstep/u3;

    invoke-direct {v3, p0}, Lcom/zui/quickstep/u3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v2, v1, v3}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object p0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v0, "finishRecentsAnimation"

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private w0(Z)V
    .locals 7

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->recentsAttachedToAppWindow:Z

    goto/16 :goto_6

    :cond_3
    iget-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v2

    iget-object v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v5

    if-eq v2, v5, :cond_4

    :goto_2
    move p1, v3

    goto :goto_6

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->z:Z

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v4

    :goto_4
    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    iget-object v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    if-eqz p1, :cond_8

    sget-object v5, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Q:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    if-eqz v1, :cond_a

    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Q:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    move p1, v4

    goto :goto_5

    :cond_a
    move p1, v3

    :goto_5
    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_b
    move v4, v0

    :goto_6
    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    invoke-interface {p0, v4, p1}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    :cond_c
    :goto_7
    return-void
.end method

.method private static x(ILjava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->R:[Ljava/lang/String;

    aput-object p1, v0, p0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method private x0()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_0
    return-void
.end method

.method private y(FZLandroid/graphics/PointF;Z)V
    .locals 16
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v7, Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iget v5, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v4

    invoke-direct {v7, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/zui/quickstep/AnimatedFloat;->value:F

    move/from16 v4, p1

    move/from16 v5, p4

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->q(Landroid/graphics/PointF;FZZ)Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    move-result-object v6

    sget-object v2, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    iget v5, v6, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endState:I

    const-string v8, "endTarget"

    invoke-virtual {v2, v8, v5}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;I)V

    iget v12, v6, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endShift:F

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    const-wide/16 v14, 0x15e

    if-nez v1, :cond_1

    sub-float v1, v12, v3

    const/high16 v2, 0x43af0000    # 350.0f

    mul-float/2addr v1, v2

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->i0:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    sget-object v4, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v6, v4, :cond_0

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    :goto_0
    move-object v9, v4

    move-object v8, v6

    move-wide v5, v14

    move-wide v14, v1

    move v1, v3

    goto/16 :goto_1

    :cond_1
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    iget v5, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    sub-float v1, v3, v1

    const/4 v5, 0x0

    iget v8, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    invoke-static {v1, v5, v8}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v1

    iget-object v5, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070614

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget v4, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    if-lez v4, :cond_4

    sget-object v5, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v6, v5, :cond_2

    iget-object v5, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v8, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq v5, v8, :cond_2

    new-instance v2, Lcom/zui/launcher/anim/Interpolators$OvershootParams;

    iget v13, v7, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    move-object v9, v2

    move v10, v1

    move v11, v12

    move-object/from16 p3, v6

    move-wide v5, v14

    move v14, v4

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/zui/launcher/anim/Interpolators$OvershootParams;-><init>(FFFFILandroid/content/Context;)V

    iget v3, v2, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->end:F

    iget-object v4, v2, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->interpolator:Landroid/view/animation/Interpolator;

    iget-wide v8, v2, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->duration:J

    const-wide/16 v10, 0x78

    const-wide/16 v12, 0x15e

    invoke-static/range {v8 .. v13}, Lcom/zui/launcher/Utilities;->boundToRange(JJJ)J

    move-result-wide v14

    move-object/from16 v8, p3

    move v2, v3

    move-object v9, v4

    goto :goto_2

    :cond_2
    move-object/from16 p3, v6

    move-wide v5, v14

    sub-float v3, v12, v3

    iget v4, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v8, 0x2

    mul-long/2addr v3, v8

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    sget-object v3, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    move-object/from16 v8, p3

    if-ne v8, v3, :cond_3

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    :cond_3
    move-object v9, v2

    goto :goto_1

    :cond_4
    move-object v8, v6

    move-wide v5, v14

    move-object v9, v2

    move-wide v14, v5

    :goto_1
    move v2, v12

    :goto_2
    iget-boolean v3, v8, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->isLauncher:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v3}, Lcom/zui/quickstep/RecentsAnimationWrapper;->enableInputProxy()V

    :cond_5
    sget-object v3, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v8, v3, :cond_6

    sget-object v3, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->CANCEL:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setShelfState(Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;Landroid/view/animation/Interpolator;J)V

    const-wide/16 v3, 0x78

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    sget-boolean v3, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByHome()Z

    goto/16 :goto_3

    :cond_6
    sget-object v3, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v8, v3, :cond_b

    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->q:Lcom/zui/quickstep/views/LiveTileOverlay;

    invoke-virtual {v3}, Lcom/zui/quickstep/views/LiveTileOverlay;->startIconAnimation()V

    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v3

    iget-object v4, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v4

    if-eq v4, v3, :cond_7

    iget-object v4, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {v14, v15}, Ljava/lang/Math;->toIntExact(J)I

    move-result v10

    invoke-virtual {v4, v3, v10}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    :cond_7
    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/zui/quickstep/views/RecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v4

    const/16 v5, 0x15e

    invoke-virtual {v3, v4, v5}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    :cond_8
    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/zui/quickstep/views/RecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_9
    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v4, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v3, v4, :cond_a

    sget-object v3, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->OVERVIEW:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    invoke-virtual {v0, v3, v9, v14, v15}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setShelfState(Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;Landroid/view/animation/Interpolator;J)V

    :cond_a
    sget-boolean v3, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C:Z

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByRecents()Z

    goto :goto_3

    :cond_b
    sget-object v3, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->NEW_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-eq v8, v3, :cond_c

    sget-object v3, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v8, v3, :cond_d

    :cond_c
    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/zui/quickstep/views/RecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/systemui/shared/gamemode/GameUtils;->isGameAppForeground()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v4, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v3, v4, :cond_e

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_4

    :cond_e
    move-wide v3, v14

    :goto_4
    move-object/from16 v0, p0

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method private y0()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->onTransitionCancelled()V

    return-void
.end method

.method private z()V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/LongSwipeView;->showDelayed(Z)V

    :cond_0
    return-void
.end method

.method private z0(Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityInit, activity=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mActivity==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    invoke-virtual {v0}, Lcom/zui/quickstep/MultiStateCallback;->getState()I

    move-result v0

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h0:I

    not-int v2, v2

    and-int/2addr v0, v2

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->A()V

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    invoke-virtual {v2, v0}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s:Z

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/BaseActivity;->clearForceInvisibleFlag(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/BaseActivity;->addForceInvisibleFlag(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    new-instance v2, Lcom/zui/quickstep/r3;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/r3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-static {v0, v2}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->create(Landroid/view/View;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/views/RecentsView;->setRecentsAnimationWrapper(Lcom/zui/quickstep/RecentsAnimationWrapper;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->q:Lcom/zui/quickstep/views/LiveTileOverlay;

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/views/RecentsView;->setLiveTileOverlay(Lcom/zui/quickstep/views/LiveTileOverlay;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->q:Lcom/zui/quickstep/views/LiveTileOverlay;

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->C0(Lcom/zui/launcher/BaseDraggingActivity;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/zui/quickstep/q3;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/q3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/BaseDraggingActivity;->setOnStartCallback(Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;)V

    :goto_1
    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->N0()V

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->linkRecentsViewScroll()V

    return v1
.end method


# virtual methods
.method public synthetic R(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->o(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic S(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->computeScroll()V

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->applyDeskBlurByFactor(F)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m(ZF)V

    return-void
.end method

.method public synthetic V(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    return-void
.end method

.method public synthetic W(Landroid/graphics/RectF;F)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget p1, p1, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T0(F)V

    return-void
.end method

.method public synthetic X(F)F
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p0

    return p0
.end method

.method public synthetic Z()V
    .locals 2

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g0:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->u0()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/zui/quickstep/SystemUiProxy;->exitSplitScreenOnStartHome()V

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->updateWorkspaceScroll()V

    :cond_1
    return-void
.end method

.method public synthetic a0()V
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g0:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    return-void
.end method

.method protected applyWindowTransform()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mWindowTransitionController:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setPlayFraction(F)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_1
    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->isOrientationChange()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz v1, :cond_3

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    int-to-float v1, v2

    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->offsetX(F)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F:F

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->offsetY(F)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->apply(Lcom/zui/quickstep/util/TransformParams;)V

    :cond_8
    return-void
.end method

.method public synthetic b0(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    return-void
.end method

.method public synthetic c0(F)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public cancelCurrentAnimation(Lcom/zui/quickstep/SwipeSharedState;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->r:Z

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/zui/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "cancelCurrentAnimation---"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->switchToScreenshot()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t:I

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->setCurrentTask(I)V

    invoke-virtual {p1, v1}, Lcom/zui/quickstep/SwipeSharedState;->setRecentsAnimationFinishInterrupted(I)V

    :cond_2
    return-void
.end method

.method protected createHomeAnimationFactory(J)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget p2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S:I

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    or-int/2addr p2, v0

    new-instance v0, Lcom/zui/quickstep/x2;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/x2;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p1, p2, v0}, Lcom/zui/quickstep/MultiStateCallback;->addChangeHandler(ILjava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p1, p0}, Lcom/zui/quickstep/ActivityControlHelper;->prepareHomeUI(Lcom/zui/launcher/BaseDraggingActivity;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;

    move-result-object p0

    return-object p0
.end method

.method protected createWindowAnimationToHome(FLcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;)Lcom/zui/quickstep/util/RectFSpringAnim;
    .locals 7

    invoke-interface {p2}, Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {p2}, Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;->getFloatingView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mWindowTransitionController:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iget v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    div-float v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setPlayFraction(F)V

    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v4, p1}, Lcom/zui/quickstep/util/TransformParams;->setProgress(F)Lcom/zui/quickstep/util/TransformParams;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/zui/quickstep/util/TaskViewSimulator;->apply(Lcom/zui/quickstep/util/TransformParams;)V

    new-instance p1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v3}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v4, v3}, Lcom/zui/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v5}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v5, Lcom/zui/quickstep/util/RectFSpringAnim;

    iget-object v6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v4, v0, v6}, Lcom/zui/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/res/Resources;)V

    if-eqz v2, :cond_1

    instance-of v0, v1, Lcom/zui/launcher/views/FloatingIconView;

    if-eqz v0, :cond_1

    check-cast v1, Lcom/zui/launcher/views/FloatingIconView;

    invoke-virtual {v5, v1}, Lcom/zui/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/zui/quickstep/m4;

    invoke-direct {v0, v5}, Lcom/zui/quickstep/m4;-><init>(Lcom/zui/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v1, v0}, Lcom/zui/launcher/views/FloatingIconView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/zui/quickstep/q;

    invoke-direct {v0, v5}, Lcom/zui/quickstep/q;-><init>(Lcom/zui/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v1, v0}, Lcom/zui/launcher/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler$SpringAnimationRunner;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v0}, Lcom/zui/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    invoke-virtual {v5, v0}, Lcom/zui/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/zui/quickstep/e3;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/e3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v5, p1}, Lcom/zui/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance p1, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v5, p1}, Lcom/zui/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5
.end method

.method public synthetic d0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/zui/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    :cond_0
    return-void
.end method

.method protected finishRecentsControllerToHome(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public synthetic g0(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->addDependentTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    return-void
.end method

.method public getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .locals 3

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getController\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v2}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGestureEndTarget()Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    return-object p0
.end method

.method public getLastStartedTaskId()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->O:I

    return p0
.end method

.method protected getRecentsView()Lcom/zui/quickstep/views/RecentsView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    return-object p0
.end method

.method public getRecentsViewDispatcher(F)Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getEventDispatcher(F)Ljava/util/function/Consumer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method protected getWindowAlpha(F)F
    .locals 7

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const v0, 0x3f59999a    # 0.85f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    const/4 v2, 0x0

    const v3, 0x3f59999a    # 0.85f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->ACCEL_1_5:Landroid/view/animation/Interpolator;

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0
.end method

.method public synthetic h0(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/TransformParams;

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    new-instance v1, Lcom/zui/quickstep/b4;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/b4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->runOnInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected handleTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    sget v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f0:I

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getLastStartedTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->reset()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public synthetic i0(F)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    mul-float/2addr p1, p0

    return p1
.end method

.method protected initAfterSubclassConstructor()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->initTransitionEndpoints(Lcom/zui/launcher/DeviceProfile;)V

    return-void
.end method

.method protected initTransitionEndpoints(Lcom/zui/launcher/DeviceProfile;)V
    .locals 3

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/TaskViewSimulator;->setDp(Lcom/zui/launcher/DeviceProfile;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, Lcom/zui/quickstep/ActivityControlHelper;->getSwipeUpDestinationAndLength(Lcom/zui/launcher/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v1, v2, :cond_0

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    :cond_0
    new-instance p1, Lcom/zui/launcher/anim/PendingAnimation;

    iget v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-direct {p1, v0, v1}, Lcom/zui/launcher/anim/PendingAnimation;-><init>(J)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    new-instance v1, Lcom/zui/quickstep/j3;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/j3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {v0, p1, v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->addAppToOverviewAnim(Lcom/zui/launcher/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/zui/launcher/anim/PendingAnimation;->createPlaybackController()Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mWindowTransitionController:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    return-void
.end method

.method public initWhenReady()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->i:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;->register()V

    return-void
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->r:Z

    return p0
.end method

.method public synthetic j0()V
    .locals 8

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/134532571"

    const-string v1, "onLauncherStart 4"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    iget-boolean v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s:Z

    const/4 v5, 0x1

    new-instance v6, Lcom/zui/quickstep/j4;

    invoke-direct {v6, p0}, Lcom/zui/quickstep/j4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    iget-object v7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-interface/range {v2 .. v7}, Lcom/zui/quickstep/ActivityControlHelper;->prepareRecentsUI(Lcom/zui/launcher/BaseDraggingActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zui.launcher/.settings.ZuiLauncherSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-interface {v0, v1}, Lcom/zui/quickstep/ActivityControlHelper;->setRestState(Lcom/zui/launcher/LauncherState;)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w0(Z)V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->O0()V

    return-void
.end method

.method public synthetic l0(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method protected linkRecentsViewScroll()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkRecentsViewScroll, mRecentsView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    new-instance v0, Lcom/zui/quickstep/c3;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/c3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->runOnRecentsAnimationStart(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->L:Z

    return-void
.end method

.method public synthetic m0()V
    .locals 2

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "execute launch task success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0, p0}, Lcom/zui/quickstep/ActivityControlHelper;->onLaunchTaskSuccess(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method

.method public maybeUpdateRecentsAttachedState()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w0(Z)V

    return-void
.end method

.method protected moveWindowWithRecentsScroll()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getGestureEndTarget()Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    move-result-object p0

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic n0(Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t()V

    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p2, p0}, Lcom/zui/quickstep/ActivityControlHelper;->onLaunchTaskFailed(Lcom/zui/launcher/BaseDraggingActivity;)V

    sget-object p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isFingerprintLockApp:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {p2}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p2

    mul-int/lit8 p2, p2, 0xa

    int-to-long v0, p2

    :cond_1
    sget-object p2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/zui/quickstep/d4;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/d4;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method protected notifyGestureAnimationStartToRecents()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsView;->onGestureAnimationStart(I)V

    return-void
.end method

.method public synthetic o0(I)V
    .locals 5

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNewTask, taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCanceled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    sget-object v2, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNewTask, nextTask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->updateLastStartedTaskId(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/TaskView;->setWindowModeFullScreen(Z)V

    new-instance v2, Lcom/zui/quickstep/l3;

    invoke-direct {v2, p0, v0}, Lcom/zui/quickstep/l3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/views/TaskView;)V

    sget-object v3, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/zui/quickstep/views/TaskView;->launchTask(ZZLjava/util/function/Consumer;Landroid/os/Handler;)V

    sget-object p1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->NEW_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->s(Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->reset()V

    :cond_1
    iput-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->r:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t:I

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->p()V

    return-object p1
.end method

.method public onGestureCancelled()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    const-string v1, "onGestureCancelled---"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->updateDisplacement(F)V

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    const/4 v1, 0x6

    iput v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w:I

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->y(FZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method public onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070615

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->v:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b0:I

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    const/4 v1, 0x4

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->w:I

    iget v5, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    :goto_3
    iput v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x:I

    goto :goto_4

    :cond_4
    iget v2, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    move v1, v4

    :cond_5
    iput v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x:I

    :goto_4
    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->y:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->y(FZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method public onGestureStarted()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->x0()V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iput v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g:F

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->P:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGestureStarted, mShiftAtGestureStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Z:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->v:Z

    return-void
.end method

.method public onMotionPauseChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object p1, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->PEEK:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->HIDE:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    :goto_0
    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    const-wide/16 v1, 0xf0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setShelfState(Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;Landroid/view/animation/Interpolator;J)V

    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->setController(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->i:Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;->unregister()V

    sget p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->a0:I

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    sget-object p0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string p1, "cancelRecentsAnimation"

    invoke-virtual {p0, p1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 11

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    invoke-virtual {p1, v1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v2, p1}, Lcom/zui/quickstep/util/TransformParams;->setTargetSet(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Lcom/zui/quickstep/util/TransformParams;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v2, v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_0
    iget-object v2, p1, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->minimizedHomeBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {v4, v2, v1}, Lcom/zui/quickstep/ActivityControlHelper;->getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p1, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->minimizedHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p1, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->minimizedHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Lcom/zui/launcher/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    :goto_0
    iget-object v4, p1, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->homeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/zui/launcher/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz v2, :cond_4

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v2}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x1

    aget v6, v4, v5

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v6}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v5, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    aget v7, v4, v3

    aget v8, v4, v5

    aget v9, v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    aget v4, v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v4, v2

    invoke-direct {v6, v7, v8, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v6

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v5, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/zui/launcher/DeviceProfile;->copy(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    goto :goto_0

    :goto_2
    iget-object v4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/zui/launcher/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/util/TaskViewSimulator;->setOverviewStackBounds(Landroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->initTransitionEndpoints(Lcom/zui/launcher/DeviceProfile;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->setController(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    iget-object p1, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p1, p1

    const-string v1, "startRecentsAnimationCallback"

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;I)V

    sget p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->V:I

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    iput-boolean v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->u:Z

    return-void
.end method

.method public onTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->handleTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p1, p0}, Lcom/zui/quickstep/ActivityControlHelper;->onLaunchTaskSuccess(Lcom/zui/launcher/BaseDraggingActivity;)V

    sget-object p0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string p1, "finishRecentsAnimation"

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic p0()V
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    return-void
.end method

.method r()Lcom/zui/quickstep/inputconsumers/InputConsumer;
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->u()V

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->t()V

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/a;->a:Lcom/zui/quickstep/a;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->L0(Ljava/util/function/BiFunction;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDeviceState:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;ZLcom/zui/quickstep/RecentsAnimationDeviceState;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/zui/quickstep/RecentsAnimationWrapper;->targetSet:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->A:Lcom/zui/quickstep/ZuiSupplier;

    return-void
.end method

.method public reset()V
    .locals 1

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->Y:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    return-void
.end method

.method public resetLauncherListeners()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove scroll listener, mRecentsView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->LLog(Ljava/lang/String;)V

    return-void
.end method

.method protected runOnRecentsAnimationStart(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->N:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public setGestureEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public setIsLikelyToStartNewTask(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->z:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->z:Z

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->maybeUpdateRecentsAttachedState()V

    :cond_0
    return-void
.end method

.method public setShelfState(Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;Landroid/view/animation/Interpolator;J)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d:Z

    sget-object p3, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->PEEK:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    const/4 p4, 0x1

    if-ne p1, p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d:Z

    if-eq p3, p2, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->maybeUpdateRecentsAttachedState()V

    :cond_1
    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz p2, :cond_3

    iget-boolean p1, p1, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->shouldPreformHaptic:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    const/16 p1, 0x23

    const/16 p2, 0x19

    invoke-virtual {p0, p1, p2, p4}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIZ)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0, p4, p4}, Lcom/zui/quickstep/views/RecentsView;->performHapticFeedback(II)Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected setStateOnUiThread(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/zui/launcher/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->m:Lcom/zui/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/t3;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/t3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;I)V

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected switchToScreenshot()V
    .locals 6

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/zui/quickstep/RecentsAnimationWrapper;->getController()Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v5, :cond_4

    iget v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    invoke-virtual {v2, v5}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_4
    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object v5, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    if-ne v2, v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    iget v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k:I

    iget-object v5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {v2, v3, v5, v0}, Lcom/zui/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/zui/quickstep/views/TaskView;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_6

    iget-boolean v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->r:Z

    if-nez v0, :cond_6

    new-instance v0, Lcom/zui/quickstep/y2;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/y2;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    new-instance v2, Lcom/zui/quickstep/c;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/c;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    invoke-static {v3, v0, v2}, Lcom/zui/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v4

    :goto_3
    if-nez v0, :cond_7

    const-string v0, "ScreenshotCaptured"

    invoke-static {v0, v1}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    sget v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    invoke-static {v0, v4}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public updateDisplacement(F)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    neg-float p1, p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D:F

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    if-lez v1, :cond_0

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    mul-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_0
    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    int-to-float v2, v1

    iget v3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    mul-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    invoke-virtual {p1, v3}, Lcom/zui/quickstep/AnimatedFloat;->updateValue(F)V

    goto :goto_3

    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->H:I

    if-lez v1, :cond_2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->O0()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B:Z

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->F0()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->B:Z

    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D0()V

    :cond_3
    :goto_0
    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransitionDragLength:I

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v0, v1

    div-float v0, p1, v0

    :goto_1
    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E(Lcom/zui/launcher/BaseDraggingActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz p1, :cond_6

    const p1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, p1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    invoke-static {v0, p1, v1}, Lcom/zui/launcher/Utilities;->getProgress(FFF)F

    move-result v0

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3e4cccc8    # 0.19999993f

    goto :goto_2

    :cond_5
    const p1, 0x3fb33333    # 1.4f

    cmpl-float v1, v0, p1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e:F

    invoke-static {v0, p1, v1}, Lcom/zui/launcher/Utilities;->getProgress(FFF)F

    move-result v0

    sget-object v1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j0:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3ecccccc    # 0.39999998f

    :goto_2
    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    :cond_6
    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/AnimatedFloat;->updateValue(F)V

    :goto_3
    invoke-direct {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->E0()V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->isOrientationChange()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result p1

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    iget v1, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float p1, p1

    div-float v0, v1, p1

    :cond_7
    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->J:Lcom/zui/quickstep/views/LongSwipeView;

    iget v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->D:F

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mDp:Lcom/zui/launcher/DeviceProfile;

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-virtual {p1, v1, p0}, Lcom/zui/quickstep/views/LongSwipeView;->setValue(FF)V

    :cond_8
    return-void
.end method

.method public updateLastStartedTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->O:I

    return-void
.end method
