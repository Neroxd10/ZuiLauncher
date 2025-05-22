.class public abstract Lcom/zui/quickstep/views/RecentsView;
.super Lcom/zui/launcher/PagedView;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;
.implements Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;
.implements Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;
.implements Lcom/zui/quickstep/BaseRecentsView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/views/RecentsView$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseActivity;",
        ">",
        "Lcom/zui/launcher/PagedView;",
        "Lcom/zui/launcher/Insettable;",
        "Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;",
        "Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;",
        "Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;",
        "Lcom/zui/quickstep/BaseRecentsView;"
    }
.end annotation


# static fields
.field public static final ADJACENT_PAGE_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/BaseRecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_PORT_TO_CONNECT:Ljava/lang/String; = "zui.display.port.to.connect"

.field public static final DISPLAY_PORT_TO_DISCONNECT:Ljava/lang/String; = "zui.display.port.to.disconnect"

.field public static final FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/BaseRecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_MODALNESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_SYSUI_FLAGS_THRESHOLD:F = 0.85f


# instance fields
.field private A:Z

.field private final A0:I

.field private B:Z

.field private B0:Lcom/zui/quickstep/util/SplitSelectStateController;

.field private C:Z

.field private C0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D:Z

.field private D0:Lcom/zui/launcher/util/RunnableList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final E:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private F:I

.field private G:Z

.field private H:Lcom/android/systemui/shared/recents/model/Task;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private final M:F

.field private N:I

.field private O:I

.field private P:Lcom/zui/launcher/util/PendingAnimation;

.field private Q:Landroid/animation/LayoutTransition;

.field private R:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private S:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private T:I

.field private final U:Landroid/graphics/drawable/Drawable;

.field private final V:Ljava/lang/CharSequence;

.field private final W:Landroid/text/TextPaint;

.field private final X:Landroid/graphics/Point;

.field private final Y:I

.field private Z:Z

.field private a0:Landroid/text/Layout;

.field private b0:Lcom/zui/quickstep/views/LiveTileOverlay;

.field private c0:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

.field private d0:Z

.field private e0:Lcom/zui/quickstep/views/HintView;

.field private f0:I

.field private g0:I

.field h0:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field private i0:Landroid/database/ContentObserver;

.field private j0:Landroid/content/BroadcastReceiver;

.field private k0:I

.field private l0:Z

.field private m0:Z

.field protected final mActivity:Lcom/zui/launcher/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field protected mEnableDrawingLiveTile:Z

.field protected mFocusedTaskId:I

.field protected final mLastComputedGridSize:Landroid/graphics/Rect;

.field protected final mLastComputedGridTaskSize:Landroid/graphics/Rect;

.field protected mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

.field protected final mLastComputedTaskSize:Landroid/graphics/Rect;

.field protected mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

.field protected final mLiveTileParams:Lcom/zui/quickstep/util/TransformParams;

.field protected final mLiveTileTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

.field protected mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

.field protected mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mRecentsAnimationTargets:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

.field protected mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

.field protected mRemoteTargetHandles:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mRunningTaskId:I

.field protected mSyncTransactionApplier:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

.field protected mTaskHeight:I

.field protected mTaskModalness:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mTaskViewsPrimarySplitTranslation:F

.field protected mTaskViewsSecondarySplitTranslation:F

.field protected mTaskViewsSecondaryTranslation:F

.field protected mTaskWidth:I

.field protected final mTempClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected final mTempRectF:Landroid/graphics/RectF;

.field private n0:Lcom/zui/quickstep/views/SplitPlaceholderView;

.field private final o:Landroid/graphics/PointF;

.field private o0:Lcom/zui/quickstep/views/TaskView;

.field private final p:[F

.field private final p0:I

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final q0:I

.field private final r:F

.field private r0:F

.field private final s:Lcom/zui/quickstep/RecentsModel;

.field private s0:F

.field private final t:I

.field private final t0:Lcom/zui/launcher/util/IntSet;

.field private final u:Lcom/zui/quickstep/views/ClearAllButton;

.field private final u0:Lcom/zui/quickstep/TaskOverlayFactory;

.field private final v:Landroid/graphics/Rect;

.field private v0:I

.field private final w:Landroid/graphics/Rect;

.field private w0:Lcom/zui/quickstep/views/OverviewActionsView;

.field private final x:Landroid/util/SparseBooleanArray;

.field private x0:I

.field private final y:Lcom/zui/launcher/InvariantDeviceProfile;

.field private y0:I

.field private final z:Lcom/zui/launcher/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/ViewPool<",
            "Lcom/zui/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private z0:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/quickstep/views/RecentsView$c;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsView$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/quickstep/views/RecentsView$d;

    const-string v1, "fullscreenProgress"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsView$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/quickstep/views/RecentsView$k;

    const-string v1, "taskModalness"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsView$k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/quickstep/views/RecentsView$a;

    const-string v1, "adjacentPageOffset"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsView$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/RecentsView;->ADJACENT_PAGE_OFFSET:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/quickstep/views/RecentsView$b;

    const-string v1, "colorTint"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsView$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->o:Landroid/graphics/PointF;

    const/4 p3, 0x1

    new-array v0, p3, [F

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->p:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->q:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->v:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->w:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/zui/quickstep/views/RecentsView$e;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/views/RecentsView$e;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->E:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->F:I

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    iput-boolean p2, p0, Lcom/zui/quickstep/views/RecentsView;->I:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->S:F

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->X:Landroid/graphics/Point;

    new-instance v3, Lcom/zui/quickstep/views/y;

    invoke-direct {v3, p0}, Lcom/zui/quickstep/views/y;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->c0:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

    new-instance v3, Lcom/zui/quickstep/views/RecentsView$h;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/zui/quickstep/views/RecentsView$h;-><init>(Lcom/zui/quickstep/views/RecentsView;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->i0:Landroid/database/ContentObserver;

    new-instance v3, Lcom/zui/quickstep/views/RecentsView$j;

    invoke-direct {v3, p0}, Lcom/zui/quickstep/views/RecentsView$j;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->j0:Landroid/content/BroadcastReceiver;

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskModalness:F

    new-instance v3, Lcom/zui/quickstep/views/RecentsView$l;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/zui/quickstep/views/RecentsView$l;-><init>(Lcom/zui/quickstep/views/RecentsView$c;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->r0:F

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskViewsSecondaryTranslation:F

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskViewsSecondarySplitTranslation:F

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->s0:F

    new-instance v2, Lcom/zui/launcher/util/IntSet;

    invoke-direct {v2}, Lcom/zui/launcher/util/IntSet;-><init>()V

    iput-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->t0:Lcom/zui/launcher/util/IntSet;

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->mFocusedTaskId:I

    new-instance v0, Lcom/zui/quickstep/util/TransformParams;

    invoke-direct {v0}, Lcom/zui/quickstep/util/TransformParams;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileParams:Lcom/zui/quickstep/util/TransformParams;

    iput p2, p0, Lcom/zui/quickstep/views/RecentsView;->v0:I

    iput p2, p0, Lcom/zui/quickstep/views/RecentsView;->x0:I

    iput-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    iput-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07064a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->setPageSpacing(I)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/PagedView;->setEnableFreeScroll(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07061e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->r:F

    new-instance v0, Lcom/zui/quickstep/util/RecentsOrientedState;

    new-instance v2, Lcom/zui/quickstep/views/d0;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/views/d0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-direct {v0, p1, v2}, Lcom/zui/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/util/RecentsOrientedState;->setActivityConfiguration(Landroid/content/res/Configuration;)Z

    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-static {v0}, Lcom/zui/quickstep/util/RecentsViewUtils;->getInstance(Lcom/zui/launcher/BaseActivity;)Lcom/zui/quickstep/util/RecentsViewUtils;

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsModel;

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile;

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->y:Lcom/zui/launcher/InvariantDeviceProfile;

    new-instance v0, Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mTempClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v2}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v2

    const v3, 0x7f0d0119

    invoke-virtual {v0, v3, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/ClearAllButton;

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    new-instance v2, Lcom/zui/quickstep/views/d;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/views/d;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    new-instance v2, Lcom/zui/quickstep/views/b;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/views/b;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->F0()V

    new-instance v0, Lcom/zui/launcher/util/ViewPool;

    const v8, 0x7f0d017a

    const/16 v9, 0x14

    const/16 v10, 0xa

    move-object v5, v0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lcom/zui/launcher/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->z:Lcom/zui/launcher/util/ViewPool;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    xor-int/2addr p3, v0

    iput-boolean p3, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07059b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/quickstep/views/RecentsView;->p0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07059c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/quickstep/views/RecentsView;->q0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0707d5

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/quickstep/views/RecentsView;->t:I

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p3

    iput p3, p0, Lcom/zui/quickstep/views/RecentsView;->M:F

    const p3, 0x7f08024d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const p3, 0x7f1205ab

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->V:Ljava/lang/CharSequence;

    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->W:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0602ca

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->W:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07061d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->W:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07061c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/quickstep/views/RecentsView;->Y:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p2}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    const-class p2, Lcom/zui/quickstep/TaskOverlayFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f12066c

    invoke-static {p2, p3, v0}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p2

    check-cast p2, Lcom/zui/quickstep/TaskOverlayFactory;

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->u0:Lcom/zui/quickstep/TaskOverlayFactory;

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getViewCache()Lcom/zui/launcher/util/ViewCache;

    move-result-object p2

    const p3, 0x7f0d00a1

    const/4 v0, 0x5

    invoke-virtual {p2, p3, v0}, Lcom/zui/launcher/util/ViewCache;->setCacheSize(II)V

    new-instance p2, Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/zui/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object p2, p2, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    iput v1, p2, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->getForegroundScrimDimColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->A0:I

    return-void
.end method

.method static synthetic A(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->V0()V

    return-void
.end method

.method static synthetic B(Lcom/zui/quickstep/views/RecentsView;I)I
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->k0:I

    return p1
.end method

.method static synthetic C(Lcom/zui/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setColorTint(F)V

    return-void
.end method

.method private C0()V
    .locals 2

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/views/e0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/e0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->moveAllStackToDefaultDisplay(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic D(Lcom/zui/quickstep/views/RecentsView;)F
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->getColorTint()F

    move-result p0

    return p0
.end method

.method private D0(I)V
    .locals 3

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/zui/quickstep/views/RecentsView;->J:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->P(I)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new configration:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->setActivityConfiguration(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->U0()V

    :cond_1
    return-void
.end method

.method static synthetic E(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->X()V

    return-void
.end method

.method private E0()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zui.display.port.to.connect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "zui.display.port.to.disconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->j0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic F(Lcom/zui/quickstep/views/RecentsView;)Lcom/zui/quickstep/RecentsModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    return-object p0
.end method

.method private F0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d7

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->f0:I

    return-void
.end method

.method static synthetic G(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->T()V

    return-void
.end method

.method private G0()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->onTaskRemovedInternal()V

    return-void
.end method

.method static synthetic H(Lcom/zui/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/quickstep/views/RecentsView;->I0(Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V

    return-void
.end method

.method private H0()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/zui/quickstep/views/RecentsView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    return p0
.end method

.method private I0(Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->G0()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAppProcess(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    iget p3, p3, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->logAction:I

    const/4 p4, 0x1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {p1}, Lcom/zui/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object p1

    invoke-virtual {p0, p3, p4, p2, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IIILcom/zui/launcher/util/ComponentKey;)V

    :cond_0
    return-void
.end method

.method static synthetic J(Lcom/zui/quickstep/views/RecentsView;)Lcom/zui/quickstep/views/ClearAllButton;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    return-object p0
.end method

.method private J0()V
    .locals 8

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->o0:Lcom/zui/quickstep/views/TaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->y0:I

    if-gt v1, v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->snapToPageImmediately(I)Z

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/zui/quickstep/views/RecentsView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->o0:Lcom/zui/quickstep/views/TaskView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->y0:I

    return-void
.end method

.method static synthetic K(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W()V

    return-void
.end method

.method private K0()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/views/TaskView;->setOrientationState(Lcom/zui/quickstep/util/RecentsOrientedState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic L(Lcom/zui/quickstep/views/RecentsView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->T0(Z)V

    return-void
.end method

.method private L0(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    const-string v0, "launcher.hint_view_visible_count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final LLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RecentsView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static M(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p4, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private M0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/views/RecentsView;->m0:Z

    return p0
.end method

.method private N(Landroid/view/View;Landroid/animation/AnimatorSet;J)V
    .locals 11

    sget-object p0, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-static {p0, p3, p4, v1, p2}, Lcom/zui/quickstep/views/RecentsView;->M(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    sget-object p0, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/zui/quickstep/views/TaskView;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/zui/launcher/anim/SpringObjectAnimator;

    sget-object v6, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x44bb8000    # 1500.0f

    const/4 v1, 0x2

    new-array v10, v1, [F

    aput v3, v10, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v10, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/zui/launcher/anim/SpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {p0, p3, p4, p1, p2}, Lcom/zui/quickstep/views/RecentsView;->M(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method private N0(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v1

    add-int/2addr v1, p2

    if-nez p3, :cond_2

    if-ltz v1, :cond_1

    if-lt v1, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/2addr v1, p1

    rem-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x1

    return p0
.end method

.method private O(Lcom/zui/quickstep/views/TaskView;Landroid/animation/AnimatorSet;J)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v2}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    sget-object v2, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v0, v4

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v4}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    aget v1, v1, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    aput v1, v0, v3

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v2}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->h0:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    new-instance v3, Lcom/zui/quickstep/views/b0;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/zui/quickstep/views/b0;-><init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/quickstep/views/TaskView;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v0, p3, p4, p0, p2}, Lcom/zui/quickstep/views/RecentsView;->M(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method private O0(I)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/zui/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method private P(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->canRecentsActivityRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/views/a0;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/views/a0;-><init>(Lcom/zui/quickstep/views/RecentsView;I)V

    invoke-static {v1}, Lcom/zui/launcher/anim/AnimationSuccessListener;->forRunnable(Ljava/lang/Runnable;)Lcom/zui/launcher/anim/AnimationSuccessListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private P0()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->j0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private Q()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/zui/quickstep/views/RecentsView;->I:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    :cond_1
    return-void
.end method

.method private Q0()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->v:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->w:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/graphics/Rect;->union(IIII)V

    :cond_1
    return-void
.end method

.method private R()V
    .locals 2

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/views/i0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/i0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->moveStackBackToDefaultDisplay(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private R0(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->a0:Landroid/text/Layout;

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->X:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_1
    iget-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->Z:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->a0:Landroid/text/Layout;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->X:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->Y:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->V:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->W:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->a0:Landroid/text/Layout;

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->X:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->X:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v1, v0, p1, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private S(Lcom/zui/quickstep/views/TaskMenuView;FI)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->h0:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskMenuView;->getFadeInOpenAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskMenuView;->getFadeInOpenAnimator()Landroid/animation/AnimatorSet;

    move-result-object p1

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->h0:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->h0:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_1

    int-to-float p1, p3

    div-float/2addr p2, p1

    const/4 p1, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p1, p3}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_1
    return-void
.end method

.method private S0()V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zui/quickstep/views/TaskView;

    if-ne v3, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Lcom/zui/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private T()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private T0(Z)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    new-instance v2, Lcom/zui/launcher/util/IntSet;

    invoke-direct {v2}, Lcom/zui/launcher/util/IntSet;-><init>()V

    new-instance v3, Lcom/zui/launcher/util/IntSet;

    invoke-direct {v3}, Lcom/zui/launcher/util/IntSet;-><init>()V

    new-array v4, v1, [F

    const v5, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/zui/quickstep/views/RecentsView;->b0(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v6

    if-nez p1, :cond_1

    iget-object v7, v0, Lcom/zui/quickstep/views/RecentsView;->t0:Lcom/zui/launcher/util/IntSet;

    invoke-virtual {v7}, Lcom/zui/launcher/util/IntSet;->clear()V

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v9, v1, :cond_13

    invoke-virtual {v0, v9}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v1

    iget v1, v0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    add-int/2addr v8, v1

    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/2addr v10, v8

    add-int/2addr v11, v8

    aget v1, v4, v9

    int-to-float v5, v12

    add-float/2addr v1, v5

    aput v1, v4, v9

    aget v1, v4, v9

    iget-boolean v5, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_2

    int-to-float v5, v8

    goto :goto_1

    :cond_2
    neg-int v5, v8

    int-to-float v5, v5

    :goto_1
    add-float/2addr v1, v5

    aput v1, v4, v9

    move-object v1, v6

    move v15, v8

    if-ne v7, v6, :cond_3

    move/from16 v16, v15

    :cond_3
    move v5, v9

    goto/16 :goto_e

    :cond_4
    if-le v9, v5, :cond_6

    aget v1, v4, v9

    move-object/from16 v18, v6

    iget-boolean v6, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_5

    int-to-float v6, v15

    goto :goto_2

    :cond_5
    neg-int v6, v15

    int-to-float v6, v6

    :goto_2
    add-float/2addr v1, v6

    aput v1, v4, v9

    goto :goto_4

    :cond_6
    move-object/from16 v18, v6

    iget-boolean v1, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_7

    move v1, v8

    goto :goto_3

    :cond_7
    neg-int v1, v8

    :goto_3
    add-int/2addr v12, v1

    :goto_4
    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eqz p1, :cond_8

    iget-object v6, v0, Lcom/zui/quickstep/views/RecentsView;->t0:Lcom/zui/launcher/util/IntSet;

    invoke-virtual {v6, v1}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result v6

    goto :goto_5

    :cond_8
    if-gt v10, v11, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_d

    add-int/2addr v10, v8

    invoke-virtual {v2, v9}, Lcom/zui/launcher/util/IntSet;->add(I)V

    iget-object v8, v0, Lcom/zui/quickstep/views/RecentsView;->t0:Lcom/zui/launcher/util/IntSet;

    invoke-virtual {v8, v1}, Lcom/zui/launcher/util/IntSet;->add(I)V

    add-int/lit8 v1, v9, -0x1

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v2, v1}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result v19

    if-nez v19, :cond_b

    if-ltz v1, :cond_b

    if-ne v1, v5, :cond_a

    move/from16 v20, v10

    move/from16 v19, v12

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v19

    move/from16 v20, v10

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v12

    iget v12, v0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    add-int/2addr v10, v12

    int-to-float v10, v10

    add-float/2addr v8, v10

    :goto_7
    add-int/lit8 v1, v1, -0x1

    move/from16 v12, v19

    move/from16 v10, v20

    goto :goto_6

    :cond_b
    move/from16 v20, v10

    move/from16 v19, v12

    iget-boolean v1, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    neg-float v8, v8

    :goto_8
    aget v1, v4, v9

    add-float/2addr v14, v8

    add-float/2addr v1, v14

    aput v1, v4, v9

    move-object/from16 v1, v18

    move/from16 v10, v20

    goto :goto_c

    :cond_d
    move/from16 v19, v12

    add-int/2addr v11, v8

    invoke-virtual {v3, v9}, Lcom/zui/launcher/util/IntSet;->add(I)V

    add-int/lit8 v1, v9, -0x1

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v3, v1}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result v12

    if-nez v12, :cond_f

    if-ltz v1, :cond_f

    if-ne v1, v5, :cond_e

    move/from16 v20, v11

    goto :goto_a

    :cond_e
    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v11

    iget v11, v0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    add-int/2addr v12, v11

    int-to-float v11, v12

    add-float/2addr v8, v11

    :goto_a
    add-int/lit8 v1, v1, -0x1

    move/from16 v11, v20

    goto :goto_9

    :cond_f
    move/from16 v20, v11

    iget-boolean v1, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    neg-float v8, v8

    :goto_b
    aget v1, v4, v9

    add-float/2addr v13, v8

    add-float/2addr v1, v13

    aput v1, v4, v9

    move-object/from16 v1, v18

    move/from16 v11, v20

    :goto_c
    if-ne v7, v1, :cond_12

    if-eqz v6, :cond_11

    move/from16 v16, v10

    goto :goto_d

    :cond_11
    move/from16 v16, v11

    :cond_12
    :goto_d
    move/from16 v12, v19

    :goto_e
    add-int/lit8 v9, v9, 0x1

    move-object v6, v1

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_13
    move/from16 v17, v1

    move-object v1, v6

    move/from16 v4, v17

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v4, :cond_14

    invoke-virtual {v0, v8}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_14
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result v7

    if-gt v10, v11, :cond_15

    invoke-virtual {v2, v6}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result v2

    goto :goto_10

    :cond_15
    invoke-virtual {v3, v6}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result v2

    :goto_10
    iget-boolean v2, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_16

    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    iget-boolean v2, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :cond_16
    if-ge v5, v4, :cond_17

    iget-boolean v3, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    :cond_17
    if-eqz v1, :cond_18

    sub-int v2, v2, v16

    iget-object v3, v0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_18

    iget-boolean v1, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    :cond_18
    iget v1, v0, Lcom/zui/quickstep/views/RecentsView;->s0:F

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->setGridProgress(F)V

    return-void
.end method

.method private U()V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/views/RecentsView;->createAllTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->runDismissAnimation(Lcom/zui/launcher/util/PendingAnimation;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(II)V

    return-void
.end method

.method private U0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    iget-boolean v1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setRotation(F)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/views/BaseDragLayer;->recreateControllers()V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->requestLayout()V

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method private V()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/zui/quickstep/views/RecentsView;->dismissTask(Lcom/zui/quickstep/views/TaskView;ZZ)V

    :cond_0
    return-void
.end method

.method private V0()V
    .locals 15

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->r0:F

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-boolean v5, p0, Lcom/zui/quickstep/views/RecentsView;->G:Z

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v4

    :goto_2
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v3

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    if-ltz v5, :cond_3

    invoke-direct {p0, v5, v4, v0}, Lcom/zui/quickstep/views/RecentsView;->Z(IIF)F

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_4

    invoke-direct {p0, v7, v4, v0}, Lcom/zui/quickstep/views/RecentsView;->Z(IIF)F

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v6

    :goto_4
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    if-nez v3, :cond_5

    const/4 v9, 0x1

    goto :goto_5

    :cond_5
    move v9, v8

    :goto_5
    if-ge v9, v2, :cond_6

    invoke-direct {p0, v9, v3, v1}, Lcom/zui/quickstep/views/RecentsView;->Z(IIF)F

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v6

    :goto_6
    move v9, v1

    move v1, v6

    move v10, v1

    goto :goto_9

    :cond_7
    add-int/lit8 v9, v3, -0x1

    if-ltz v9, :cond_8

    invoke-direct {p0, v9, v3, v1}, Lcom/zui/quickstep/views/RecentsView;->Z(IIF)F

    move-result v9

    goto :goto_7

    :cond_8
    move v9, v6

    :goto_7
    add-int/lit8 v10, v3, 0x1

    if-ge v10, v2, :cond_9

    invoke-direct {p0, v10, v3, v1}, Lcom/zui/quickstep/views/RecentsView;->Z(IIF)F

    move-result v1

    goto :goto_8

    :cond_9
    move v1, v6

    :goto_8
    move v10, v9

    move v9, v6

    :goto_9
    if-ge v8, v2, :cond_11

    if-ne v8, v4, :cond_a

    move v11, v6

    goto :goto_a

    :cond_a
    if-ge v8, v4, :cond_b

    move v11, v5

    goto :goto_a

    :cond_b
    move v11, v0

    :goto_a
    if-ne v8, v3, :cond_c

    move v12, v6

    goto :goto_b

    :cond_c
    if-eqz v7, :cond_d

    move v12, v9

    goto :goto_b

    :cond_d
    if-ge v8, v3, :cond_e

    move v12, v10

    goto :goto_b

    :cond_e
    move v12, v1

    :goto_b
    add-float/2addr v11, v12

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v13, v12, Lcom/zui/quickstep/views/TaskView;

    if-eqz v13, :cond_f

    move-object v13, v12

    check-cast v13, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v13}, Lcom/zui/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v13

    goto :goto_c

    :cond_f
    iget-object v13, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v13}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v13

    :goto_c
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v12, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    invoke-virtual {v12}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->get()Z

    move-result v12

    if-eqz v12, :cond_10

    iget-boolean v12, p0, Lcom/zui/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v12, :cond_10

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v12

    if-ne v8, v12, :cond_10

    iget-object v12, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object v12, v12, Lcom/zui/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    iput v11, v12, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->redrawLiveTile()V

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateCurveProperties()V

    return-void
.end method

.method private W()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->setScroll(F)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private W0()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->J:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/zui/quickstep/views/RecentsView;->K:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->K:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->reloadIfNeeded()V

    :cond_1
    return-void
.end method

.method private X()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->Q:Landroid/animation/LayoutTransition;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->Q:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->Q:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->Q:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->Q:Landroid/animation/LayoutTransition;

    new-instance v1, Lcom/zui/quickstep/views/RecentsView$f;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/RecentsView$f;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->Q:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private Y()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsModel;->onMultiWindowModeChanged()V

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    new-instance v1, Lcom/zui/quickstep/views/a;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/a;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->F:I

    :cond_0
    return-void
.end method

.method private Z(IIF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    const/4 v2, -0x1

    if-le p2, v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v2

    invoke-direct {p0, p2, v2, v1}, Lcom/zui/quickstep/views/RecentsView;->a0(IILandroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    invoke-direct {p0, p1, v2, v1}, Lcom/zui/quickstep/views/RecentsView;->a0(IILandroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v1}, Lcom/zui/quickstep/views/RecentsView;->a0(IILandroid/graphics/RectF;)V

    iget-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimarySize(Landroid/graphics/RectF;)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p2

    neg-float p2, p2

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    :cond_3
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    sub-float p2, p1, p2

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    :cond_5
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr p2, p0

    mul-float/2addr p2, p3

    return p2
.end method

.method private a0(IILandroid/graphics/RectF;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    instance-of v0, p1, Lcom/zui/quickstep/views/TaskView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getPersistentTranslationX()F

    move-result v0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getPersistentTranslationY()F

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    neg-int p2, p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p0, p2, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private b0(I)Lcom/zui/quickstep/views/TaskView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/zui/quickstep/views/TaskView;

    if-eqz p1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/zui/quickstep/views/TaskView;

    :cond_0
    return-object v1
.end method

.method private c0()Z
    .locals 1

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskModalness:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d0(Lcom/zui/quickstep/views/TaskView;II)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->M0()Z

    move-result v1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/zui/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1, p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->M0()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    add-int/2addr p0, v0

    if-lt v0, p2, :cond_0

    if-le v0, p3, :cond_1

    :cond_0
    if-lt p0, p2, :cond_2

    if-gt p0, p3, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic e0(Lcom/zui/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->P(I)V

    return-void
.end method

.method public static synthetic f0(Lcom/zui/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->D0(I)V

    return-void
.end method

.method private getColorTint()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->z0:F

    return p0
.end method

.method public static getForegroundScrimDimColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f040255

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    const/high16 v0, -0x1000000

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method private getUndampedOverScrollShift()F
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v2, v0, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v3, v0, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    check-cast v1, Lcom/zui/launcher/util/TranslateEdgeEffect;

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->p:[F

    invoke-virtual {v1, v4}, Lcom/zui/launcher/util/TranslateEdgeEffect;->getTranslationShift([F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->p:[F

    aget v1, v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v4, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    check-cast v0, Lcom/zui/launcher/util/TranslateEdgeEffect;

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->p:[F

    invoke-virtual {v0, v4}, Lcom/zui/launcher/util/TranslateEdgeEffect;->getTranslationShift([F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->p:[F

    aget v0, v0, v3

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_1
    int-to-float p0, v2

    mul-float/2addr v1, p0

    return v1
.end method

.method static synthetic n0(Lcom/zui/quickstep/views/TaskView;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic r0(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "RecentsView"

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/zui/quickstep/views/RecentsView;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->S:F

    return p0
.end method

.method private setColorTint(F)V
    .locals 3

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->z0:F

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->z0:F

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->A0:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/views/TaskView;->setColorTint(FI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setGridProgress(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->s0:F

    return-void
.end method

.method private setRunningTaskViewShowScreenshot(Z)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskView;->setShowScreenshot(Z)V

    :cond_0
    return-void
.end method

.method private setTaskModalness(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->V0()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/zui/quickstep/views/TaskView;

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->canRecentsActivityRotate()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result p0

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/zui/quickstep/views/RecentsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/views/RecentsView;->K:Z

    return p0
.end method

.method static synthetic u(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/util/PendingAnimation;)Lcom/zui/launcher/util/PendingAnimation;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    return-object p1
.end method

.method static synthetic v(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->R()V

    return-void
.end method

.method static synthetic w(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->C0()V

    return-void
.end method

.method static synthetic x(Lcom/zui/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setTaskModalness(F)V

    return-void
.end method

.method static synthetic y(Lcom/zui/quickstep/views/RecentsView;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->r0:F

    return p0
.end method

.method static synthetic z(Lcom/zui/quickstep/views/RecentsView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->r0:F

    return p1
.end method

.method static synthetic z0(Lcom/zui/launcher/util/PendingAnimation;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    return-void
.end method


# virtual methods
.method public synthetic A0(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/zui/quickstep/util/TransformParams;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TransformParams;->getTargetSet()Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->addReleaseCheck(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;)V

    :cond_0
    invoke-virtual {p1}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->setOrientationState(Lcom/zui/quickstep/util/RecentsOrientedState;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->setDp(Lcom/zui/launcher/DeviceProfile;)V

    iget-object p0, p1, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method public synthetic B0(Landroid/content/LocusId;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSideTaskLaunchCallback(Lcom/zui/launcher/util/RunnableList;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->D0:Lcom/zui/launcher/util/RunnableList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/RunnableList;

    invoke-direct {v0}, Lcom/zui/launcher/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->D0:Lcom/zui/launcher/util/RunnableList;

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->D0:Lcom/zui/launcher/util/RunnableList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/zui/quickstep/views/h2;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/views/h2;-><init>(Lcom/zui/launcher/util/RunnableList;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateUpRunningTaskIconScale()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->animateUpRunningTaskIconScale(F)V

    return-void
.end method

.method public animateUpRunningTaskIconScale(F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->I:Z

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskView;->setIconScaleAnimStartProgress(F)V

    :cond_0
    return-void
.end method

.method protected applyLoadPlan(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLoadPlan, mPendingAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zui/quickstep/views/m0;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/views/m0;-><init>(Lcom/zui/quickstep/views/RecentsView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLoadPlan, tasks size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLoadPlan, oldChildCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLoadPlan, getTaskViewCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->O0(I)V

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v4

    if-eq v4, v3, :cond_6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/ClearAllButton;->remove()V

    :cond_3
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v0, v3, :cond_4

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->z:Lcom/zui/launcher/util/ViewPool;

    invoke-virtual {v4}, Lcom/zui/launcher/util/ViewPool;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after add, view size:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after remove, view size:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    if-lez v3, :cond_6

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v4}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lcom/zui/quickstep/views/ClearAllButton;->show(Lcom/zui/launcher/views/BaseDragLayer;Landroid/view/View;)V

    :cond_6
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_9

    sub-int v4, v3, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zui/quickstep/views/TaskView;

    iget-object v6, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4, v5, v6}, Lcom/zui/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/quickstep/util/RecentsOrientedState;)V

    iget-boolean v6, p0, Lcom/zui/quickstep/views/RecentsView;->G:Z

    if-eqz v6, :cond_7

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v6, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    if-eq v5, v6, :cond_8

    :cond_7
    iget v5, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    invoke-virtual {v4, v5}, Lcom/zui/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    if-eq p1, v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    :cond_a
    iget p1, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    if-eq p1, v2, :cond_b

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    if-eq p1, v1, :cond_b

    iput v2, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    :cond_b
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->onTaskStackUpdated()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->S0()V

    return-void

    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->onTaskStackUpdated()V

    return-void
.end method

.method public clearIgnoreResetTask(I)V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    :cond_0
    return-void
.end method

.method protected computeMaxScroll()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->v0:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_2
    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->B:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_4
    invoke-super {p0}, Lcom/zui/launcher/PagedView;->computeMaxScroll()I

    move-result p0

    return p0
.end method

.method protected computeMinScroll()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->v0:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_4
    invoke-super {p0}, Lcom/zui/launcher/PagedView;->computeMinScroll()I

    move-result p0

    return p0
.end method

.method protected computeScrollHelper()Z
    .locals 4

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->computeScrollHelper()Z

    move-result v0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateCurveProperties()V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    iget v3, p0, Lcom/zui/quickstep/views/RecentsView;->r:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/zui/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v3, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEnabledActionButtonView()V

    :cond_3
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->setFlingingFast(Z)V

    return v0
.end method

.method public confirmSplitSelect(Lcom/zui/quickstep/views/TaskView;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->n0:Lcom/zui/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/SplitPlaceholderView;->getSplitController()Lcom/zui/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    new-instance v1, Lcom/zui/quickstep/views/o0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/o0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, p1, v1}, Lcom/zui/quickstep/util/SplitSelectStateController;->setSecondTaskId(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {p2}, Lcom/zui/quickstep/util/ClipAnimationHelper;->getScaleAndTranslation()Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p2

    iget p2, p2, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isFingerprintLockApp:Z

    if-eqz p0, :cond_1

    const p0, 0x3f7ae148    # 0.98f

    mul-float/2addr p2, p0

    :cond_1
    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getBaseRecentsView()Lcom/zui/quickstep/BaseRecentsView;

    move-result-object p0

    if-eqz p0, :cond_5

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    sget-object v1, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v2, v3, [F

    aput p2, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Lcom/zui/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-array p2, v3, [F

    aput v6, p2, v4

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getCurveScale()F

    move-result p1

    sub-float/2addr p2, p1

    mul-float/2addr v5, p2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    sget-object p2, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    iget-boolean v7, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_3

    neg-float v7, v5

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    aput v7, v3, v4

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sub-int p1, v2, v1

    add-int/2addr v2, p1

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p1

    if-ge v2, p1, :cond_5

    new-instance p1, Lcom/zui/launcher/anim/PropertyListBuilder;

    invoke-direct {p1}, Lcom/zui/launcher/anim/PropertyListBuilder;-><init>()V

    iget-boolean p2, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_4

    neg-float v5, v5

    :cond_4
    invoke-virtual {p1, v5}, Lcom/zui/launcher/anim/PropertyListBuilder;->translationX(F)Lcom/zui/launcher/anim/PropertyListBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/zui/launcher/anim/PropertyListBuilder;->scale(F)Lcom/zui/launcher/anim/PropertyListBuilder;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    return-object v0
.end method

.method public createAllTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v1, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/zui/quickstep/views/TaskView;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAppProcess(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_1
    invoke-direct {p0, v5, v0, p1, p2}, Lcom/zui/quickstep/views/RecentsView;->N(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    new-instance p1, Lcom/zui/quickstep/views/l0;

    invoke-direct {p1, p0, v3}, Lcom/zui/quickstep/views/l0;-><init>(Lcom/zui/quickstep/views/RecentsView;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public createAllUnlimitedTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v1, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/zui/quickstep/views/TaskView;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Lcom/zui/quickstep/util/RecentsViewUtils;->updateLockState(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-boolean v9, v8, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-nez v9, :cond_0

    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    :cond_0
    iget-boolean v7, v8, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-eqz v7, :cond_1

    sget-object v7, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v9, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-static {v6, p1, p2, v7, v0}, Lcom/zui/quickstep/views/RecentsView;->M(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v6, v0, p1, p2}, Lcom/zui/quickstep/views/RecentsView;->N(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    new-instance p1, Lcom/zui/quickstep/views/v;

    invoke-direct {p1, p0, v3}, Lcom/zui/quickstep/views/v;-><init>(Lcom/zui/quickstep/views/RecentsView;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    iget-object v5, v0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v7, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v7, v5}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v8

    if-nez v8, :cond_1

    return-object v7

    :cond_1
    new-array v9, v8, [I

    sget-object v10, Lcom/zui/launcher/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;

    invoke-virtual {v0, v9, v6, v10}, Lcom/zui/quickstep/views/RecentsView;->getPageScrolls([IZLcom/zui/launcher/PagedView$ComputePageScrollsLogic;)Z

    new-array v10, v8, [I

    new-instance v11, Lcom/zui/quickstep/views/x;

    invoke-direct {v11, v1}, Lcom/zui/quickstep/views/x;-><init>(Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {v0, v10, v6, v11}, Lcom/zui/quickstep/views/RecentsView;->getPageScrolls([IZLcom/zui/launcher/PagedView$ComputePageScrollsLogic;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v8, v12, :cond_2

    aget v13, v9, v12

    aget v14, v9, v6

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    goto :goto_0

    :cond_2
    move v13, v6

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v14

    move v15, v6

    move/from16 v16, v15

    :goto_1
    if-ge v15, v8, :cond_b

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v12, 0x0

    if-ne v6, v1, :cond_5

    if-eqz p2, :cond_3

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/zui/quickstep/views/RecentsView;->N(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_2
    move-object/from16 v26, v7

    move/from16 v25, v8

    :cond_4
    move-object/from16 v19, v9

    const/4 v12, 0x1

    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_5
    iget-boolean v12, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    move/from16 v25, v8

    if-eqz v12, :cond_6

    move v12, v13

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    iget v8, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    move-object/from16 v26, v7

    if-ne v8, v14, :cond_7

    const/16 v20, 0x1

    add-int/lit8 v7, v11, -0x1

    if-ne v8, v7, :cond_9

    iget-boolean v7, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, -0x1

    if-ne v14, v8, :cond_9

    iget-boolean v7, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_8

    :goto_4
    neg-int v7, v13

    goto :goto_5

    :cond_8
    move v7, v13

    :goto_5
    add-int/2addr v12, v7

    :cond_9
    aget v7, v10, v15

    aget v8, v9, v15

    sub-int/2addr v7, v8

    add-int/2addr v7, v12

    if-eqz v7, :cond_4

    sget-object v8, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v8}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v8

    if-eqz v8, :cond_a

    instance-of v8, v6, Lcom/zui/quickstep/views/TaskView;

    if-eqz v8, :cond_a

    new-instance v8, Lcom/zui/launcher/anim/SpringObjectAnimator;

    sget-object v20, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f000000    # 0.5f

    const v23, 0x44bb8000    # 1500.0f

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v16, v12, v17

    int-to-float v7, v7

    const/16 v16, 0x1

    aput v7, v12, v16

    move-object/from16 v18, v8

    move-object/from16 v19, v6

    move-object/from16 v24, v12

    invoke-direct/range {v18 .. v24}, Lcom/zui/launcher/anim/SpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-static {v8, v3, v4, v6, v5}, Lcom/zui/quickstep/views/RecentsView;->M(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    move-object/from16 v19, v9

    const/4 v12, 0x1

    const/16 v17, 0x0

    goto :goto_6

    :cond_a
    sget-object v8, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v19, v9

    const/4 v12, 0x1

    new-array v9, v12, [F

    int-to-float v7, v7

    const/16 v17, 0x0

    aput v7, v9, v17

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-static {v6, v3, v4, v7, v5}, Lcom/zui/quickstep/views/RecentsView;->M(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    :goto_6
    move/from16 v16, v12

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v19

    move/from16 v8, v25

    move-object/from16 v7, v26

    goto/16 :goto_1

    :cond_b
    move-object/from16 v26, v7

    if-eqz v16, :cond_c

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/zui/quickstep/views/k0;

    invoke-direct {v4, v0}, Lcom/zui/quickstep/views/k0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_c
    if-eqz p2, :cond_d

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    :cond_e
    move-object/from16 v3, v26

    iput-object v3, v0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    new-instance v4, Lcom/zui/quickstep/views/RecentsView$g;

    invoke-direct {v4, v0, v1, v2, v14}, Lcom/zui/quickstep/views/RecentsView$g;-><init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/quickstep/views/TaskView;ZI)V

    invoke-virtual {v3, v4}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createTaskLauncherAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 5

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/zui/launcher/util/PendingAnimation;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/zui/quickstep/views/n;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/zui/quickstep/views/n;-><init>(Lcom/zui/quickstep/views/RecentsView;ILcom/zui/quickstep/views/TaskView;[Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-direct {v0, v2}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;)V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->prepareAnimation(Lcom/zui/launcher/DeviceProfile;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/zui/quickstep/views/c;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/views/c;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    new-instance p3, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {p3, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    new-instance v0, Lcom/zui/quickstep/views/j0;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/quickstep/views/j0;-><init>(Lcom/zui/quickstep/views/RecentsView;Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {p3, v0}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createTaskMenuViewAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v1, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/zui/quickstep/views/RecentsView;->O(Lcom/zui/quickstep/views/TaskView;Landroid/animation/AnimatorSet;J)V

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    new-instance p2, Lcom/zui/quickstep/views/RecentsView$i;

    invoke-direct {p2, p0, p1}, Lcom/zui/quickstep/views/RecentsView$i;-><init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {v1, p2}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->c0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    :cond_0
    return-void
.end method

.method public dismissAllTasks(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->U()V

    const/4 p0, 0x1

    return p0
.end method

.method public dismissAllUnlimitedTasks(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->hasDismissTask()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v1, v2}, Lcom/zui/quickstep/views/RecentsView;->createAllUnlimitedTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->runDismissAnimation(Lcom/zui/launcher/util/PendingAnimation;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    const v1, 0x7f1205ae

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(II)V

    return-void
.end method

.method public dismissTask(Lcom/zui/quickstep/views/TaskView;ZZ)V
    .locals 6

    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->runDismissAnimation(Lcom/zui/launcher/util/PendingAnimation;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->getUndampedOverScrollShift()F

    move-result v2

    invoke-static {v2, v1}, Lcom/zui/launcher/touch/OverScroll;->dampedScroll(FI)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    sget-object v3, Lcom/zui/launcher/touch/PagedOrientationHandler;->CANVAS_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    int-to-float v4, v1

    invoke-interface {v2, p1, v3, v4}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->x0:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Lcom/zui/quickstep/views/RecentsView;->x0:I

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W()V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->x0:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->x0:I

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W()V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    sget-object p1, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/TransformParams;->getTargetSet()Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->redrawLiveTile()V

    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x16

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->V()V

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->V()V

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    invoke-direct {p0, v0, v3, p1}, Lcom/zui/quickstep/views/RecentsView;->N0(IIZ)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    invoke-direct {p0, p1, v3, v2}, Lcom/zui/quickstep/views/RecentsView;->N0(IIZ)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_7

    move v3, v4

    :cond_7
    invoke-direct {p0, p1, v3, v2}, Lcom/zui/quickstep/views/RecentsView;->N0(IIZ)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public finishRecentsAnimation(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public finishRecentsAnimation(ZZLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/SystemUiProxy;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/SystemUiProxy;->setSplitScreenMinimized(Z)V

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    sget-object p2, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p2}, Lcom/zui/quickstep/SystemUiProxy;->notifySwipeToHomeFinished()V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {p2, v1, v2}, Lcom/zui/quickstep/SystemUiProxy;->setShelfHeight(ZI)V

    :cond_4
    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    new-instance v1, Lcom/zui/quickstep/views/z;

    invoke-direct {v1, p0, p3}, Lcom/zui/quickstep/views/z;-><init>(Lcom/zui/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1, v1, v0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public synthetic g0(Lcom/zui/quickstep/views/TaskView;IILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getMenuView()Lcom/zui/quickstep/views/TaskMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->y0(I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p4, p2}, Lcom/zui/quickstep/views/RecentsView;->S(Lcom/zui/quickstep/views/TaskMenuView;FI)V

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    int-to-float p0, p2

    cmpl-float p2, p4, p0

    if-lez p2, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/TaskMenuView;->getOptionCount(Lcom/zui/quickstep/views/TaskView;)I

    move-result p2

    div-int/2addr p3, p2

    sub-float/2addr p4, p0

    float-to-int p0, p4

    div-int/2addr p0, p3

    const/4 p3, 0x0

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p3, p2}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/zui/quickstep/views/TaskMenuView;->tapItem(Lcom/zui/quickstep/views/TaskView;I)V

    :cond_1
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method protected getChildOffset(I)I
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lcom/zui/quickstep/views/TaskView;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    check-cast p1, Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->M0()Z

    move-result v1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/zui/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result p0

    add-float/2addr v0, p0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/zui/quickstep/views/ClearAllButton;

    :goto_0
    return v0
.end method

.method protected getChildVisibleSize(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->b0(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->getChildVisibleSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->getChildVisibleSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->M0()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getClearAllButton()Lcom/zui/quickstep/views/ClearAllButton;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    return-object p0
.end method

.method public getClearAllScroll()I
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public getContentAlpha()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    return p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCurrentPageTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->b0(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getEventDispatcher(F)Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    goto :goto_0

    :cond_0
    neg-float v1, p1

    :goto_0
    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/zui/quickstep/views/l;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/l;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/zui/quickstep/views/c0;

    invoke-direct {v0, p0, p1, v1}, Lcom/zui/quickstep/views/c0;-><init>(Lcom/zui/quickstep/views/RecentsView;FF)V

    return-object v0
.end method

.method public getEventDispatcher(Lcom/zui/launcher/graphics/RotationMode;)Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/graphics/RotationMode;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget p1, p1, Lcom/zui/launcher/graphics/RotationMode;->surfaceRotation:F

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance v1, Lcom/zui/quickstep/views/n0;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/quickstep/views/n0;-><init>(Lcom/zui/quickstep/views/RecentsView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-object v1

    :cond_1
    new-instance p1, Lcom/zui/quickstep/views/q0;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/q0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    return-object p1
.end method

.method public getFocusedTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->mFocusedTaskId:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getGridTranslationSecondary(I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->b0(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getGridTranslationX()F

    move-result v0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getGridTranslationY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p0

    return p0
.end method

.method public getLayoutDirection()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMaxScaleForFullScreen()F
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->o:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public getNextTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getOverScrollShift()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->x0:I

    return p0
.end method

.method protected getPageScrolls([IZLcom/zui/launcher/PagedView$ComputePageScrollsLogic;)Z
    .locals 8

    array-length v0, p1

    new-array v1, v0, [I

    invoke-super {p0, v1, p2, p3}, Lcom/zui/launcher/PagedView;->getPageScrolls([IZLcom/zui/launcher/PagedView$ComputePageScrollsLogic;)Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->M0()Z

    move-result p3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget v3, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskWidth:I

    iget v4, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskHeight:I

    invoke-interface {p2, v3, v4}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-interface {p2, v3}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    instance-of v7, v5, Lcom/zui/quickstep/views/TaskView;

    if-eqz v7, :cond_1

    check-cast v5, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v5, p3, v2}, Lcom/zui/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v6

    goto :goto_1

    :cond_1
    instance-of v5, v5, Lcom/zui/quickstep/views/ClearAllButton;

    :goto_1
    if-ge v3, v0, :cond_2

    array-length v5, p1

    if-ge v3, v5, :cond_2

    aget v5, v1, v3

    float-to-int v6, v6

    add-int/2addr v5, v6

    aget v6, p1, v3

    if-eq v6, v5, :cond_2

    aput v5, p1, v3

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public getPagedOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    return-object p0
.end method

.method public getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    return-object p0
.end method

.method public getRecentsAnimationController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-object p0
.end method

.method public getRemoteTargetHandles()[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object p0
.end method

.method public getRunningTaskIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRunningTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getScrollOffset()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result p0

    return p0
.end method

.method public getScrollOffset(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getOverScrollShift()I

    move-result v0

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->r0:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->getUndampedOverScrollShift()F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p1

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p1, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public getScroller()Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method public getSplitPlaceholder()Lcom/zui/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->B0:Lcom/zui/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method public getTaskOverlayFactory()Lcom/zui/quickstep/TaskOverlayFactory;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u0:Lcom/zui/quickstep/TaskOverlayFactory;

    return-object p0
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskSize(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected abstract getTaskSize(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V
.end method

.method public getTaskView(I)Lcom/zui/quickstep/views/TaskView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zui/quickstep/views/TaskView;->hasTaskId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move-object p0, p1

    check-cast p0, Lcom/zui/quickstep/views/TaskView;

    :goto_0
    return-object p0
.end method

.method public getTaskViewCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getTaskViewNearestToCenterOfScreen()Lcom/zui/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->b0(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getTempClipAnimationHelper()Lcom/zui/quickstep/util/ClipAnimationHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mTempClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    return-object p0
.end method

.method public getTranlateYWhenClick()J
    .locals 2

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->f0:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getVisibility()I
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getWorkspaceWindowBlur()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->g0:I

    return p0
.end method

.method public synthetic h0(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/views/RecentsView;->setLayoutRotation(II)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/views/BaseDragLayer;->recreateControllers()V

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->K0()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hasDismissTask()Z
    .locals 5

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/quickstep/views/TaskView;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v3}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/quickstep/util/RecentsViewUtils;->updateLockState(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public synthetic i0(Ljava/util/ArrayList;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    return-void
.end method

.method public indexOfChild(Lcom/zui/quickstep/views/TaskView;)I
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public init(Lcom/zui/quickstep/views/OverviewActionsView;Lcom/zui/quickstep/views/SplitPlaceholderView;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->w0:Lcom/zui/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/zui/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->n0:Lcom/zui/quickstep/views/SplitPlaceholderView;

    return-void
.end method

.method protected initEdgeEffect()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/TranslateEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/TranslateEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    new-instance v0, Lcom/zui/launcher/util/TranslateEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/TranslateEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    return-void
.end method

.method public initiateSplitSelect(Lcom/zui/quickstep/views/TaskView;I)V
    .locals 5

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->o0:Lcom/zui/quickstep/views/TaskView;

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->n0:Lcom/zui/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/SplitPlaceholderView;->getSplitController()Lcom/zui/quickstep/util/SplitSelectStateController;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->B0:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/zui/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Lcom/android/systemui/shared/recents/model/Task;ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result p2

    iput p2, p0, Lcom/zui/quickstep/views/RecentsView;->y0:I

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->n0:Lcom/zui/quickstep/views/SplitPlaceholderView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getIconView()Lcom/zui/quickstep/views/IconView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/SplitPlaceholderView;->setIcon(Lcom/zui/quickstep/views/IconView;)V

    return-void
.end method

.method public isClearAllHidden()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {p0}, Landroid/widget/Button;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPageOrderFlipped()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    return p0
.end method

.method public isTaskIconsScaledDown(Lcom/zui/quickstep/views/TaskView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/quickstep/views/RecentsView;->d0(Lcom/zui/quickstep/views/TaskView;II)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic j0(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->updateTaskViews(I)Z

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->reloadIfNeeded()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->onTaskDisplayedIdChanged()V

    :goto_0
    return-void
.end method

.method public synthetic k0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->J0()V

    return-void
.end method

.method public synthetic l0(Ljava/util/ArrayList;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 1

    iget-boolean p2, p2, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRecentTasks()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->G0()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRunningAppProcesses(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method

.method public loadVisibleTaskData(I)V
    .locals 10

    iget-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->J:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/zui/quickstep/views/RecentsView;->F:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v1, p1, -0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v3, v0, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v4}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/quickstep/util/RecentsViewUtils;->updateLockState(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v4}, Lcom/zui/quickstep/views/TaskView;->updateLockView()V

    const/4 v6, 0x1

    if-gt v1, v3, :cond_1

    if-gt v3, p1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/zui/quickstep/views/RecentsView;->H:Lcom/android/systemui/shared/recents/model/Task;

    if-ne v5, v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    iget-object v9, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4, v6}, Lcom/zui/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_3
    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v2}, Lcom/zui/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_5
    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public synthetic m0(Ljava/util/ArrayList;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 4

    iget-boolean p2, p2, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lcom/zui/quickstep/util/RecentsViewUtils;->updateLockState(Lcom/android/systemui/shared/recents/model/Task;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissAllUnlimitedTasks, task==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsView"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTask, task==="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAppProcess(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->G0()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->hasDockedTask(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRunningAppProcesses(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_2
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->Y()V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method

.method protected maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->Z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->a0:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->Y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->Y:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->a0:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->notifyPageSwitchListener(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->S0()V

    return-void
.end method

.method public synthetic o0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateCurveProperties()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W0()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->addCallback(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->c0:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/BaseActivity;->addMultiWindowModeChangedListener(Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->E:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    new-instance v0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsModel;->addThumbnailChangeListener(Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->y:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->addOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->E0()V

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/views/h0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/h0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->addRotationChangedCallback(Ljava/util/function/Consumer;)V

    const-string v0, "RecentsView"

    const-string v1, "onAttachedToWindow, addcallback--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zui_dp_display_pc_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->i0:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->initListeners()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->setActivityConfiguration(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->U0()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->K0()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W0()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->removeCallback(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->c0:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->E:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsModel;->removeThumbnailChangeListener(Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->y:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->removeOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->P0()V

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->removeRotationChangedCallback()V

    const-string v0, "RecentsView"

    const-string v1, "onDetachedFromWindow, removecallback--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->i0:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->destroyListeners()V

    return-void
.end method

.method public onDigitalWellbeingToastShown()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->A:Z

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionTip(II)V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    const/16 p3, 0x11

    if-eq p2, p3, :cond_1

    const/16 p3, 0x42

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onGestureAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->U0()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->setEnableFreeScroll(Z)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->animateUpRunningTaskIconScale()V

    return-void
.end method

.method public onGestureAnimationStart(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->U0()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->showCurrentTask(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setEnableFreeScroll(Z)V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskIconScaledDown(Z)V

    return-void
.end method

.method public onHighResLoadingStateChanged(Z)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onIdpChanged(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsModel;->getIconCache()Lcom/zui/quickstep/TaskIconCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/TaskIconCache;->clear()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->reset()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getVisibleChildrenRange()[I

    move-result-object p0

    aget v3, p0, v2

    sub-int v3, v0, v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    aget p0, p0, v1

    sub-int p0, v0, p0

    sub-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/zui/launcher/PagedView;->onLayout(ZIIII)V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->R0(Z)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p3}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget-object p4, p0, Lcom/zui/quickstep/views/RecentsView;->o:Landroid/graphics/PointF;

    invoke-virtual {p1, p2, p3, p4}, Lcom/zui/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/PointF;)F

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->o:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->o:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setTaskModalness(F)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->V0()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateEnabledActionButtonView()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->c0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected onNotSnappingToPageInFreeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    if-le v0, v1, :cond_4

    iget v1, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v1

    iget-boolean v3, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v3

    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    rsub-int v0, v0, 0x10e

    if-lez v0, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->extendDuration(I)V

    :cond_4
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onPageBeginTransition()V

    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onPageEndTransition()V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    :cond_0
    return-void
.end method

.method public onRecentsAnimationComplete()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setCurrentTask(I)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W()V

    return-void
.end method

.method public onSwipeUpAnimationSuccess()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->b0:Lcom/zui/quickstep/views/LiveTileOverlay;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/LiveTileOverlay;->cancelIconAnimation()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->animateUpRunningTaskIconScale(F)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    return-void
.end method

.method public onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getIconView()Lcom/zui/quickstep/views/IconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onTaskLaunchAnimationUpdate(FLcom/zui/quickstep/views/TaskView;)V
    .locals 0

    return-void
.end method

.method protected onTaskLaunched(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    :cond_0
    return-void
.end method

.method public onTaskStackChangedInternal()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->onTaskStackChangedInternal()V

    :cond_0
    return-void
.end method

.method protected onTaskStackUpdated()V
    .locals 0

    return-void
.end method

.method public onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->K:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/zui/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Lcom/zui/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_a

    if-eq v4, v2, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v0, 0x3

    if-eq v4, v0, :cond_3

    goto/16 :goto_7

    :cond_3
    iput-boolean v1, p0, Lcom/zui/quickstep/views/RecentsView;->L:Z

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/zui/quickstep/views/RecentsView;->d0:Z

    goto/16 :goto_7

    :cond_5
    iget-boolean v4, p0, Lcom/zui/quickstep/views/RecentsView;->L:Z

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/zui/quickstep/views/RecentsView;->N:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    iget v4, p0, Lcom/zui/quickstep/views/RecentsView;->O:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    invoke-static {v0, v3}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v3, p0, Lcom/zui/quickstep/views/RecentsView;->M:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    :cond_6
    iput-boolean v1, p0, Lcom/zui/quickstep/views/RecentsView;->L:Z

    goto/16 :goto_7

    :cond_7
    iget-boolean v4, p0, Lcom/zui/quickstep/views/RecentsView;->L:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    :cond_8
    iput-boolean v1, p0, Lcom/zui/quickstep/views/RecentsView;->L:Z

    iget-boolean v4, p0, Lcom/zui/quickstep/views/RecentsView;->d0:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v4}, Landroid/widget/Button;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->v:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/zui/quickstep/views/RecentsView;->Z:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_b

    :goto_3
    iput-boolean v2, p0, Lcom/zui/quickstep/views/RecentsView;->L:Z

    goto :goto_6

    :cond_b
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->Q0()V

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v4}, Landroid/widget/Button;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->v:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    goto :goto_4

    :cond_c
    move v4, v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_d

    move v5, v2

    goto :goto_5

    :cond_d
    move v5, v1

    :goto_5
    if-eqz v4, :cond_e

    iput-boolean v2, p0, Lcom/zui/quickstep/views/RecentsView;->d0:Z

    iget-object v6, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v6, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_e
    if-nez v4, :cond_f

    if-nez v5, :cond_f

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->w:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_3

    :cond_f
    :goto_6
    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->N:I

    iput v3, p0, Lcom/zui/quickstep/views/RecentsView;->O:I

    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->shouldStealTouchFromSiblingsBelow(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_11
    move v1, v2

    :cond_12
    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onViewAdded(Landroid/view/View;)V

    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "view added, child:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", stack:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onViewRemoved(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view removed, child:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    check-cast p1, Lcom/zui/quickstep/views/TaskView;

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->z:Lcom/zui/launcher/util/ViewPool;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/ViewPool;->recycle(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/ClearAllButton;->remove()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    sget-boolean p1, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->onTaskStackChangedInternal()V

    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W0()V

    return-void
.end method

.method public synthetic p0(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 2

    iget-boolean v0, p3, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/quickstep/views/g0;

    invoke-direct {v0, p1, p2}, Lcom/zui/quickstep/views/g0;-><init>(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(ZLjava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    iget p3, p3, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->logAction:I

    const/4 v1, 0x2

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result p2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {p1}, Lcom/zui/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object p1

    invoke-virtual {v0, p3, v1, p2, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IIILcom/zui/launcher/util/ComponentKey;)V

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->P:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method

.method public performHapticFeedback(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    move-result p0

    return p0
.end method

.method public synthetic q0(ILcom/zui/quickstep/views/TaskView;[ZLandroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const v2, 0x3f59999a    # 0.85f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/views/RecentsView;->onTaskLaunchAnimationUpdate(FLcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-ltz p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    aget-boolean p4, p3, v2

    if-eq p1, p4, :cond_2

    aput-boolean p1, p3, v2

    invoke-virtual {p0, p2, p2}, Lcom/zui/quickstep/views/RecentsView;->performHapticFeedback(II)Z

    :cond_2
    return-void
.end method

.method public redrawLiveTile()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TransformParams;->getTargetSet()Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileParams:Lcom/zui/quickstep/util/TransformParams;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->apply(Lcom/zui/quickstep/util/TransformParams;)V

    :cond_0
    return-void
.end method

.method public reloadIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->F:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->isTaskListValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    new-instance v1, Lcom/zui/quickstep/views/a;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/a;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->F:I

    :cond_0
    return-void
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->G:Z

    if-eqz v0, :cond_0

    const-string p0, "RecentsView"

    const-string v0, "reset when gesture is running, break."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setCurrentTask(I)V

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    iput v0, p0, Lcom/zui/quickstep/views/RecentsView;->F:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->O0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->A:Z

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v1}, Lcom/zui/launcher/BaseActivity;->isStatusBarDark()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v3}, Lcom/zui/launcher/BaseActivity;->isNavigationBarDark()Z

    move-result v3

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v3}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->U0()V

    :cond_2
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->F0()V

    return-void
.end method

.method public resetModalVisuals()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/zui/quickstep/views/TaskView;

    return-void
.end method

.method public resetTaskVisuals()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/views/TaskView;

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->resetVisualProperties()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->G:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    :cond_2
    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->Q()V

    :cond_3
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateCurveProperties()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setColorTint(F)V

    return-void
.end method

.method public runActionOnRemoteHandles(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected runDismissAnimation(Lcom/zui/launcher/util/PendingAnimation;)V
    .locals 2

    iget-object p0, p1, Lcom/zui/launcher/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    new-instance v0, Lcom/zui/quickstep/views/m;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/views/m;-><init>(Lcom/zui/launcher/util/PendingAnimation;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->start()V

    return-void
.end method

.method public synthetic s0(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    return-void
.end method

.method public setCleanupAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setClipAnimationHelper(Lcom/zui/quickstep/util/ClipAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContentAlpha, alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zui/quickstep/views/RecentsView;->G:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v4, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-virtual {v2, p1}, Lcom/zui/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/views/ClearAllButton;->setContentAlpha(F)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->W:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->D:Z

    if-nez p1, :cond_5

    const/16 p1, 0x8

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public setCurrentTask(I)V
    .locals 2

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskIconScaledDown(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    :cond_1
    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    return-void
.end method

.method public setDisallowScrollToClearAll(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->B:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->B:Z

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->updateMinAndMaxScrollX()V

    :cond_0
    return-void
.end method

.method public setEnableDrawingLiveTile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    return-void
.end method

.method public setFreezeViewVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->D:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->D:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 3

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->S:F

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->S:F

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/views/TaskView;->setFullscreenProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIgnoreResetTask(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->T:I

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskSize(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInsets, insets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecentsView"

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInsets, mTempRect:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskWidth:I

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskHeight:I

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/zui/quickstep/views/RecentsView;->t:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v2, v1, v4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/ClearAllButton;->updatePosition()V

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->F0()V

    return-void
.end method

.method public setLayoutRotation(II)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/zui/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->U0()V

    :cond_0
    return-void
.end method

.method public setLiveTileOverlay(Lcom/zui/quickstep/views/LiveTileOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->b0:Lcom/zui/quickstep/views/LiveTileOverlay;

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->C:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->C:Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->S0()V

    :cond_0
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->J:Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->W0()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->H:Lcom/android/systemui/shared/recents/model/Task;

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->updateLocusId()V

    return-void
.end method

.method public setRecentsAnimationTargets(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->B0:Lcom/zui/quickstep/util/SplitSelectStateController;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/SplitSelectStateController;->setRecentsAnimationRunning(Z)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p2, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/zui/quickstep/RemoteTargetGluer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zui/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-virtual {p1}, Lcom/zui/quickstep/RemoteTargetGluer;->getStagedSplitBounds()Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->C0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    new-instance p1, Lcom/zui/quickstep/views/p0;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/p0;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    instance-of p2, p1, Lcom/zui/quickstep/views/GroupedTaskView;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/zui/quickstep/views/GroupedTaskView;

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->C0:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/GroupedTaskView;->updateSplitBoundsConfig(Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRecentsAnimationWrapper(Lcom/zui/quickstep/RecentsAnimationWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    return-void
.end method

.method public setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;
    .locals 8

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    if-eqz p1, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public setRunningTaskHidden(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->G:Z

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    :goto_0
    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_1
    return-void
.end method

.method public setRunningTaskIconScaledDown(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->I:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsView;->I:Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->Q()V

    :cond_0
    return-void
.end method

.method public setSwipeDownShouldLaunchApp(Z)V
    .locals 0

    return-void
.end method

.method protected setTaskViewsPrimarySplitTranslation(F)V
    .locals 4

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getPrimarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setTaskViewsResistanceTranslation(F)V
    .locals 4

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskViewsSecondaryTranslation:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTaskResistanceTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mLiveTileTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    iput p1, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method protected setTaskViewsSecondarySplitTranslation(F)V
    .locals 4

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->mTaskViewsSecondarySplitTranslation:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getSecondarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->H0()V

    :cond_1
    return-void
.end method

.method public setWorkspaceWindowBlur(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsView;->g0:I

    return-void
.end method

.method protected shouldAddDummyTaskView(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/zui/quickstep/RecentsModel;->runningTaskIsLauncher()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldFlingScroll(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldFlingScroll, velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVelocityLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/zui/launcher/PagedView;->mEasyFlingThresholdVelocity:I

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method protected shouldStealTouchFromSiblingsBelow(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldSwipeDownLaunchApp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract shouldUseMultiWindowTaskSizeStrategy()Z
.end method

.method public showAsGrid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/views/RecentsView;->l0:Z

    return p0
.end method

.method public showCurrentTask(I)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/zui/quickstep/views/RecentsView;->shouldAddDummyTaskView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/zui/quickstep/views/RecentsView;->z:Lcom/zui/launcher/util/ViewPool;

    invoke-virtual {v1}, Lcom/zui/launcher/util/ViewPool;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    iget-object v3, v0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v3}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/zui/quickstep/views/ClearAllButton;->show(Lcom/zui/launcher/views/BaseDragLayer;Landroid/view/View;)V

    new-instance v2, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v3, v12

    move/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    new-instance v13, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v13}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    const/4 v14, 0x0

    new-instance v15, Landroid/content/ComponentName;

    const-string v4, ""

    invoke-direct {v15, v4, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    const-string v8, ""

    const-string v9, ""

    move-object v4, v2

    move-object v5, v12

    move v12, v3

    invoke-direct/range {v4 .. v16}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;IIZLandroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Z)V

    iput-object v2, v0, Lcom/zui/quickstep/views/RecentsView;->H:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v2, v3}, Lcom/zui/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/quickstep/util/RecentsOrientedState;)V

    :cond_0
    iget-boolean v1, v0, Lcom/zui/quickstep/views/RecentsView;->G:Z

    invoke-virtual/range {p0 .. p1}, Lcom/zui/quickstep/views/RecentsView;->setCurrentTask(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    const-string v1, "show current task, applyLoadPlan."

    invoke-static {v1}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    new-instance v2, Lcom/zui/quickstep/views/a;

    invoke-direct {v2, v0}, Lcom/zui/quickstep/views/a;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result v1

    iput v1, v0, Lcom/zui/quickstep/views/RecentsView;->F:I

    return-void
.end method

.method public showHintIfNeeded(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.hint_view_visible_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x3

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v1}, Lcom/zui/launcher/BaseActivity;->getViewCache()Lcom/zui/launcher/util/ViewCache;

    move-result-object v1

    const v3, 0x7f0d0149

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v4}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/zui/launcher/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/views/HintView;

    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    :cond_1
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v3}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v1, v3}, Lcom/zui/quickstep/views/HintView;->setActivity(Lcom/zui/launcher/BaseActivity;)V

    :cond_2
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView;->e0:Lcom/zui/quickstep/views/HintView;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->L0(I)V

    :cond_4
    return-void
.end method

.method public showNextTask()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getNextTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract startHome()V
.end method

.method public switchToScreenshot(Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/TaskView;->setShowScreenshot(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->refresh()V

    :goto_0
    invoke-static {p0, p2}, Lcom/zui/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public switchToScreenshot(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mRecentsAnimationTargets:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/zui/quickstep/views/RecentsView;->mRunningTaskId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/views/RecentsView;->switchToScreenshot(Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic t0(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public synthetic u0(FFLandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->isLayoutNaturalToLauncher()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1, p3}, Lcom/zui/quickstep/util/RecentsOrientedState;->flipVertical(Landroid/view/MotionEvent;)V

    invoke-super {p0, p3}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0, p3}, Lcom/zui/quickstep/util/RecentsOrientedState;->flipVertical(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    neg-float p2, p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->transformEvent(FLandroid/view/MotionEvent;Z)V

    invoke-super {p0, p3}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->mOrientationState:Lcom/zui/quickstep/util/RecentsOrientedState;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->transformEvent(FLandroid/view/MotionEvent;Z)V

    return-void
.end method

.method public updateCurveProperties()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateEmptyMessage()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->X:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->X:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iget-boolean v3, p0, Lcom/zui/quickstep/views/RecentsView;->Z:Z

    if-ne v0, v3, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsView;->V:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    :cond_5
    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->Z:Z

    invoke-direct {p0, v1}, Lcom/zui/quickstep/views/RecentsView;->R0(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->Z:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->u:Lcom/zui/quickstep/views/ClearAllButton;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/zui/quickstep/views/ClearAllButton;->remove()V

    :cond_6
    return-void
.end method

.method public updateEnabledActionButtonView()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    add-int/lit8 v2, v0, -0x2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-gt v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/zui/quickstep/views/RecentsView;->b0(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->updateActionButtonView()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLiveTileIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->b0:Lcom/zui/quickstep/views/LiveTileOverlay;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/LiveTileOverlay;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public updateLocusId()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->J:Z

    const-string v1, "Overview"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|ENABLED"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|DISABLED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/quickstep/views/o;

    invoke-direct {v2, p0, v1}, Lcom/zui/quickstep/views/o;-><init>(Lcom/zui/quickstep/views/RecentsView;Landroid/content/LocusId;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateScrollSynchronously()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zui/quickstep/views/RecentsView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->updateMinAndMaxScrollX()V

    return-void
.end method

.method public updateTaskViews(I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    if-eq v4, p1, :cond_0

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->isOnHdmiDevice(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->updateTaskKeyAndView()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    instance-of v1, p1, Lcom/zui/quickstep/views/TaskView;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setCurrentTask(I)V

    :cond_2
    return v0
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/zui/quickstep/views/TaskView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    :cond_0
    return-object p0
.end method

.method public synthetic v0(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-super {p0, p3}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView;->Z:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->U:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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

.method public synthetic w0(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public synthetic x0(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView;->R:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->updateTaskViews(I)Z

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->reloadIfNeeded()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView;->s:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->onTaskDisplayedIdChanged()V

    :goto_0
    return-void
.end method

.method public synthetic y0(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsView;->Y()V

    :cond_0
    return-void
.end method
