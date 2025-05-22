.class public Lcom/zui/launcher/Workspace;
.super Lcom/zui/launcher/PagedView;
.source ""

# interfaces
.implements Lcom/zui/launcher/DropTarget;
.implements Lcom/zui/launcher/DragSource;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/LauncherStateManager$StateHandler;
.implements Lcom/zui/launcher/WorkspaceLayoutManager;
.implements Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/Workspace$PageSwitchListener;,
        Lcom/zui/launcher/Workspace$z;,
        Lcom/zui/launcher/Workspace$w;,
        Lcom/zui/launcher/Workspace$ItemOperator;,
        Lcom/zui/launcher/Workspace$y;,
        Lcom/zui/launcher/Workspace$x;,
        Lcom/zui/launcher/Workspace$a0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/PagedView<",
        "Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;",
        ">;",
        "Lcom/zui/launcher/DropTarget;",
        "Lcom/zui/launcher/DragSource;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/zui/launcher/dragndrop/DragController$DragListener;",
        "Lcom/zui/launcher/Insettable;",
        "Lcom/zui/launcher/LauncherStateManager$StateHandler;",
        "Lcom/zui/launcher/WorkspaceLayoutManager;",
        "Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;"
    }
.end annotation


# static fields
.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field public static final EVENT_TYPE_NONE:I = 0x0

.field public static final EVENT_TYPE_SINGE_PROCESS:I = 0x1

.field public static final EVENT_TYPE_TWO_PROCESS:I = 0x2

.field public static final MAP_NO_RECURSE:Z = false

.field public static final MAP_RECURSE:Z = true

.field public static final REORDER_TIMEOUT:I = 0x28a

.field private static Z0:F = 3.4028235E38f

.field private static final a1:[Ljava/lang/String;

.field private static b1:F


# instance fields
.field private A:Lcom/zui/launcher/CellLayout;

.field private A0:Lcom/zui/launcher/LauncherRootView;

.field private B:Lcom/zui/launcher/CellLayout;

.field private B0:Lcom/zui/launcher/GlobalSearchView;

.field final C:Lcom/zui/launcher/Launcher;

.field private C0:Z

.field D:Lcom/zui/launcher/dragndrop/DragController;

.field private D0:Z

.field private final E:Landroid/graphics/Rect;

.field private E0:Z

.field private final F:[I

.field private F0:F

.field private final G:[F

.field private G0:F

.field H:[F

.field private H0:Z

.field private final I:[F

.field private I0:Z

.field private J:Lcom/zui/launcher/dragndrop/SpringLoadedDragController;

.field private J0:F

.field private K:Z

.field private K0:F

.field L:Z

.field private L0:F

.field private M:Z

.field private M0:F

.field private N:Lcom/zui/launcher/graphics/DragPreviewProvider;

.field private N0:F

.field private O:Z

.field private O0:F

.field final P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

.field private P0:F

.field private Q:Z

.field private Q0:F

.field private final R:Lcom/zui/launcher/Alarm;

.field private R0:F

.field private final S:Lcom/zui/launcher/Alarm;

.field private S0:F

.field private T:Lcom/zui/launcher/folder/PreviewBackground;

.field T0:Z

.field private U:Lcom/zui/launcher/folder/FolderIcon;

.field private U0:I

.field private V:Z

.field private V0:Lcom/zui/launcher/ReorderActor;

.field private W:Z

.field private W0:Lcom/zui/launcher/Workspace$PageSwitchListener;

.field private X:F

.field private X0:Lcom/zui/launcher/Alarm;

.field private Y:F

.field private Y0:Lcom/zui/launcher/OnAlarmListener;

.field private Z:F

.field private a0:I

.field b0:I

.field c0:I

.field private d0:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final e0:Lcom/zui/launcher/util/IntArray;

.field private f0:F

.field private g0:F

.field h0:Lcom/zui/launcher/LauncherOverlay;

.field i0:Z

.field private j0:Ljava/lang/Runnable;

.field private k0:Z

.field private l0:I

.field private m0:F

.field public mDownWidget:Z

.field public mEventType:I

.field protected mTouchSlopSquare:I

.field protected mUpDownTouchSlopSquare:I

.field private n0:I

.field private o:Landroid/animation/LayoutTransition;

.field private o0:I

.field final p:Landroid/app/WallpaperManager;

.field private final p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

.field private q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

.field private q0:Lcom/zui/launcher/util/OverlayEdgeEffect;

.field final r:Lcom/zui/launcher/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private r0:Z

.field final s:Lcom/zui/launcher/util/IntArray;

.field private s0:Z

.field t:Ljava/lang/Runnable;

.field private t0:I

.field u:Z

.field private u0:I

.field private v:Lcom/zui/launcher/CellLayout$CellInfo;

.field private v0:Z

.field w:[I

.field private w0:Landroid/content/Intent;

.field private x:I

.field private x0:Ljava/lang/Runnable;

.field private y:I

.field private y0:F

.field z:Lcom/zui/launcher/CellLayout;

.field private z0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "window_animation_scale"

    const-string v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Workspace;->a1:[Ljava/lang/String;

    const-wide v0, 0x3feeb7c166fdfe3aL    # 0.9599310885968813

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/zui/launcher/Workspace;->b1:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {p2}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    new-instance p2, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p2}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->u:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/Workspace;->x:I

    iput v0, p0, Lcom/zui/launcher/Workspace;->y:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->A:Lcom/zui/launcher/CellLayout;

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->E:Landroid/graphics/Rect;

    new-array v2, p3, [I

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->F:[I

    new-array v2, p3, [F

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->G:[F

    new-array v2, p3, [F

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->H:[F

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/zui/launcher/Workspace;->I:[F

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->K:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/zui/launcher/Workspace;->L:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->M:Z

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    new-instance v2, Lcom/zui/launcher/Alarm;

    invoke-direct {v2}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->R:Lcom/zui/launcher/Alarm;

    new-instance v2, Lcom/zui/launcher/Alarm;

    invoke-direct {v2}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->S:Lcom/zui/launcher/Alarm;

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->U:Lcom/zui/launcher/folder/FolderIcon;

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->V:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->W:Z

    iput p2, p0, Lcom/zui/launcher/Workspace;->a0:I

    iput v0, p0, Lcom/zui/launcher/Workspace;->b0:I

    iput v0, p0, Lcom/zui/launcher/Workspace;->c0:I

    new-instance v1, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v1}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->e0:Lcom/zui/launcher/util/IntArray;

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->i0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->k0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->r0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->s0:Z

    iput v0, p0, Lcom/zui/launcher/Workspace;->t0:I

    new-instance v0, Lcom/zui/launcher/Workspace$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Workspace$a;-><init>(Lcom/zui/launcher/Workspace;)V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->x0:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->mDownWidget:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/zui/launcher/Workspace;->y0:F

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->C0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->D0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->E0:Z

    iput p2, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->H0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->I0:Z

    new-instance v0, Lcom/zui/launcher/Workspace$l;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Workspace$l;-><init>(Lcom/zui/launcher/Workspace;)V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->W0:Lcom/zui/launcher/Workspace$PageSwitchListener;

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->X0:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/launcher/Workspace$m;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Workspace$m;-><init>(Lcom/zui/launcher/Workspace;)V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->Y0:Lcom/zui/launcher/OnAlarmListener;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    new-instance v1, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    invoke-direct {v1, v0, p0}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/Workspace;)V

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->p:Landroid/app/WallpaperManager;

    new-instance p1, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    invoke-direct {p1, p0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;-><init>(Lcom/zui/launcher/Workspace;)V

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->initWorkspace()V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    new-instance p1, Lcom/zui/launcher/touch/WorkspaceTouchListener;

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-direct {p1, p2, p0}, Lcom/zui/launcher/touch/WorkspaceTouchListener;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/Workspace;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707e3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/Workspace;->n0:I

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707e4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/Workspace;->o0:I

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070302

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070301

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/Workspace;->l0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->c1(Landroid/content/Context;)V

    return-void
.end method

.method private A0(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/Workspace$ItemOperator;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    invoke-interface {p2, v3, v2}, Lcom/zui/launcher/Workspace$ItemOperator;->evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private B0(Lcom/zui/launcher/CellLayout;[F)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/Workspace;->C0(Landroid/view/View;[F)V

    :goto_0
    return-void
.end method

.method private C0(Landroid/view/View;[F)V
    .locals 2

    const/4 p0, 0x0

    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, p0

    const/4 p0, 0x1

    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    aput v0, p2, p0

    return-void
.end method

.method private D(IF)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Workspace;->U0:I

    if-lt p1, p0, :cond_0

    const p0, 0x3f490fdb

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E(II)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->addExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    :cond_0
    return-void
.end method

.method private E0(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_f

    iget-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v9, v7, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    const/4 v10, 0x2

    new-array v11, v10, [I

    iget-object v1, v7, Lcom/zui/launcher/Workspace;->H:[F

    const/4 v12, 0x0

    aget v2, v1, v12

    float-to-int v2, v2

    aput v2, v11, v12

    const/4 v13, 0x1

    aget v1, v1, v13

    float-to-int v1, v1

    aput v1, v11, v13

    instance-of v1, v9, Lcom/zui/launcher/HotseatLayout;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    instance-of v0, v0, Lcom/zui/launcher/LayoutInfo;

    if-eqz v0, :cond_f

    iget-object v0, v7, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v14

    iget-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    move-object v15, v0

    check-cast v15, Lcom/zui/launcher/LayoutInfo;

    aget v1, v11, v12

    aget v2, v11, v13

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v6, v7, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v1, v7, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v12

    aget v1, v1, v13

    invoke-virtual {v9, v2, v1, v0}, Lcom/zui/launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    iget-object v3, v7, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v9

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->C(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-array v0, v10, [I

    new-array v14, v10, [I

    new-array v10, v10, [I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15}, Lcom/zui/launcher/LayoutInfo;->getCount()I

    move-result v1

    iget-object v2, v7, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget-object v2, v2, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v4

    move-object v3, v0

    move v2, v12

    move/from16 v16, v13

    :goto_0
    if-ge v2, v15, :cond_d

    iget-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragView;

    if-nez v2, :cond_3

    iget-object v1, v7, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_3
    iget-object v0, v7, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/util/SettingsValue;->isAutoReorderEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    if-nez v2, :cond_4

    aget v17, v11, v12

    aget v18, v11, v13

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v17, v2

    move/from16 v2, v18

    move-object/from16 v18, v3

    move/from16 v3, v19

    move-object/from16 v21, v4

    move/from16 v4, v20

    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->T(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v3

    aget v0, v3, v12

    aput v0, v10, v12

    aget v0, v3, v13

    aput v0, v10, v13

    move-object/from16 v18, v3

    goto :goto_1

    :cond_4
    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_1
    if-lez v17, :cond_9

    if-eqz v16, :cond_7

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->U(Lcom/zui/launcher/CellLayout;[I[IIILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    move-object v3, v14

    const/4 v6, -0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/Workspace;->V(Lcom/zui/launcher/CellLayout;[IIILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change r_direct, dropTargetCell[0]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v14, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dropTargetCell[1]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v14, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v12

    goto :goto_2

    :cond_6
    const/4 v6, -0x1

    aput v6, v18, v12

    aput v6, v18, v13

    goto :goto_3

    :cond_7
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/Workspace;->V(Lcom/zui/launcher/CellLayout;[IIILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v3, v14

    goto :goto_4

    :cond_8
    aput v6, v18, v12

    aput v6, v18, v13

    goto :goto_3

    :cond_9
    const/4 v6, -0x1

    :goto_3
    move-object/from16 v3, v18

    :goto_4
    move-object/from16 v0, v19

    goto :goto_5

    :cond_a
    move/from16 v17, v2

    move-object/from16 v21, v4

    move-object v0, v5

    move-object/from16 v20, v6

    move v6, v1

    move-object v1, v3

    invoke-virtual {v9, v1, v13, v13, v0}, Lcom/zui/launcher/CellLayout;->v([IIILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_b

    aput v6, v1, v12

    aput v6, v1, v13

    :cond_b
    move-object v3, v1

    :goto_5
    aget v1, v3, v12

    if-eq v1, v6, :cond_e

    aget v1, v3, v13

    if-ne v1, v6, :cond_c

    goto :goto_6

    :cond_c
    aget v1, v3, v13

    move-object/from16 v2, v21

    iget v4, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v1, v4

    aget v4, v3, v12

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v17, 0x1

    move-object v5, v0

    move-object v4, v2

    move-object/from16 v6, v20

    move v2, v1

    goto/16 :goto_0

    :cond_d
    move-object v0, v5

    :cond_e
    :goto_6
    iget-object v1, v7, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v2, v7, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-virtual {v1, v2, v0, v12, v8}, Lcom/zui/launcher/CellLayout;->Z(Lcom/zui/launcher/graphics/DragPreviewProvider;Ljava/util/List;ZLcom/zui/launcher/DropTarget$DragObject;)V

    :cond_f
    :goto_7
    return-void
.end method

.method private F()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->U:Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderIcon;->onDragExit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->U:Lcom/zui/launcher/folder/FolderIcon;

    :cond_0
    return-void
.end method

.method private F0([ILcom/zui/launcher/CellLayout;Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 28

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    move-object/from16 v15, p3

    iget-object v0, v15, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    iget-object v0, v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v15, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    :cond_0
    iget-object v14, v15, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v2, v8, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    iget v0, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget v1, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    :cond_1
    move v3, v0

    move v4, v1

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v7}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x65

    goto :goto_0

    :cond_2
    const/16 v0, -0x64

    :goto_0
    move/from16 v21, v0

    invoke-virtual {v8, v7}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v13

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v7}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v8, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {v8, v0}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    if-eq v13, v0, :cond_3

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8, v13}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :cond_3
    instance-of v0, v14, Lcom/zui/launcher/PendingAddItemInfo;

    const/16 v1, 0x9

    const/4 v12, 0x0

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_15

    move-object v6, v14

    check-cast v6, Lcom/zui/launcher/PendingAddItemInfo;

    iget v0, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq v0, v10, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 p1, v6

    goto :goto_2

    :cond_5
    :goto_1
    aget v1, p1, v11

    aget v2, p1, v10

    iget-object v5, v8, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    move-object/from16 p1, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v1, v8, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v11

    aget v1, v1, v10

    invoke-virtual {v7, v2, v1, v0}, Lcom/zui/launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    iget-object v1, v15, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v3, v8, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/Workspace;->h1(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v15, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v1, v8, Lcom/zui/launcher/Workspace;->w:[I

    invoke-virtual {v8, v0, v7, v1, v6}, Lcom/zui/launcher/Workspace;->f1(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v10

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v11

    :goto_4
    iget-object v6, v15, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_b

    iget v0, v6, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, v6, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v2, v6, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    if-lez v2, :cond_8

    iget v3, v6, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    if-lez v3, :cond_8

    move v0, v2

    move v1, v3

    :cond_8
    new-array v2, v9, [I

    iget-object v3, v8, Lcom/zui/launcher/Workspace;->H:[F

    aget v4, v3, v11

    float-to-int v4, v4

    aget v3, v3, v10

    float-to-int v3, v3

    iget v5, v14, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, v14, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/16 v16, 0x0

    iget-object v7, v8, Lcom/zui/launcher/Workspace;->w:[I

    const/16 v19, 0x3

    move/from16 v17, v9

    move-object/from16 v9, p2

    move v10, v4

    move v4, v11

    move v11, v3

    move-object v3, v12

    move v12, v0

    move/from16 v23, v13

    move v13, v1

    move-object v1, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v17

    move-object/from16 v17, v7

    move-object/from16 v18, v2

    invoke-virtual/range {v9 .. v19}, Lcom/zui/launcher/CellLayout;->P(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v8, Lcom/zui/launcher/Workspace;->w:[I

    aget v0, v2, v4

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v15, 0x1

    if-ne v0, v7, :cond_a

    aget v0, v2, v15

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-eq v0, v7, :cond_9

    goto :goto_5

    :cond_9
    move v11, v4

    goto :goto_6

    :cond_a
    :goto_5
    move v11, v15

    :goto_6
    aget v0, v2, v4

    iput v0, v6, Lcom/zui/launcher/ItemInfo;->spanX:I

    aget v0, v2, v15

    iput v0, v6, Lcom/zui/launcher/ItemInfo;->spanY:I

    goto :goto_7

    :cond_b
    move v4, v11

    move-object v3, v12

    move/from16 v23, v13

    move-object v1, v14

    move-object v5, v15

    move v15, v10

    :goto_7
    new-instance v7, Lcom/zui/launcher/Workspace$b;

    move-object v0, v7

    move-object v10, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v3

    move/from16 v3, v21

    move v14, v4

    move/from16 v4, v23

    move-object v13, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/Workspace$b;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/PendingAddItemInfo;IILcom/zui/launcher/ItemInfo;)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_d

    const/16 v2, 0xa

    if-ne v1, v2, :cond_c

    goto :goto_8

    :cond_c
    move v1, v14

    goto :goto_9

    :cond_d
    :goto_8
    move v1, v15

    :goto_9
    if-eqz v1, :cond_e

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_a

    :cond_e
    move-object v2, v12

    :goto_a
    iget v3, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_f

    move v3, v15

    goto :goto_b

    :cond_f
    move v3, v14

    :goto_b
    if-eqz v3, :cond_10

    move-object v4, v0

    check-cast v4, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v12, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;->boundWidget:Landroid/view/View;

    :cond_10
    instance-of v4, v12, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v4, :cond_11

    move-object v4, v12

    check-cast v4, Lcom/zui/launcher/LeosWidgetInterface;

    iget-object v5, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5, v4}, Lcom/zui/launcher/Launcher;->C2(Lcom/zui/launcher/LeosWidgetInterface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->daulTimeZoneCancelLongPress()V

    :cond_11
    if-eqz v2, :cond_12

    if-eqz v11, :cond_12

    iget-object v4, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget v5, v6, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v6, v6, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v2, v4, v5, v6}, Lcom/zui/launcher/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_12
    if-eqz v1, :cond_13

    move-object v6, v0

    check-cast v6, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v0, v6, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_13

    invoke-virtual {v6}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-eqz v0, :cond_13

    move v6, v15

    goto :goto_c

    :cond_13
    move v6, v14

    :goto_c
    iget-object v4, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v5, v13, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    if-eqz v3, :cond_14

    goto :goto_d

    :cond_14
    move-object v12, v2

    :goto_d
    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v12

    move v8, v9

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/zui/launcher/Workspace;->animateWidgetDrop(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Ljava/lang/Runnable;ILandroid/view/View;ZZ)V

    goto/16 :goto_1f

    :cond_15
    move/from16 v23, v13

    move-object v13, v15

    move v15, v10

    move-object v10, v14

    move v14, v11

    instance-of v0, v10, Lcom/zui/launcher/LayoutInfo;

    if-eqz v0, :cond_25

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v11

    iget-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    move-object v12, v0

    check-cast v12, Lcom/zui/launcher/LayoutInfo;

    if-eqz p1, :cond_16

    aget v1, p1, v14

    aget v2, p1, v15

    iget-object v6, v8, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v1, v8, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v14

    aget v1, v1, v15

    move-object/from16 v6, p2

    invoke-virtual {v6, v2, v1, v0}, Lcom/zui/launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    iget-object v3, v8, Lcom/zui/launcher/Workspace;->w:[I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object v11, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->A(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_16
    move-object/from16 v11, p2

    :cond_17
    new-array v0, v9, [I

    new-array v6, v9, [I

    new-array v9, v9, [I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    move v3, v14

    move/from16 v17, v3

    move/from16 v16, v15

    :goto_e
    invoke-virtual {v12}, Lcom/zui/launcher/LayoutInfo;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_24

    invoke-virtual {v12, v3}, Lcom/zui/launcher/LayoutInfo;->getInfoAt(I)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v2

    iget-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/dragndrop/DragView;

    if-nez v3, :cond_18

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_18
    instance-of v0, v11, Lcom/zui/launcher/HotseatLayout;

    if-eqz v0, :cond_19

    invoke-virtual {v10, v1, v2, v5}, Lcom/zui/launcher/XDockView;->animDragviewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;)V

    move/from16 v20, v3

    move-object v0, v5

    move-object/from16 v19, v6

    goto/16 :goto_14

    :cond_19
    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/util/SettingsValue;->isAutoReorderEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v7, ", dropTargetCell[1]: "

    move-object/from16 v19, v4

    const-string v4, "Launcher.Workspace"

    if-nez v0, :cond_20

    if-nez v3, :cond_1a

    aget v20, p1, v14

    aget v21, p1, v15

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v24, v1

    move/from16 v1, v20

    move-object/from16 v25, v2

    move/from16 v2, v21

    move/from16 v20, v3

    move/from16 v3, v22

    move-object/from16 v26, v4

    move-object/from16 v21, v19

    move/from16 v4, v23

    move-object/from16 v27, v5

    move-object/from16 v5, p2

    move-object/from16 v19, v6

    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->T(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    aget v1, v0, v14

    aput v1, v9, v14

    aget v1, v0, v15

    aput v1, v9, v15

    move-object/from16 v21, v0

    goto :goto_f

    :cond_1a
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v20, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v21, v19

    move-object/from16 v19, v6

    :goto_f
    if-lez v20, :cond_1f

    if-eqz v16, :cond_1d

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->U(Lcom/zui/launcher/CellLayout;[I[IIILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object/from16 v21, v19

    goto :goto_10

    :cond_1b
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/Workspace;->V(Lcom/zui/launcher/CellLayout;[IIILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change r_direct, dropTargetCell[0]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v19, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v19, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v26

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v14

    move-object/from16 v21, v19

    goto :goto_11

    :cond_1c
    move-object/from16 v6, v26

    const/4 v0, -0x1

    aput v0, v21, v14

    aput v0, v21, v15

    goto :goto_11

    :cond_1d
    move-object/from16 v6, v26

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/Workspace;->V(Lcom/zui/launcher/CellLayout;[IIILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object/from16 v21, v19

    const/4 v0, -0x1

    goto :goto_11

    :cond_1e
    const/4 v0, -0x1

    aput v0, v21, v14

    aput v0, v21, v15

    goto :goto_11

    :cond_1f
    :goto_10
    move-object/from16 v6, v26

    :goto_11
    move-object/from16 v4, v21

    goto :goto_12

    :cond_20
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v20, v3

    move-object/from16 v27, v5

    move-object/from16 v1, v19

    const/4 v0, -0x1

    move-object/from16 v19, v6

    move-object v6, v4

    invoke-virtual {v11, v1, v15, v15}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v2

    if-nez v2, :cond_21

    aput v0, v1, v14

    aput v0, v1, v15

    :cond_21
    move-object v4, v1

    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDropExternal2, dropTargetCell[0]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v0, v27

    invoke-virtual {v10, v2, v1, v4, v0}, Lcom/zui/launcher/XDockView;->dropToCurrentScreen(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;[ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v10, v1, v15}, Lcom/zui/launcher/XDockView;->removeDockItemByInfo(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_13

    :cond_22
    if-nez v17, :cond_23

    iget-object v3, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/zui/launcher/Workspace$c;

    invoke-direct {v5, v8}, Lcom/zui/launcher/Workspace$c;-><init>(Lcom/zui/launcher/Workspace;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    invoke-virtual {v10}, Lcom/zui/launcher/XDockView;->spreadWithoutAnim()V

    invoke-virtual {v10, v2, v1, v0}, Lcom/zui/launcher/XDockView;->animDragviewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;)V

    move/from16 v17, v15

    :goto_13
    invoke-virtual {v10}, Lcom/zui/launcher/XDockView;->hideDockView()V

    :goto_14
    add-int/lit8 v3, v20, 0x1

    move-object v5, v0

    move-object/from16 v6, v19

    goto/16 :goto_e

    :cond_24
    invoke-virtual {v10, v15}, Lcom/zui/launcher/XDockView;->startAnimatorSet(Z)V

    goto/16 :goto_1f

    :cond_25
    move-object/from16 v11, p2

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v2, v5, v6}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_26
    iget-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v0, v0, Lcom/zui/launcher/XDockView;

    if-eqz v0, :cond_28

    instance-of v0, v10, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_28

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    move-object v2, v10

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Launcher;->L0(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v11, v12}, Lcom/zui/launcher/CellLayout;->O(Landroid/view/View;)V

    iget-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v0, :cond_27

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    iget-object v1, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragController;->onDeferredEndDrag(Lcom/zui/launcher/dragndrop/DragView;)V

    :cond_27
    return-void

    :cond_28
    iget-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v2, v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    if-nez v2, :cond_29

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_2d

    :cond_29
    iget-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v2, v0, Lcom/zui/launcher/folder/Folder;

    if-nez v2, :cond_2d

    instance-of v0, v0, Lcom/zui/launcher/XDockView;

    if-nez v0, :cond_2d

    iget-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v2, v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    if-eqz v2, :cond_2a

    check-cast v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    iget-object v0, v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    goto :goto_15

    :cond_2a
    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    :goto_15
    iput-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_2b

    const-string v2, ""

    goto :goto_16

    :cond_2b
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_16
    iget-object v5, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v5, :cond_2c

    move v5, v14

    goto :goto_17

    :cond_2c
    iget-object v5, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    long-to-int v5, v5

    :goto_17
    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v7}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-static {v7, v2, v6, v0, v5}, Lcom/zui/launcher/LauncherModel;->shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2d

    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const v5, 0x7f120622

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v2, v6, v14

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move/from16 v22, v15

    goto :goto_18

    :cond_2d
    move/from16 v22, v14

    :goto_18
    iget v0, v10, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_30

    if-eq v0, v15, :cond_30

    if-eq v0, v9, :cond_2f

    const/16 v2, 0x8

    if-eq v0, v2, :cond_30

    if-ne v0, v1, :cond_2e

    goto :goto_19

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const v0, 0x7f0d00bd

    iget-object v1, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    move-object v2, v10

    check-cast v2, Lcom/zui/launcher/FolderInfo;

    invoke-static {v0, v1, v11, v2}, Lcom/zui/launcher/folder/FolderIcon;->fromXml(ILcom/zui/launcher/Launcher;Landroid/view/ViewGroup;Lcom/zui/launcher/FolderInfo;)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object v0

    move-object v12, v0

    goto :goto_1b

    :cond_30
    :goto_19
    iget v0, v10, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    instance-of v0, v10, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_31

    move-object v0, v10

    check-cast v0, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    iput-object v0, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    goto :goto_1a

    :cond_31
    move-object v0, v10

    :goto_1a
    iget-object v1, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, v11, v2}, Lcom/zui/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    move-object v10, v0

    move-object v12, v1

    :goto_1b
    if-eqz p1, :cond_33

    if-nez v22, :cond_33

    aget v1, p1, v14

    aget v2, p1, v15

    iget-object v6, v8, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v1, v8, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v14

    aget v1, v1, v15

    invoke-virtual {v11, v2, v1, v0}, Lcom/zui/launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v9

    iget-object v4, v8, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v6, 0x1

    iget-object v7, v13, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v21

    move-object/from16 v3, p2

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->L(Landroid/view/View;ILcom/zui/launcher/CellLayout;[IFZLcom/zui/launcher/dragndrop/DragView;)Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    :cond_32
    iget-object v3, v8, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move v4, v9

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->A(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    return-void

    :cond_33
    if-eqz p1, :cond_35

    if-eqz v22, :cond_34

    invoke-virtual {v11, v14}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    move-object v7, v10

    move-object v1, v11

    move-object v0, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    goto :goto_1c

    :cond_34
    iget-object v0, v8, Lcom/zui/launcher/Workspace;->H:[F

    aget v1, v0, v14

    float-to-int v1, v1

    aget v0, v0, v15

    float-to-int v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v16, 0x0

    iget-object v6, v8, Lcom/zui/launcher/Workspace;->w:[I

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object/from16 v9, p2

    move-object v7, v10

    move v10, v1

    move-object v1, v11

    move v11, v0

    move-object v0, v12

    move v12, v2

    move-object v2, v13

    move v13, v3

    move v3, v14

    move v14, v4

    move v4, v15

    move v15, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v9 .. v19}, Lcom/zui/launcher/CellLayout;->P(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v5

    iput-object v5, v8, Lcom/zui/launcher/Workspace;->w:[I

    goto :goto_1c

    :cond_35
    move-object v7, v10

    move-object v1, v11

    move-object v0, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    iget-object v5, v8, Lcom/zui/launcher/Workspace;->w:[I

    invoke-virtual {v1, v5, v4, v4}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    :goto_1c
    if-nez v22, :cond_36

    iget-object v5, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v15

    iget-object v5, v8, Lcom/zui/launcher/Workspace;->w:[I

    aget v19, v5, v3

    aget v20, v5, v4

    move-object/from16 v16, v7

    move/from16 v17, v21

    move/from16 v18, v23

    invoke-virtual/range {v15 .. v20}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object v5, v8, Lcom/zui/launcher/Workspace;->w:[I

    aget v6, v5, v3

    aget v5, v5, v4

    iget v9, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v11, v1

    move-object v1, v10

    move-object v12, v2

    move/from16 v2, v21

    move/from16 v3, v23

    move v4, v6

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    goto :goto_1d

    :cond_36
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    :goto_1d
    invoke-virtual {v11, v10}, Lcom/zui/launcher/CellLayout;->O(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    iget-object v0, v12, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v0, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->setFinalTransitionTransform()V

    if-eqz v22, :cond_37

    iget-object v0, v12, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragView;->remove()V

    goto :goto_1e

    :cond_37
    iget-object v0, v8, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, v12, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0, v1, v10, v8}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->resetTransitionTransform()V

    :cond_38
    :goto_1f
    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->T:Lcom/zui/launcher/folder/PreviewBackground;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewBackground;->animateToRest()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->R:Lcom/zui/launcher/Alarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->R:Lcom/zui/launcher/Alarm;

    invoke-virtual {p0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    return-void
.end method

.method private G0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->K:Z

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->k0:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/Workspace;->g0:F

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->X0()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->updateAccessibilityFlags()V

    return-void
.end method

.method private H(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->S:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/Workspace;->b0:I

    iput p1, p0, Lcom/zui/launcher/Workspace;->c0:I

    return-void
.end method

.method private I0(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace;->K:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/Workspace;->g0:F

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->X0()V

    return-void
.end method

.method private J()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->isDropPending()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v2, v0}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v2, -0xc9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private J0(Landroid/view/MotionEvent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->I0:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->isSameOrientationUseDegree(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    iget p1, p0, Lcom/zui/launcher/Workspace;->J0:F

    float-to-int p1, p1

    iget v0, p0, Lcom/zui/launcher/Workspace;->N0:F

    float-to-int v0, v0

    iget v3, p0, Lcom/zui/launcher/Workspace;->L0:F

    float-to-int v3, v3

    iget v4, p0, Lcom/zui/launcher/Workspace;->R0:F

    float-to-int v4, v4

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/zui/launcher/Workspace;->Y(IIII)I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/Workspace;->K0:F

    float-to-int v0, v0

    iget v3, p0, Lcom/zui/launcher/Workspace;->O0:F

    float-to-int v3, v3

    iget v4, p0, Lcom/zui/launcher/Workspace;->M0:F

    float-to-int v4, v4

    iget v5, p0, Lcom/zui/launcher/Workspace;->S0:F

    float-to-int v5, v5

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/zui/launcher/Workspace;->Y(IIII)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne p1, v2, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    if-ne v0, v2, :cond_2

    if-eq p1, v4, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "yOrientation = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isCenterDirection --> "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->H0:Z

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "Gesture"

    const-string v1, "ScreenEnterByTwoFinger"

    invoke-static {v0, v1, p1, v3}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-static {}, Lcom/zui/launcher/Utilities;->isSlidePhone()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->shouldAnimateStateChange()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->goToEditViewState(Z)V

    :cond_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->I0:Z

    const/high16 v3, 0x43480000    # 200.0f

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/zui/launcher/Workspace;->P0:F

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    const-string p1, " two  finder  down   "

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->reorderItemsManualDown()V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->I0:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/zui/launcher/Workspace;->P0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    cmpl-float p1, v0, v3

    if-lez p1, :cond_7

    const-string p1, " two  finder  up   "

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->reorderItemsManualUp()V

    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->H0:Z

    return-void
.end method

.method private K(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/category/AllAppsCategory;I)Ljava/lang/Runnable;
    .locals 9

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->id:I

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/zui/launcher/d3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/d3;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/category/AllAppsCategory;IILjava/lang/String;)V

    return-object v8
.end method

.method private K0(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/Workspace;->L0:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/Workspace;->M0:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/zui/launcher/Workspace;->J0:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/zui/launcher/Workspace;->K0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/zui/launcher/Workspace;->Q0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/Workspace;->P0:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBottomFingerBeginX = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->L0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mBottomFingerBeginY = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->M0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mTopFingerBeginX = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->J0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mTopFingerBeginY = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->K0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->H0:Z

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->T0:Z

    return-void
.end method

.method private L0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Workspace;->M0(I)V

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/zui/launcher/Workspace;->M0(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/Workspace;->M0(I)V

    return-void
.end method

.method private M0(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private N(Landroid/view/MotionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->T0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/Workspace;->Q0:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/zui/launcher/Workspace;->P0:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zui/launcher/Workspace;->mTouchSlopSquare:I

    if-le v2, v3, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->T0:Z

    iget v2, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->isSameOrientation(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "two finger"

    :goto_0
    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    iput v3, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcom/zui/launcher/Workspace;->b1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    const-string p1, "two move"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private N0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->w0:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xui.launcher.TIMEVIEWCHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->w0:Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->w0:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v1, "timeview_in_launcher"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTimeFlagIntent, extra value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.Workspace"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->x0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private P()V
    .locals 8

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->L:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getVisibleChildrenRange()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-boolean v5, p0, Lcom/zui/launcher/Workspace;->k0:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3, v2, v1}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result v1

    :cond_0
    if-ne v3, v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    :goto_0
    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/CellLayout;

    if-gt v3, v5, :cond_3

    if-gt v5, v1, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    invoke-virtual {v6, v7}, Lcom/zui/launcher/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private P0(Lcom/zui/launcher/DropTarget$DragObject;FF)Z
    .locals 5

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->f0(Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result p3

    if-nez p3, :cond_0

    iget p3, p1, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    iget v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    invoke-virtual {p0, p3, v0}, Lcom/zui/launcher/Workspace;->g0(II)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->I:[F

    iget v4, p1, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, p3, v2

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->I:[F

    iget v4, p1, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    aput v4, p3, v3

    iget-boolean p3, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz p3, :cond_1

    move p3, v3

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    add-int/2addr p3, v0

    iget-object v4, p0, Lcom/zui/launcher/Workspace;->I:[F

    invoke-direct {p0, p3, v4}, Lcom/zui/launcher/Workspace;->d1(I[F)Lcom/zui/launcher/CellLayout;

    move-result-object p3

    :cond_2
    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->I:[F

    iget v4, p1, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p3, v2

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->I:[F

    iget p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    int-to-float p1, p1

    aput p1, p2, v3

    iget-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    add-int/2addr v1, v0

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->I:[F

    invoke-direct {p0, v1, p1}, Lcom/zui/launcher/Workspace;->d1(I[F)Lcom/zui/launcher/CellLayout;

    move-result-object p3

    :cond_4
    if-nez p3, :cond_5

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p1

    if-ge v0, p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/zui/launcher/CellLayout;

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    if-eq p3, p1, :cond_6

    invoke-virtual {p0, p3}, Lcom/zui/launcher/Workspace;->setCurrentDropLayout(Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/Workspace;->setCurrentDragOverlappingLayout(Lcom/zui/launcher/CellLayout;)V

    return v3

    :cond_6
    return v2
.end method

.method private Q0()V
    .locals 2

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->o:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->o:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->o:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->o:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->o:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private R(IILjava/lang/Runnable;Z)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    new-instance v1, Lcom/zui/launcher/Workspace$o;

    invoke-direct {v1, p0, v0, p4}, Lcom/zui/launcher/Workspace$o;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;Z)V

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->t:Ljava/lang/Runnable;

    sget-object p4, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v0, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    int-to-long v0, p2

    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long p1, p1

    invoke-virtual {p4, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance p1, Lcom/zui/launcher/Workspace$p;

    invoke-direct {p1, p0, p3}, Lcom/zui/launcher/Workspace$p;-><init>(Lcom/zui/launcher/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p4, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private R0(Landroid/view/View;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workspace shouldConsumeTouch, v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", index :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mLauncher.getStateManager().getState():"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", can be dragged :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentPage:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private T(IIIILcom/zui/launcher/CellLayout;[I)[I
    .locals 9

    const/4 p0, 0x2

    new-array v8, p0, [I

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->A(IIIIII[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private U(Lcom/zui/launcher/CellLayout;[I[IIILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/CellLayout;",
            "[I[III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual/range {p1 .. p6}, Lcom/zui/launcher/CellLayout;->findNextUnOccupiedCell([I[IIILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method private U0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/Workspace;->g0:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private V(Lcom/zui/launcher/CellLayout;[IIILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/CellLayout;",
            "[III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/zui/launcher/CellLayout;->findPreviousUnOccupiedCell([IIILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method private V0()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->j0:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->j0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->j0:Ljava/lang/Runnable;

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private W([I[FLcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/ItemInfo;[IZ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    iget v4, v8, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v5, v8, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/4 v9, 0x0

    aget v2, p6, v9

    const/4 v10, 0x1

    aget v3, p6, v10

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/Workspace;->estimateItemPosition(Lcom/zui/launcher/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v8, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v6, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    :cond_1
    iget-object v1, v6, Lcom/zui/launcher/Workspace;->G:[F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v1, v9

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v1, v10

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->setFinalTransitionTransform()V

    iget-object v1, v6, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, v6, Lcom/zui/launcher/Workspace;->G:[F

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2, v10}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->resetTransitionTransform()V

    iget-object v2, v6, Lcom/zui/launcher/Workspace;->G:[F

    invoke-static {v2, v7}, Lcom/zui/launcher/Utilities;->roundArray([F[I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz p7, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v6, v2

    aget v2, v7, v9

    int-to-double v11, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    sub-float/2addr v2, v8

    div-float/2addr v2, v4

    float-to-double v13, v2

    invoke-virtual/range {p4 .. p4}, Lcom/zui/launcher/CellLayout;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sub-double/2addr v13, v2

    sub-double/2addr v11, v13

    double-to-int v2, v11

    aput v2, v7, v9

    aget v2, v7, v10

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    aput v0, v7, v10

    mul-float/2addr v5, v1

    aput v5, p2, v9

    mul-float/2addr v6, v1

    aput v6, p2, v10

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/zui/launcher/dragndrop/DragView;->getInitialScale()F

    move-result v0

    mul-float/2addr v0, v1

    aget v3, v7, v9

    int-to-float v3, v3

    sub-float v2, v0, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v7, v9

    aget v3, v7, v10

    int-to-float v3, v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v7, v10

    aput v0, p2, v10

    aput v0, p2, v9

    invoke-virtual/range {p3 .. p3}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    aget v2, v7, v9

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v7, v9

    aget v2, v7, v10

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-int v0, v2

    aput v0, v7, v10

    :cond_3
    :goto_0
    return-void
.end method

.method private W0(ILcom/zui/launcher/CellLayout;)V
    .locals 0

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private varargs X([Lcom/zui/launcher/CellLayout;[Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;
    .locals 7

    array-length v0, p2

    new-array v1, v0, [Landroid/view/View;

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    new-instance v6, Lcom/zui/launcher/x2;

    invoke-direct {v6, p2, v1}, Lcom/zui/launcher/x2;-><init>([Lcom/zui/launcher/Workspace$ItemOperator;[Landroid/view/View;)V

    invoke-direct {p0, v5, v6}, Lcom/zui/launcher/Workspace;->A0(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/Workspace$ItemOperator;)Z

    aget-object v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_2

    aget-object p0, v1, v3

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private X0()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/zui/launcher/Workspace;->L:Z

    if-eq v0, v2, :cond_3

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->L:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->P()V

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private Y(IIII)I
    .locals 4

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, p3

    move p3, p1

    move p1, v2

    move v3, p4

    move p4, p2

    move p2, v3

    :goto_0
    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    const/4 p0, 0x2

    const/16 p1, 0x14

    const/4 p3, 0x1

    if-le p2, p1, :cond_1

    if-ge p4, p3, :cond_1

    return p0

    :cond_1
    const/4 v0, -0x1

    const/16 v1, -0x14

    if-ge p4, v1, :cond_2

    if-le p2, v0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x3

    if-le p4, p1, :cond_3

    if-ge p2, p3, :cond_3

    return p0

    :cond_3
    if-ge p2, v1, :cond_4

    if-le p4, v0, :cond_4

    return p0

    :cond_4
    return p3
.end method

.method private Z(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    const/16 v2, -0xc9

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    if-le v0, v2, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120769

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez v0, :cond_2

    const p1, 0x7f120088

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v1, 0x7f12076a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Z0(F)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/zui/launcher/Workspace;->y0:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget v0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v1, 0xb4

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p1, v2

    if-ge v0, v1, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x19

    goto :goto_0

    :cond_2
    const v0, 0x3f0ccccd    # 0.55f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0xc

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a1()V
    .locals 6

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->i1()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->K:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, v3, v2}, Lcom/zui/launcher/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v5, v4

    iget-boolean v4, p0, Lcom/zui/launcher/Workspace;->O:Z

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setAlpha(F)V

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b0()Lcom/zui/launcher/Workspace$a0;
    .locals 6

    sget-object v0, Lcom/zui/launcher/Workspace$a0;->INVALIDPARAM:Lcom/zui/launcher/Workspace$a0;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/zui/launcher/Workspace$a0;->NOTIME:Lcom/zui/launcher/Workspace$a0;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/zui/launcher/TimeWidgetLongClickViewOne;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/zui/launcher/TimeWeatherWidgetView4X2old;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/zui/launcher/TimeWeatherWidgetView4X2;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Workspace;->j0(Ljava/lang/Object;)Lcom/zui/launcher/Workspace$a0;

    move-result-object v0

    sget-object v4, Lcom/zui/launcher/Workspace$a0;->TIMEEXIST:Lcom/zui/launcher/Workspace$a0;

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v0, Lcom/zui/launcher/Workspace$a0;->TIMEEXIST:Lcom/zui/launcher/Workspace$a0;

    :cond_5
    :goto_2
    return-object v0
.end method

.method private c0(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42dc0000    # 110.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/zui/launcher/Workspace;->U0:I

    return-void
.end method

.method private c1(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTouchSlop toucheSlop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "updownslop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug$R5;->echo(Ljava/lang/Object;)V

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->mTouchSlopSquare:I

    mul-int/2addr v1, v1

    iput v1, p0, Lcom/zui/launcher/Workspace;->mUpDownTouchSlopSquare:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->c0(Landroid/content/Context;)V

    return-void
.end method

.method private d1(I[F)Lcom/zui/launcher/CellLayout;
    .locals 4

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/Workspace;->C0(Landroid/view/View;[F)V

    iget v0, p0, Lcom/zui/launcher/Workspace;->u0:I

    neg-int v1, v0

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    const v3, 0x40066666    # 2.1f

    iget p0, p0, Lcom/zui/launcher/Workspace;->u0:I

    if-eqz v2, :cond_0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int v0, p0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int v1, p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x0

    aget v2, p2, v0

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    aget v0, p2, v0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    aget v0, p2, p0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    aget p0, p2, p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_2

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private e0(Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 0

    iget-object p0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f0(Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 0

    iget-object p0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of p1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    if-nez p1, :cond_1

    instance-of p0, p0, Lcom/zui/launcher/LenovoWidgetViewInfo;

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

.method private getTouchEventHeight()I
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit8 v1, v1, 0x3

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method private getWorkspaceAndHotseatCellLayouts()[Lcom/zui/launcher/CellLayout;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/zui/launcher/CellLayout;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lcom/zui/launcher/CellLayout;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private h0(IIII)Z
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dx1 = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dx2 = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dy1 = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dy2 = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    if-lt p2, v0, :cond_1

    :cond_0
    if-ge p1, v0, :cond_2

    if-le p2, v1, :cond_2

    :cond_1
    return p0

    :cond_2
    if-le p3, v1, :cond_3

    if-lt p4, v0, :cond_4

    :cond_3
    if-ge p3, v0, :cond_5

    if-le p4, v1, :cond_5

    :cond_4
    return p0

    :cond_5
    return v1
.end method

.method private i0()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->q0:Lcom/zui/launcher/util/OverlayEdgeEffect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/util/OverlayEdgeEffect;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i1()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j0(Ljava/lang/Object;)Lcom/zui/launcher/Workspace$a0;
    .locals 0

    instance-of p0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.zui.weather"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/launcher/Workspace$a0;->TIMEEXIST:Lcom/zui/launcher/Workspace$a0;

    return-object p0

    :cond_0
    sget-object p0, Lcom/zui/launcher/Workspace$a0;->NOTIME:Lcom/zui/launcher/Workspace$a0;

    return-object p0
.end method

.method private j1()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->i1()Z

    move-result p0

    if-nez p0, :cond_0

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

.method static synthetic m0([Lcom/zui/launcher/Workspace$ItemOperator;[Landroid/view/View;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-interface {v2, p2, p3}, Lcom/zui/launcher/Workspace$ItemOperator;->evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    aput-object p3, p1, v1

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic n0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic o0(Lcom/zui/launcher/Workspace$ItemOperator;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/Workspace$ItemOperator;->evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic p0(Lcom/zui/launcher/Workspace$ItemOperator;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/FolderInfo;

    iget-object p1, p1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-interface {p0, v0, p2}, Lcom/zui/launcher/Workspace$ItemOperator;->evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic q0(ILcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic r0(ILcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    instance-of p2, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic s(Lcom/zui/launcher/Workspace;)Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->V0()Z

    move-result p0

    return p0
.end method

.method static synthetic t(Lcom/zui/launcher/Workspace;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->N0(Z)V

    return-void
.end method

.method static synthetic u(Lcom/zui/launcher/Workspace;)Lcom/zui/launcher/folder/PreviewBackground;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->T:Lcom/zui/launcher/folder/PreviewBackground;

    return-object p0
.end method

.method static synthetic u0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic v(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/folder/PreviewBackground;)Lcom/zui/launcher/folder/PreviewBackground;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->T:Lcom/zui/launcher/folder/PreviewBackground;

    return-object p1
.end method

.method static synthetic v0(Lcom/zui/launcher/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/util/PackageUserKey;->updateFromItemInfo(Lcom/zui/launcher/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

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

.method static synthetic w(Lcom/zui/launcher/Workspace;)Lcom/zui/launcher/graphics/DragPreviewProvider;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    return-object p0
.end method

.method static synthetic x(Lcom/zui/launcher/Workspace;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/Workspace;->g0:F

    return p1
.end method

.method static synthetic x0(Ljava/util/HashSet;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 2

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2, v1}, Lcom/zui/launcher/BubbleTextView;->applyPromiseState(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->applyState()V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_2

    instance-of p1, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/zui/launcher/v;

    invoke-direct {p1, p0}, Lcom/zui/launcher/v;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p2, p1}, Lcom/zui/launcher/folder/FolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic y(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->I0(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic y0(Ljava/util/HashSet;Ljava/util/ArrayList;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 2

    instance-of v0, p3, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/zui/launcher/WorkspaceItemInfo;

    check-cast p3, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p3}, Lcom/zui/launcher/WorkspaceIconCompat;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->hasNotCompleted()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result p1

    if-eq p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-interface {p3, p2, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    goto :goto_2

    :cond_2
    instance-of p2, p2, Lcom/zui/launcher/FolderInfo;

    if-eqz p2, :cond_3

    instance-of p2, p3, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p2, :cond_3

    check-cast p3, Lcom/zui/launcher/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/zui/launcher/v;

    invoke-direct {p2, p0}, Lcom/zui/launcher/v;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p3, p2}, Lcom/zui/launcher/folder/FolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    invoke-virtual {p3}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return v1
.end method

.method static synthetic z(Lcom/zui/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->G0()V

    return-void
.end method

.method private z0(Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;)V
    .locals 6

    iget v0, p0, Lcom/zui/launcher/Workspace;->X:F

    cmpl-float p3, p3, v0

    const/4 v0, 0x0

    if-lez p3, :cond_1

    iget p1, p0, Lcom/zui/launcher/Workspace;->a0:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p3}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p3

    if-eqz p3, :cond_3

    iget p1, p0, Lcom/zui/launcher/Workspace;->a0:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    :cond_2
    return-void

    :cond_3
    iget-object p3, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->w:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p3, v2, v1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p3

    iget-object v1, p4, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v2, v1, Lcom/zui/launcher/LayoutInfo;

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, p3, v0}, Lcom/zui/launcher/Workspace;->g1(Lcom/zui/launcher/ItemInfo;Landroid/view/View;Z)Z

    move-result v2

    :goto_0
    iget v4, p0, Lcom/zui/launcher/Workspace;->a0:I

    if-nez v4, :cond_7

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/zui/launcher/Workspace;->R:Lcom/zui/launcher/Alarm;

    invoke-virtual {v4}, Lcom/zui/launcher/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v1, Lcom/zui/launcher/Workspace$x;

    aget v0, p2, v0

    aget p2, p2, v3

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/zui/launcher/Workspace$x;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/CellLayout;II)V

    iget-boolean p1, p4, Lcom/zui/launcher/DropTarget$DragObject;->accessibleDrag:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->R:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->R:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->R:Lcom/zui/launcher/Alarm;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Workspace$x;->onAlarm(Lcom/zui/launcher/Alarm;)V

    :goto_1
    iget-object p1, p4, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0, v1, p3}, Lcom/zui/launcher/Workspace;->e1(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p2

    const/4 v4, 0x2

    if-eqz p2, :cond_a

    iget v5, p0, Lcom/zui/launcher/Workspace;->a0:I

    if-nez v5, :cond_a

    move-object p2, p3

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    iput-object p2, p0, Lcom/zui/launcher/Workspace;->U:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, v1}, Lcom/zui/launcher/folder/FolderIcon;->onDragEnter(Lcom/zui/launcher/ItemInfo;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->clearDragOutlines()V

    :cond_8
    invoke-virtual {p0, v4}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    iget-object p1, p4, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :cond_a
    iget p1, p0, Lcom/zui/launcher/Workspace;->a0:I

    if-ne p1, v4, :cond_b

    if-nez p2, :cond_b

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    :cond_b
    iget p1, p0, Lcom/zui/launcher/Workspace;->a0:I

    if-ne p1, v3, :cond_c

    if-nez v2, :cond_c

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    :cond_c
    return-void
.end method


# virtual methods
.method A(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z
    .locals 1

    iget p1, p0, Lcom/zui/launcher/Workspace;->X:F

    cmpl-float p1, p4, p1

    const/4 p4, 0x0

    if-lez p1, :cond_0

    return p4

    :cond_0
    aget p1, p3, p4

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-boolean p3, p0, Lcom/zui/launcher/Workspace;->W:Z

    if-nez p3, :cond_1

    return p4

    :cond_1
    iput-boolean p4, p0, Lcom/zui/launcher/Workspace;->W:Z

    instance-of p3, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p3, :cond_5

    check-cast p1, Lcom/zui/launcher/folder/FolderIcon;

    iget-object p3, p5, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p1, p3}, Lcom/zui/launcher/folder/FolderIcon;->acceptDrop(Lcom/zui/launcher/ItemInfo;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1, p5, p4}, Lcom/zui/launcher/folder/FolderIcon;->onDrop(Lcom/zui/launcher/DropTarget$DragObject;Z)V

    if-nez p6, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object p3

    iget-object p4, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object p4, p4, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p3, p4}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3, p1}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3, p2}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    check-cast p1, Lcom/zui/launcher/HotseatLayout;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/HotseatLayout;->commitReorderState(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast p2, Lcom/zui/launcher/HotseatLayout;

    const-wide/16 p3, 0x190

    new-instance p1, Lcom/zui/launcher/Workspace$u;

    invoke-direct {p1, p0, p2}, Lcom/zui/launcher/Workspace$u;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/HotseatLayout;)V

    invoke-virtual {p0, p1, p3, p4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    const/16 p1, 0x2f

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IZ)Z

    :cond_4
    return v0

    :cond_5
    return p4
.end method

.method B(Landroid/view/View;Lcom/zui/launcher/CellLayout;[I)Z
    .locals 2

    const/4 p0, 0x0

    aget v0, p3, p0

    const/4 v1, 0x1

    aget p3, p3, v1

    invoke-virtual {p2, v0, p3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/folder/FolderIcon;->willAcceptItem(Lcom/zui/launcher/ItemInfo;)Z

    move-result p3

    if-eqz p3, :cond_0

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    return v1

    :cond_0
    return p0
.end method

.method C(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Workspace;->X:F

    cmpl-float p0, p4, p0

    const/4 p1, 0x0

    if-lez p0, :cond_0

    return p1

    :cond_0
    if-nez p2, :cond_1

    return p1

    :cond_1
    aget p0, p3, p1

    const/4 p4, 0x1

    aget p3, p3, p4

    invoke-virtual {p2, p0, p3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    instance-of p2, p0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p2, :cond_2

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    iget-object p2, p5, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/FolderIcon;->acceptDrop(Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    return p4

    :cond_2
    return p1
.end method

.method D0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isDoingCloseAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->i1()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method H0()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->v0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->x0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method I()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/Workspace$h;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Workspace$h;-><init>(Lcom/zui/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    return-void
.end method

.method L(Landroid/view/View;ILcom/zui/launcher/CellLayout;[IFZLcom/zui/launcher/dragndrop/DragView;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    iget v1, v0, Lcom/zui/launcher/Workspace;->X:F

    cmpl-float v1, p5, v1

    const/4 v7, 0x0

    if-lez v1, :cond_0

    return v7

    :cond_0
    aget v1, p4, v7

    const/4 v8, 0x1

    aget v3, p4, v8

    invoke-virtual {v2, v1, v3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    iget-object v1, v0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    iget-object v3, v0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget v4, v3, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    aget v5, p4, v7

    if-ne v4, v5, :cond_1

    iget v3, v3, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    aget v4, p4, v8

    if-ne v3, v4, :cond_1

    if-ne v1, v2, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v7

    :goto_0
    if-eqz v11, :cond_8

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/zui/launcher/Workspace;->V:Z

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iput-boolean v7, v0, Lcom/zui/launcher/Workspace;->V:Z

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez p6, :cond_4

    iget-object v1, v0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    iget-object v3, v0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object v3

    iget-object v5, v0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v5, v5, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v5}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v2}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    check-cast v1, Lcom/zui/launcher/HotseatLayout;

    iget-object v3, v0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/zui/launcher/HotseatLayout;->commitReorderState(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    check-cast v1, Lcom/zui/launcher/HotseatLayout;

    const-wide/16 v5, 0x190

    new-instance v3, Lcom/zui/launcher/Workspace$t;

    invoke-direct {v3, v0, v1}, Lcom/zui/launcher/Workspace$t;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/HotseatLayout;)V

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v11, v14}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v15

    invoke-virtual {v2, v11}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    aget v5, p4, v7

    aget v6, p4, v8

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/Launcher;->q0(Lcom/zui/launcher/CellLayout;IIII)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v10, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v2, v10, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v2, v12, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v2, v12, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget-object v2, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget v2, v2, Lcom/zui/launcher/Launcher;->mTextColor:I

    invoke-virtual {v1, v2}, Lcom/zui/launcher/folder/FolderIcon;->setTextColor(I)V

    iget-object v2, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v2, v10, v12}, Lcom/zui/launcher/category/AllAppsCategory;->isFolderWellregulated(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)I

    move-result v4

    iget-object v5, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-nez v5, :cond_5

    if-ltz v4, :cond_5

    sget-object v5, Lcom/zui/launcher/category/AppsCategoryInfo;->DEFAULT_INDEX_OF_DB:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Lcom/zui/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    :cond_5
    if-eqz p7, :cond_6

    move v7, v8

    :cond_6
    if-eqz v7, :cond_7

    iget-object v5, v0, Lcom/zui/launcher/Workspace;->T:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v1, v5}, Lcom/zui/launcher/folder/FolderIcon;->setFolderBackground(Lcom/zui/launcher/folder/PreviewBackground;)V

    new-instance v5, Lcom/zui/launcher/folder/PreviewBackground;

    invoke-direct {v5}, Lcom/zui/launcher/folder/PreviewBackground;-><init>()V

    iput-object v5, v0, Lcom/zui/launcher/Workspace;->T:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/zui/launcher/Workspace;->K(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/category/AllAppsCategory;I)Ljava/lang/Runnable;

    move-result-object v16

    move-object v9, v1

    move-object/from16 v13, p7

    invoke-virtual/range {v9 .. v16}, Lcom/zui/launcher/folder/FolderIcon;->performCreateAnimation(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v11}, Lcom/zui/launcher/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v1, v12}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :goto_2
    iget-object v0, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget v0, v0, Lcom/zui/launcher/Launcher;->mTextColor:I

    invoke-virtual {v1, v0}, Lcom/zui/launcher/folder/FolderIcon;->setTextColor(I)V

    return v8

    :cond_8
    :goto_3
    return v7
.end method

.method M(Landroid/view/View;ILcom/zui/launcher/CellLayout;[I)Z
    .locals 11

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    array-length v1, p4

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p4, v0, [I

    :cond_1
    const/4 v0, 0x0

    aget v1, p4, v0

    const/4 v2, 0x1

    aget v3, p4, v2

    invoke-virtual {p3, v1, v3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v4, :cond_3

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v8

    invoke-virtual {p3, v1}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    aget v9, p4, v0

    aget v10, p4, v2

    move-object v6, p3

    move v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/zui/launcher/Launcher;->q0(Lcom/zui/launcher/CellLayout;IIII)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object p0

    const/4 p2, -0x1

    iput p2, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p2, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v1}, Lcom/zui/launcher/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    return v2

    :cond_4
    return v0
.end method

.method O()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method O0(II)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/Workspace;->x:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/Workspace;->y:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/zui/launcher/Workspace;->x:I

    iput p2, p0, Lcom/zui/launcher/Workspace;->y:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    :cond_1
    return-void
.end method

.method Q()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->o:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method S(IIIILcom/zui/launcher/CellLayout;[I)[I
    .locals 6

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p0

    return-object p0
.end method

.method S0()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->Y()V

    :cond_1
    return-void
.end method

.method T0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->v0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace;->v0:Z

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->N0(Z)V

    :cond_0
    return-void
.end method

.method Y0(Lcom/zui/launcher/CellLayout;)V
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    const/16 v1, -0x65

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v2, 0x0

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, v4, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v3, v4

    move v4, v1

    move v5, v0

    invoke-virtual/range {v2 .. v9}, Lcom/zui/launcher/model/ModelWriter;->modifyItemInDatabase(Lcom/zui/launcher/ItemInfo;IIIIII)V

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;
    .locals 5

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/zui/launcher/CellLayout;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public acceptDrop(Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v15, v7, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    instance-of v0, v15, Lcom/zui/launcher/Hotseat;

    const/16 v19, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v19

    :cond_0
    iget-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    const/16 v20, 0x1

    if-eq v0, v7, :cond_b

    if-nez v15, :cond_1

    return v19

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->U0()Z

    move-result v0

    if-nez v0, :cond_2

    return v19

    :cond_2
    iget-object v0, v7, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    return v19

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/Workspace;->e0(Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v15, :cond_4

    invoke-virtual {v7, v15}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->getCurrentScreenId()I

    move-result v1

    if-eq v0, v1, :cond_4

    return v19

    :cond_4
    return v20

    :cond_5
    iget-object v0, v7, Lcom/zui/launcher/Workspace;->H:[F

    invoke-virtual {v8, v0}, Lcom/zui/launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/zui/launcher/Workspace;->H:[F

    invoke-direct {v7, v15, v0}, Lcom/zui/launcher/Workspace;->B0(Lcom/zui/launcher/CellLayout;[F)V

    iget-object v0, v7, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_6

    iget v1, v0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget v0, v0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    goto :goto_0

    :cond_6
    iget-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->spanY:I

    :goto_0
    move v14, v0

    move v13, v1

    iget-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    check-cast v0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    move v12, v0

    move v11, v1

    goto :goto_1

    :cond_7
    move v11, v13

    move v12, v14

    :goto_1
    iget-object v0, v7, Lcom/zui/launcher/Workspace;->H:[F

    aget v1, v0, v19

    float-to-int v1, v1

    aget v0, v0, v20

    float-to-int v2, v0

    iget-object v6, v7, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move v3, v11

    move v4, v12

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v1, v7, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v19

    aget v1, v1, v20

    invoke-virtual {v15, v2, v1, v0}, Lcom/zui/launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    iget-boolean v0, v7, Lcom/zui/launcher/Workspace;->V:Z

    if-eqz v0, :cond_8

    iget-object v1, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v3, v7, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/Workspace;->h1(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v20

    :cond_8
    iget-boolean v0, v7, Lcom/zui/launcher/Workspace;->W:Z

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v1, v7, Lcom/zui/launcher/Workspace;->w:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/zui/launcher/Workspace;->f1(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_9

    return v20

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, v7, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v19

    float-to-int v9, v2

    aget v1, v1, v20

    float-to-int v10, v1

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/zui/launcher/Workspace;->w:[I

    const/16 v18, 0x4

    move-object v8, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v8 .. v18}, Lcom/zui/launcher/CellLayout;->P(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/zui/launcher/Workspace;->w:[I

    aget v1, v0, v19

    if-ltz v1, :cond_a

    aget v0, v0, v20

    if-ltz v0, :cond_a

    move/from16 v0, v20

    goto :goto_2

    :cond_a
    move/from16 v0, v19

    :goto_2
    if-nez v0, :cond_c

    invoke-virtual {v7, v3}, Lcom/zui/launcher/Workspace;->onNoCellFound(Landroid/view/View;)V

    return v19

    :cond_b
    move-object v3, v15

    :cond_c
    invoke-virtual {v7, v3}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v0

    const/16 v1, -0xc9

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    :cond_d
    return v20
.end method

.method public addDockViewItemToWorkspace(Landroid/view/View;IIIIII)V
    .locals 6

    invoke-virtual/range {p0 .. p7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    return-void
.end method

.method public addExtraEmptyScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreen(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addExtraEmptyScreenOnDrag()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->t:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreen(I)V

    :cond_4
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIIIII)V
    .locals 1

    const/16 v0, -0x64

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Skipping child, screenId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Workspace"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    const/16 v0, -0xc9

    if-eq p3, v0, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/Workspace;->E(II)V

    invoke-interface/range {p0 .. p7}, Lcom/zui/launcher/WorkspaceLayoutManager;->addInScreenReal(Landroid/view/View;IIIIII)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->galleryWidgetSend(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addInScreen(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 8

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v4, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v6, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    return-void
.end method

.method public addInScreenFromBindAndCheck(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/Workspace;->E(II)V

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method public animateChildToPosition(Landroid/view/View;IIILjava/lang/Runnable;IIZ)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x0

    if-nez v8, :cond_0

    return v12

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/zui/launcher/ItemInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v0, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v9}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, v2, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne v0, v10, :cond_2

    iget v0, v2, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ne v0, v11, :cond_2

    return v12

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v8, v0}, Lcom/zui/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v14, Lcom/zui/launcher/Workspace$n;

    move-object v0, v14

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/Workspace$n;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/ItemInfo;IIILjava/lang/Runnable;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    if-nez v0, :cond_3

    return v12

    :cond_3
    invoke-virtual {v0, v10, v11}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v1

    if-eqz v1, :cond_4

    return v12

    :cond_4
    invoke-virtual {v0, v12}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move-object v6, v13

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    move-result v0

    return v0

    :cond_5
    invoke-virtual/range {p0 .. p4}, Lcom/zui/launcher/Workspace;->moveItemToPosition(Landroid/view/View;III)Z

    move-result v0

    return v0

    :cond_6
    :goto_0
    return v12

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected animateOpenFolder(Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->animateOpen()V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->playFolderAnimExtraInPro()V

    return-void
.end method

.method public animateToOldPlace(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToOldPlace, XDragObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget v0, v0, Lcom/zui/launcher/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v4, v0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/HotseatLayout;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/HotseatLayout;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/HotseatLayout;->itemToOriginalPosition(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public animateWidgetDrop(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Ljava/lang/Runnable;ILandroid/view/View;ZZ)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v13, p7

    if-nez p2, :cond_0

    const-string v0, "Launcher.Workspace"

    const-string v1, "-------animateWidgetDrop failed: cellLayout is null  "

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v15, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v8, v12}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v10, 0x2

    new-array v11, v10, [I

    new-array v7, v10, [F

    instance-of v0, v14, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    const/4 v6, 0x1

    xor-int/lit8 v16, v0, 0x1

    iget-object v5, v15, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->W([I[FLcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/ItemInfo;[IZ)V

    iget-object v0, v15, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v7, v0, -0xc8

    iget v0, v14, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    const/16 v16, 0x0

    if-eq v0, v1, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v6, v16

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eq v9, v10, :cond_3

    if-eqz p8, :cond_4

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v15, v14, v13}, Lcom/zui/launcher/Workspace;->createWidgetBitmap(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/zui/launcher/dragndrop/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v0, v7

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v8, v0}, Lcom/zui/launcher/dragndrop/DragView;->crossFade(I)V

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    if-eqz p8, :cond_5

    aget v0, v17, v16

    const/4 v6, 0x1

    aget v2, v17, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v17, v6

    aput v0, v17, v16

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x1

    :goto_3
    iget-object v0, v15, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v18

    if-ne v9, v1, :cond_6

    iget-object v0, v15, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move-object v2, v11

    move/from16 v19, v7

    move-object/from16 v7, p5

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    goto/16 :goto_5

    :cond_6
    move/from16 v19, v7

    if-ne v9, v6, :cond_7

    move/from16 v20, v10

    goto :goto_4

    :cond_7
    move/from16 v20, v16

    :goto_4
    new-instance v10, Lcom/zui/launcher/Workspace$d;

    move-object/from16 v0, p5

    invoke-direct {v10, v15, v13, v0}, Lcom/zui/launcher/Workspace$d;-><init>(Lcom/zui/launcher/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    iget v2, v12, Landroid/graphics/Rect;->left:I

    iget v3, v12, Landroid/graphics/Rect;->top:I

    aget v4, v11, v16

    aget v5, v11, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    aget v22, v17, v16

    aget v23, v17, v6

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v24, v6

    move v6, v7

    move v7, v9

    move/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v21, v10

    move/from16 v10, v23

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    move-object/from16 v25, v12

    move/from16 v12, v20

    move/from16 v13, v19

    move-object v15, v14

    move-object/from16 v14, p0

    invoke-virtual/range {v0 .. v14}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    if-eqz p4, :cond_8

    move-object/from16 v0, v25

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget v4, v22, v16

    aget v5, v22, v24

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    aget v9, v17, v16

    aget v10, v17, v24

    new-instance v11, Lcom/zui/launcher/Workspace$e;

    move-object/from16 v14, p0

    move-object/from16 v1, p7

    move/from16 v12, p9

    move-object v0, v15

    invoke-direct {v11, v14, v12, v0, v1}, Lcom/zui/launcher/Workspace$e;-><init>(Lcom/zui/launcher/Workspace;ZLcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move/from16 v12, v20

    move/from16 v13, v19

    invoke-virtual/range {v0 .. v14}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragDeleteView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public autoReorder()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->X0:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->X0:Lcom/zui/launcher/Alarm;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->Y0:Lcom/zui/launcher/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->X0:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    return-void
.end method

.method b1(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/zui/launcher/r2;

    invoke-direct {v1, v0, p1}, Lcom/zui/launcher/r2;-><init>(Ljava/util/HashSet;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/folder/Folder;->iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/folder/Folder;->iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/graphics/DragPreviewProvider;Lcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragView;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v13, p5

    instance-of v3, v1, Lcom/zui/launcher/BubbleTextView;

    if-eqz v3, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v4}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {v4}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    iput-object v2, v0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-virtual/range {p4 .. p4}, Lcom/zui/launcher/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, v2, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v7, v7, 0x2

    iget-object v8, v0, Lcom/zui/launcher/Workspace;->F:[I

    invoke-virtual {v2, v6, v8}, Lcom/zui/launcher/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/Bitmap;[I)F

    move-result v11

    iget-object v8, v0, Lcom/zui/launcher/Workspace;->F:[I

    aget v9, v8, v5

    const/4 v10, 0x1

    aget v8, v8, v10

    iget-object v10, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v10}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v10

    instance-of v12, v1, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v14, 0x0

    if-eqz v12, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v1

    check-cast v10, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v10, v2}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconBounds(Landroid/graphics/Rect;)V

    instance-of v10, v1, Lcom/zui/launcher/ActiveIconView;

    if-nez v10, :cond_1

    if-eqz v3, :cond_2

    move-object v10, v1

    check-cast v10, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v10}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v14

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    new-instance v5, Landroid/graphics/Point;

    neg-int v10, v7

    invoke-direct {v5, v10, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object v14, v2

    move/from16 v16, v8

    move-object v8, v5

    move/from16 v5, v16

    goto :goto_3

    :cond_3
    instance-of v15, v1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v15, :cond_5

    iget v2, v10, Lcom/zui/launcher/DeviceProfile;->folderIconSizePx:I

    move-object v10, v1

    check-cast v10, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v10}, Lcom/zui/launcher/folder/FolderIcon;->isLayoutHorizontal()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v2, Landroid/graphics/Point;

    neg-int v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int v10, v7, v10

    invoke-direct {v2, v10, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-direct {v7, v10, v5, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_4
    new-instance v10, Landroid/graphics/Point;

    neg-int v14, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    sub-int/2addr v7, v15

    invoke-direct {v10, v14, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-direct {v7, v5, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v10

    :goto_1
    move-object v14, v7

    goto :goto_2

    :cond_5
    instance-of v2, v2, Lcom/zui/launcher/shortcuts/ShortcutDragPreviewProvider;

    if-eqz v2, :cond_6

    new-instance v2, Landroid/graphics/Point;

    neg-int v5, v7

    invoke-direct {v2, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    move v5, v8

    move-object v8, v2

    goto :goto_3

    :cond_6
    move v5, v8

    move-object v8, v14

    :goto_3
    if-eqz v3, :cond_7

    move-object v2, v1

    check-cast v2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v2}, Lcom/zui/launcher/BubbleTextView;->g()V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    iput-object v2, v0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    :cond_8
    if-nez v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v2, :cond_a

    :cond_9
    iget-boolean v2, v13, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v2, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->showForIcon(Landroid/view/View;)Lcom/zui/launcher/popup/PopupContainerWithArrow;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->createPreDragCondition()Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    move-result-object v2

    iput-object v2, v13, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    iget-object v2, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v2

    const-string v3, "dragging started"

    invoke-virtual {v2, v3}, Lcom/zui/launcher/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    :cond_a
    iget-object v2, v0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    mul-float v10, v11, v4

    move-object v3, v6

    move v4, v9

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v9, v14

    move-object/from16 v12, p5

    invoke-virtual/range {v2 .. v12}, Lcom/zui/launcher/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/zui/launcher/DragSource;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragView;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v3}, Lcom/zui/launcher/dragndrop/DragController;->getDragObject()Lcom/zui/launcher/DropTarget$DragObject;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v3}, Lcom/zui/launcher/dragndrop/DragController;->getDragObject()Lcom/zui/launcher/DropTarget$DragObject;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v3, v3, Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_b

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->getDragObject()Lcom/zui/launcher/DropTarget$DragObject;

    move-result-object v0

    iput-object v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->orginalView:Landroid/view/View;

    :cond_b
    iget v0, v13, Lcom/zui/launcher/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    invoke-virtual {v2, v0}, Lcom/zui/launcher/dragndrop/DragView;->setIntrinsicIconScaleFactor(F)V

    return-object v2
.end method

.method public beginDragShared(Landroid/view/View;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v1, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/zui/launcher/ItemInfo;

    new-instance v6, Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {v6, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/Workspace;->beginDragShared(Landroid/view/View;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/graphics/DragPreviewProvider;Lcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragView;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreen(II)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    if-nez p1, :cond_3

    const v2, 0x7f0a032f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const-string v2, "qsb_view"

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0d0150

    invoke-virtual {p0, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    move-object v2, p1

    if-eqz v2, :cond_4

    new-instance v5, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p0

    const/4 p1, 0x1

    invoke-direct {v5, v0, v0, p0, p1}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    iput-boolean v0, v5, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    const/4 v3, 0x0

    const v4, 0x7f0a032f

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Launcher.Workspace"

    const-string p1, "Failed to add to item at (0, 0) to CellLayout"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public calculateRotateAngle()I
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v1, :cond_2

    return v0

    :cond_2
    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method protected canAnnouncePageDescription()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/Workspace;->m0:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canOverScroll()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasOverlayScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p0

    if-gtz p0, :cond_0

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

.method public cleanReorderManual()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->V0:Lcom/zui/launcher/ReorderActor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor;->cleanReorderManual()V

    :cond_0
    return-void
.end method

.method public closeTopFloatView()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/t2;

    invoke-direct {v0, p0}, Lcom/zui/launcher/t2;-><init>(Lcom/zui/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public commitExtraEmptyScreen()I
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "generate_new_screen_id"

    invoke-static {v1, v2}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    return v1
.end method

.method public computeScroll()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->computeScroll()V

    return-void
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public createWidgetBitmap(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->estimateItemSize(Lcom/zui/launcher/ItemInfo;)[I

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    aget v1, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v3, 0x1

    aget v4, p0, v3

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    aget v4, p0, v0

    aget v5, p0, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    aget v1, p0, v0

    aget p0, p0, v3

    invoke-virtual {p2, v0, v0, v1, p0}, Landroid/view/View;->layout(IIII)V

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-object v4
.end method

.method d0()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->b0()Lcom/zui/launcher/Workspace$a0;

    move-result-object v0

    sget-object v2, Lcom/zui/launcher/Workspace$a0;->TIMEEXIST:Lcom/zui/launcher/Workspace$a0;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->v0:Z

    invoke-direct {p0, v1}, Lcom/zui/launcher/Workspace;->N0(Z)V

    return-void
.end method

.method public daulTimeZoneCancelLongPress()V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAllConfiguredLeosWidget()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LeosWidgetInterface;

    instance-of v1, v0, Lcom/zui/launcher/DaulTimeZoneViewOne;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zui/launcher/DaulTimeZoneViewOne;

    invoke-virtual {v0}, Lcom/zui/launcher/DaulTimeZoneViewOne;->cancelLongPress()V

    invoke-virtual {v0}, Lcom/zui/launcher/DaulTimeZoneViewOne;->setCancleLongState()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/zui/launcher/NewDualTimeZoneWidget;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/NewDualTimeZoneWidget;

    invoke-virtual {v0}, Lcom/zui/launcher/NewDualTimeZoneWidget;->cancelLongPress()V

    invoke-virtual {v0}, Lcom/zui/launcher/NewDualTimeZoneWidget;->setCancleLongState()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public deferRemoveExtraEmptyScreen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->u:Z

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--------determineScrollingStart !isFinishedSwitchingState:  mIsSwitchingState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->K:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   mTransitionProgress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/Workspace;->g0:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "--------determineScrollingStart mLauncher.isInState(ALL_APPS)"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/Workspace;->Y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/zui/launcher/Workspace;->Z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x3fc90fdb

    goto :goto_1

    :cond_2
    div-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    :goto_1
    iget v3, p0, Lcom/zui/launcher/PagedView;->mTouchSlop:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->cancelCurrentPageLongPress()V

    :cond_4
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/zui/launcher/Workspace;->mTouchSlopSquare:I

    if-gt v0, v1, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/zui/launcher/Workspace;->mUpDownTouchSlopSquare:I

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/Workspace;->D(IF)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/Workspace;->Z:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->determineSingleProcess(I)V

    :cond_6
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    return-void

    :cond_7
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_8

    sub-float/2addr v2, v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_2

    :cond_8
    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :goto_2
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    :cond_0
    return-void
.end method

.method public determineSingleProcess(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->T0:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->T0:Z

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    if-nez v1, :cond_2

    if-gez p1, :cond_1

    const-string p1, "single up "

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "single down "

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    const-string p1, "--------determineSingleProcess GUESTURE_SCROLL_DOWN"

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xui.launcher.gesture.scroll.down"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    iput v0, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--------determineSingleProcess return isHandlingTouch(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mEventType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--------determineSingleProcess return getVisibility(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  isAnimating: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->d0:Landroid/util/SparseArray;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mCanTap:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->i1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public doAddExcessiveView()V
    .locals 4

    sget-object v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    const-string v1, "doAddExcessiveView   start   --> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getGlobalSearchView()Lcom/zui/launcher/GlobalSearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/GlobalSearchView;->setNightMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->initTempView()Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->handleTempViewDeviceChange()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->C0:Z

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->enterSearch()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/LoadData;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/globalsearch/LoadData;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getAllAppsDataList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/LoadData;->setData(Ljava/util/ArrayList;)V

    sget-object p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    const-string v0, "doAddExcessiveView   end   --> "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doGlobalSearch()V
    .locals 5

    sget-object v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGlobalSearch  start   --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/zui/launcher/Launcher;->setSearchState(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    const-string v1, "doGlobalSearch enterEditAlphaHandle "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->enterEditAlphaHandle()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->handlerShowAfterState()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->setHotWordHint()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->doShowEventhing()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->setWorkspaceAlpha(Lcom/zui/launcher/Launcher;F)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/zui/launcher/Workspace;->T0(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const-string v1, "search locate app"

    invoke-virtual {v0, v4, v1}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGlobalSearch  end  --> vis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doViewScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method e1(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-boolean v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-eq v1, v0, :cond_1

    :cond_0
    return p0

    :cond_1
    instance-of v0, p2, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/folder/FolderIcon;->acceptDrop(Lcom/zui/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public estimateItemPosition(Lcom/zui/launcher/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 6

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    return-object p0
.end method

.method public estimateItemSize(Lcom/zui/launcher/ItemInfo;)[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/zui/launcher/CellLayout;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/zui/launcher/Workspace;->estimateItemPosition(Lcom/zui/launcher/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v4, p0}, Lcom/zui/launcher/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v4

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    aput p0, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    aput p0, v0, v2

    if-eqz v1, :cond_3

    aget p0, v0, v3

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-int p0, p0

    aput p0, v0, v3

    aget p0, v0, v2

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-int p0, p0

    aput p0, v0, v2

    :cond_3
    return-object v0

    :cond_4
    const p0, 0x7fffffff

    aput p0, v0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method public estimateItemSize(Lcom/zui/launcher/ItemInfo;ZZ)[I
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->numCustomPages()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/zui/launcher/CellLayout;

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget v5, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v7, 0x7

    if-ne v5, v7, :cond_1

    move v11, v3

    goto :goto_1

    :cond_1
    move v11, v4

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v10, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/zui/launcher/Workspace;->estimateItemPosition(Lcom/zui/launcher/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p1

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v5, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v5, p0}, Lcom/zui/launcher/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v5

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    aput p0, v1, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    aput p0, v1, v3

    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    aget p0, v1, v4

    int-to-float p0, p0

    div-float/2addr p0, v5

    float-to-int p0, p0

    aput p0, v1, v4

    aget p0, v1, v3

    int-to-float p0, p0

    div-float/2addr p0, v5

    float-to-int p0, p0

    aput p0, v1, v3

    :cond_4
    if-eqz p2, :cond_5

    aget p0, v1, v4

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    aput p0, v1, v4

    aget p0, v1, v3

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    aput p0, v1, v3

    :cond_5
    return-object v1

    :cond_6
    const p0, 0x7fffffff

    aput p0, v1, v4

    aput p0, v1, v3

    return-object v1
.end method

.method public exitExcessiveView()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    const-string v1, "exitExcessiveView --> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->setWorkspaceAlpha(Lcom/zui/launcher/Launcher;F)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Launcher;->setSearchState(Z)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->doViewScale(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->removeTempView()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->clearSearchAppView()V

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->C0:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->timeViewFlagChanged()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->exitSearch()V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V

    :cond_1
    return-void
.end method

.method f1(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;[IF)Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/Workspace;->X:F

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Workspace;->e1(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p1, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput p1, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p0

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    const/4 p0, 0x1

    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 p1, -0x65

    if-ne p0, p1, :cond_0

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->rank:I

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->rank:I

    const/4 p0, 0x2

    :goto_0
    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto :goto_1

    :cond_0
    if-ltz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public findViewByInfo(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 3

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v1, 0x0

    const/16 v2, -0x65

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method g0(II)Z
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->G:[F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->G:[F

    invoke-virtual {p1, p0, v0, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v4, :cond_0

    int-to-float v2, v2

    iget v3, v3, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    iget v3, v3, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    float-to-int v0, v0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/Workspace;->G:[F

    aget v4, v3, v1

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_2

    aget v0, v3, v1

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    aget v0, v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->G:[F

    aget p0, p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    move v1, p2

    :cond_2
    return v1
.end method

.method g1(Lcom/zui/launcher/ItemInfo;Landroid/view/View;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-boolean v2, v1, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p2, :cond_6

    if-nez v1, :cond_6

    if-eqz p3, :cond_3

    iget-boolean p0, p0, Lcom/zui/launcher/Workspace;->V:Z

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    const/16 p2, 0x9

    if-eq p1, p2, :cond_5

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v2

    :goto_2
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    move v0, v2

    :cond_6
    :goto_3
    return v0
.end method

.method public getAllLeosWidget()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/LeosWidgetInterface;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getCurrentDragOverlappingLayout()Lcom/zui/launcher/CellLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->A:Lcom/zui/launcher/CellLayout;

    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/zui/launcher/CellLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    return-object p0
.end method

.method public getCurrentEventType()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    return p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/Workspace;->Z(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentScreenId()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result p0

    return p0
.end method

.method public getDescendantFocusability()I
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x60000

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p0

    return p0
.end method

.method public getDragInfo()Lcom/zui/launcher/CellLayout$CellInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    return-object p0
.end method

.method getDragMode()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Workspace;->a0:I

    return p0
.end method

.method public getDraggingInfo()Lcom/zui/launcher/CellLayout$CellInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    return-object p0
.end method

.method public getDropToLayout()Lcom/zui/launcher/CellLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    return-object p0
.end method

.method public getEditModeItemScaleFactor()F
    .locals 1

    sget p0, Lcom/zui/launcher/Workspace;->Z0:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p0, v0, p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->getEditModeScale()F

    move-result p0

    sput p0, Lcom/zui/launcher/Workspace;->Z0:F

    :cond_0
    sget p0, Lcom/zui/launcher/Workspace;->Z0:F

    return p0
.end method

.method public getExpectedHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    :goto_1
    return p0
.end method

.method public getExpectedWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    :goto_1
    return p0
.end method

.method public getFirstMatch(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/Workspace$g;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/launcher/Workspace$g;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/Workspace$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getFirstMatchForAppClose(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    new-instance v1, Lcom/zui/launcher/a3;

    invoke-direct {v1, p1, p2}, Lcom/zui/launcher/a3;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance p1, Lcom/zui/launcher/v2;

    invoke-direct {p1, v1}, Lcom/zui/launcher/v2;-><init>(Lcom/zui/launcher/Workspace$ItemOperator;)V

    new-instance p2, Lcom/zui/launcher/p2;

    invoke-direct {p2, p1}, Lcom/zui/launcher/p2;-><init>(Lcom/zui/launcher/Workspace$ItemOperator;)V

    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->ADAPTIVE_ICON_WINDOW_ANIM:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getHotseat()Lcom/zui/launcher/Hotseat;

    move-result-object v5

    aput-object v5, v1, v4

    aput-object v0, v1, v3

    new-array v0, v2, [Lcom/zui/launcher/Workspace$ItemOperator;

    aput-object p1, v0, v4

    aput-object p2, v0, v3

    invoke-direct {p0, v1, v0}, Lcom/zui/launcher/Workspace;->X([Lcom/zui/launcher/CellLayout;[Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p2, v2, [Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getHotseat()Lcom/zui/launcher/Hotseat;

    move-result-object v1

    aput-object v1, p2, v4

    aput-object v0, p2, v3

    new-array v0, v3, [Lcom/zui/launcher/Workspace$ItemOperator;

    aput-object p1, v0, v4

    invoke-direct {p0, p2, v0}, Lcom/zui/launcher/Workspace;->X([Lcom/zui/launcher/CellLayout;[Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFolderViewForItem(Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/FolderInfo;

    instance-of v5, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lcom/zui/launcher/FolderInfo;

    iget v4, v4, Lcom/zui/launcher/ItemInfo;->id:I

    iget v5, v5, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGalleryWidget()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_0

    check-cast v6, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.zui.gallery.widget.AppWidget"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getHomescreenIconByItemId(I)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/zui/launcher/w2;

    invoke-direct {v0, p1}, Lcom/zui/launcher/w2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getFirstMatch(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getHotseat()Lcom/zui/launcher/Hotseat;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    return-object p0
.end method

.method public getIdForScreen(Lcom/zui/launcher/CellLayout;)I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getIsGlobalAnimatorInterceptState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Workspace;->C0:Z

    return p0
.end method

.method public getLenovoCpuTogetherCurrentChild()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLenovoMobaWeatherTimeAllChild()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/TimeWeatherWidgetView4X2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/zui/launcher/TimeWeatherWidgetView4X2;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/zui/launcher/TimeWeatherWidgetView4X2;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getLeosWidgetInCurrentPage()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/LeosWidgetInterface;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v3

    if-le v3, v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v7, :cond_1

    check-cast v6, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getNewScale()F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result p0

    return p0
.end method

.method public getOverlayShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Workspace;->i0:Z

    return p0
.end method

.method public getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getPageIndexForScreenId(I)I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getScreenIdForPageIndex(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getScreenOrder()Lcom/zui/launcher/util/IntArray;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    return-object p0
.end method

.method public getScreenWithId(I)Lcom/zui/launcher/CellLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    return-object p0
.end method

.method public getSearchState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Workspace;->D0:Z

    return p0
.end method

.method public getStateTransitionAnimation()Lcom/zui/launcher/WorkspaceStateTransitionAnimation;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    return-object p0
.end method

.method public getTempView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->initTempView()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperOffsetForCenterPage()F
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result p0

    return p0
.end method

.method public getWeatherWidgetViewFiveChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getWeatherWidgetViewSixChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getWeatherWidgetViewThreeChild()Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getWidgetDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Workspace;->mDownWidget:Z

    return p0
.end method

.method public getWidgetForAppWidgetId(I)Lcom/zui/launcher/widget/LauncherAppWidgetHostView;
    .locals 1

    new-instance v0, Lcom/zui/launcher/b3;

    invoke-direct {v0, p1}, Lcom/zui/launcher/b3;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getFirstMatch(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    return-object p0
.end method

.method public getWindowAnimatorScale()Z
    .locals 7

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v3

    const/4 v4, 0x2

    invoke-interface {p0, v4}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result p0

    const-string v4, "yyyy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7a97\u53e3\u7f29\u653e ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \u8fc7\u5ea6\u52a8\u753b\u7f29\u653e ->"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", Animator \u65f6\u957f\u7f29\u653e ->"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method h1(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;[IFZ)Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/Workspace;->X:F

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/zui/launcher/Workspace;->g1(Lcom/zui/launcher/ItemInfo;Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public handleDragLayerScale(F)V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    sget v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    sub-float p1, v1, v0

    :cond_0
    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->doViewScale(F)V

    return-void
.end method

.method public handleOverlayScreenIndicator()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isOverlayIndicatorShow()Z

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->showOverlayMark()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->removeOverlayMark()V

    :goto_0
    return-void
.end method

.method public handleTempViewDeviceChange()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public handleUpEvent(FLandroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->D0:Z

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getGlobalSearchView()Lcom/zui/launcher/GlobalSearchView;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/zui/launcher/Workspace;->C0:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getWindowAnimatorScale()Z

    move-result v1

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->C0:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->getTouchEventHeight()I

    move-result p2

    iget-boolean v4, p0, Lcom/zui/launcher/Workspace;->E0:Z

    if-eqz v4, :cond_0

    iget p1, p0, Lcom/zui/launcher/Workspace;->F0:F

    :cond_0
    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpEvent ===== isLowSmooth -->  "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zui/launcher/Workspace;->E0:Z

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " fromBottom --> "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    if-nez p1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->updateDisableAnimationsToggle()Z

    move-result p1

    iget-boolean p2, p0, Lcom/zui/launcher/Workspace;->E0:Z

    const-string v4, " windowAnimatorScale = "

    if-nez p2, :cond_6

    sget-object p2, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "global search open -->  animationsToggle = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/zui/launcher/Workspace;->o0:I

    iget-object v5, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    iget-object v6, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->onFlingShowGlobalSearch(Landroid/view/View;ILcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V

    goto/16 :goto_3

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->doGlobalSearch()V

    goto/16 :goto_3

    :cond_6
    iget p2, p0, Lcom/zui/launcher/Workspace;->F0:F

    iget v5, p0, Lcom/zui/launcher/Workspace;->n0:I

    int-to-float v5, v5

    sub-float/2addr p2, v5

    sget-object v5, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "global search close -->  curentUpY --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "  effectiveY --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "  mTempDownY --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/zui/launcher/Workspace;->F0:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " mLauncher.getSearchState() --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float p2, v3, p2

    if-ltz p2, :cond_9

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_8

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/zui/launcher/Workspace;->F0:F

    iget p1, p0, Lcom/zui/launcher/Workspace;->n0:I

    int-to-float v5, p1

    iget-object v6, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->backAnimator(FFFLandroid/view/View;Lcom/zui/launcher/Launcher;)V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getY()F

    move-result p2

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchViewY --> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpEvent1: animationsToggle = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GlobalSearch"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    if-eqz v1, :cond_a

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, p2, p1, v0, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->onFingSmoothSearch(FLcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V

    :goto_3
    const-string p0, "handleUpEvent  end   -->>  "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :goto_4
    const-string p1, "handleUpEvent  tempView or globalSearchView is empty !! "

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    :cond_c
    :goto_5
    return-void
.end method

.method public handleViewTextColor(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    instance-of v0, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_0

    instance-of p2, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p2, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/BubbleTextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/zui/launcher/DummyAppWidgetView;

    if-eqz p2, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/DummyAppWidgetView;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/DummyAppWidgetView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz p2, :cond_2

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/ActiveIconView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, p3}, Lcom/zui/launcher/folder/FolderIcon;->setTextColor(I)V

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {p2, p3, v0}, Lcom/zui/launcher/folder/FolderIcon;->changeFolderIconThemes(Landroid/content/Context;Lcom/zui/launcher/FolderInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p2}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewBackground()Lcom/zui/launcher/folder/PreviewBackground;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    invoke-virtual {p1, p0}, Lcom/zui/launcher/folder/PreviewBackground;->resetStokeAndBgColor(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handlerSearchEvent(Landroid/view/MotionEvent;FFLjava/lang/Long;)V
    .locals 7

    iget-boolean p2, p0, Lcom/zui/launcher/Workspace;->D0:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->D0:Z

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p3

    iget-boolean p3, p3, Lcom/zui/launcher/Workspace;->i0:Z

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-ne p3, p2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    sub-long/2addr v0, p3

    const-wide/16 p3, 0x258

    cmp-long p3, v0, p3

    const/4 p4, 0x0

    if-lez p3, :cond_2

    iget-boolean p3, p0, Lcom/zui/launcher/Workspace;->E0:Z

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iput p3, p0, Lcom/zui/launcher/Workspace;->F0:F

    :cond_1
    iput-boolean p2, p0, Lcom/zui/launcher/Workspace;->E0:Z

    goto :goto_0

    :cond_2
    iput-boolean p4, p0, Lcom/zui/launcher/Workspace;->E0:Z

    :goto_0
    iget-boolean p2, p0, Lcom/zui/launcher/Workspace;->E0:Z

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget p3, p0, Lcom/zui/launcher/Workspace;->F0:F

    sub-float/2addr p3, p2

    iput p3, p0, Lcom/zui/launcher/Workspace;->G0:F

    const/4 p2, 0x0

    cmpg-float p3, p3, p2

    if-gtz p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->getIsFingShowing()Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    iget p3, p0, Lcom/zui/launcher/Workspace;->G0:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v0, p0, Lcom/zui/launcher/Workspace;->n0:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_5

    move p3, v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerSearchEvent  alpha -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    float-to-double v1, p3

    const-wide v3, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_a

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_6

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_6
    iget p3, p0, Lcom/zui/launcher/Workspace;->G0:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v1, p0, Lcom/zui/launcher/Workspace;->n0:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Lcom/zui/launcher/Workspace;->o0:I

    int-to-float v2, v1

    div-float v2, p3, v2

    int-to-float v5, v1

    sub-float/2addr v5, p3

    int-to-float p3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/zui/launcher/Workspace;->F0:F

    iget v6, p0, Lcom/zui/launcher/Workspace;->o0:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    iget v6, p0, Lcom/zui/launcher/Workspace;->n0:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_7

    move p3, p2

    move p1, v0

    goto :goto_1

    :cond_7
    move p1, v2

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p4, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    cmpl-float p1, v5, p2

    if-ltz p1, :cond_8

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_8
    float-to-double p1, v2

    cmpl-double p1, p1, v3

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    if-ltz p1, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_b
    invoke-virtual {p0, p3}, Lcom/zui/launcher/Workspace;->handleDragLayerScale(F)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p0, :cond_c

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_c
    :goto_2
    return-void
.end method

.method public hasBindOverlay()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->h0:Lcom/zui/launcher/LauncherOverlay;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasExtraEmptyScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOverlayScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/util/SettingsValue;->isFuncScreenOnOrOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasBindOverlay()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTimeWeatherViewCurrentPage()Lcom/zui/launcher/TimeWidgetLongClickViewOne;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/launcher/TimeWidgetLongClickViewOne;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/zui/launcher/TimeWidgetLongClickViewOne;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public hasTimeWeatherWidgetView4X2CurrentPage()Lcom/zui/launcher/TimeWeatherWidgetView4X2old;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/launcher/TimeWeatherWidgetView4X2old;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/zui/launcher/TimeWeatherWidgetView4X2old;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public hideScrimView()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->hideScrimView()V

    :cond_0
    return-void
.end method

.method public initLandScalePivot(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;I)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getIndicator()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    invoke-virtual {p0, p1, v1, v2}, Lcom/zui/launcher/Workspace;->resetPivotState(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;Landroid/view/View;Lcom/zui/launcher/Hotseat;)V

    return-void

    :cond_0
    const/4 v4, 0x3

    if-ne p2, v4, :cond_1

    invoke-virtual {p0, p1, v1, v2}, Lcom/zui/launcher/Workspace;->resetPivotState(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;Landroid/view/View;Lcom/zui/launcher/Hotseat;)V

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setWorkspacePivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setIndicatorPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setHotseatPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->calculateRotateAngle()I

    move-result p1

    const/high16 p2, 0x42700000    # 60.0f

    const/high16 v4, 0x41a00000    # 20.0f

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v6, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v4, v6}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p2, v3}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    const/high16 p1, 0x42200000    # 40.0f

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p0

    :goto_0
    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v5

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setPivotY(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->calculateRotateAngle()I

    move-result p1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object v6, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v6}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget-object v8, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p2, v8}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v7, p2

    invoke-virtual {v1, v7}, Landroid/view/View;->setPivotX(F)V

    new-array p2, v3, [I

    invoke-virtual {p1, v2, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    const/4 p1, 0x0

    aget p1, p2, p1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x41f00000    # 30.0f

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p2, v3}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget p1, v6, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v4, p0}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public initPortScalePivot(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;I)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getIndicator()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/launcher/Workspace;->resetPivotState(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;Landroid/view/View;Lcom/zui/launcher/Hotseat;)V

    return-void

    :cond_0
    const/4 v4, 0x3

    if-ne p2, v4, :cond_1

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/launcher/Workspace;->resetPivotState(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;Landroid/view/View;Lcom/zui/launcher/Hotseat;)V

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setWorkspacePivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setIndicatorPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setHotseatPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->calculateRotateAngle()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v4, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v6, p0

    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setPivotY(F)V

    new-array p0, v3, [I

    invoke-virtual {v4, v1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p0, v6

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setPivotY(F)V

    new-array p0, v3, [I

    invoke-virtual {v4, v0, p0}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p0, v6

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    neg-float p0, p0

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setPivotY(F)V

    :cond_2
    return-void
.end method

.method public initTempView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00cc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method protected initWorkspace()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->Q0()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->setWallpaperDimension()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->mTouchSlopSquare:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->mUpDownTouchSlopSquare:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070679

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->u0:I

    return-void
.end method

.method public insertNewWorkspaceScreen(II)Lcom/zui/launcher/CellLayout;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertNewWorkspaceScreen screenId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget v3, v1, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->cellLayoutBottomPaddingPx:I

    iget-object v4, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zui/launcher/CellLayout;->setRotationMode(Lcom/zui/launcher/graphics/RotationMode;)V

    invoke-virtual {v0, v3, v2, v3, v1}, Lcom/zui/launcher/CellLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v1, p2, p1}, Lcom/zui/launcher/util/IntArray;->add(II)V

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/CellLayout;I)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 p1, 0x2

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/CellLayout;->enableAccessibleDrag(ZI)V

    :cond_2
    return-object v0
.end method

.method public insertNewWorkspaceScreen(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreen(II)Lcom/zui/launcher/CellLayout;

    return-void
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreen(II)Lcom/zui/launcher/CellLayout;

    return-void
.end method

.method public invalidateAllViews(Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p2}, Lcom/zui/launcher/Workspace;->handleViewTextColor(Landroid/view/View;Ljava/lang/Object;I)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDockViewArea()Lcom/zui/launcher/XDockViewArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/XDockViewArea;->refreshTextColor()V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->resetWidgetBg(Landroid/content/Context;)V

    return-void
.end method

.method public isCurrentDefaultPage()Z
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDropEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFinishedSwitchingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->K:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/zui/launcher/Workspace;->g0:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

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

.method public isInSpecialPage()Z
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result p0

    return p0
.end method

.method public isLeosReordering()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->V0:Lcom/zui/launcher/ReorderActor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor;->isLeosReordering()Z

    move-result p0

    return p0
.end method

.method public isOverlayIndicatorShow()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasOverlayScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSameOrientation(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/Workspace;->R0:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->S0:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/Workspace;->N0:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/Workspace;->O0:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBottomFingerCurrX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/Workspace;->R0:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "mBottomFingerCurrY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/Workspace;->S0:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "mTopFingerCurrX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/Workspace;->N0:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "mTopFingerCurrY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/Workspace;->O0:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/zui/launcher/Workspace;->O0:F

    iget v0, p0, Lcom/zui/launcher/Workspace;->K0:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/Workspace;->S0:F

    iget v1, p0, Lcom/zui/launcher/Workspace;->M0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/Workspace;->N0:F

    iget v2, p0, Lcom/zui/launcher/Workspace;->J0:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/Workspace;->R0:F

    iget v3, p0, Lcom/zui/launcher/Workspace;->L0:F

    sub-float/2addr v2, v3

    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int p1, p1

    float-to-int v0, v0

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/zui/launcher/Workspace;->h0(IIII)Z

    move-result p0

    return p0
.end method

.method public isSameOrientationUseDegree(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/Workspace;->R0:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/Workspace;->S0:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/zui/launcher/Workspace;->N0:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/Workspace;->O0:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBottomFingerCurrX = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->R0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mBottomFingerCurrY = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->S0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mTopFingerCurrX = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->N0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mTopFingerCurrY = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/Workspace;->O0:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/zui/launcher/Workspace;->O0:F

    iget v2, p0, Lcom/zui/launcher/Workspace;->K0:F

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/zui/launcher/Workspace;->S0:F

    iget v3, p0, Lcom/zui/launcher/Workspace;->M0:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/zui/launcher/Workspace;->N0:F

    iget v4, p0, Lcom/zui/launcher/Workspace;->J0:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/zui/launcher/Workspace;->R0:F

    iget p0, p0, Lcom/zui/launcher/Workspace;->L0:F

    sub-float/2addr v4, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float p0, p0, v5

    if-lez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_1
    cmpl-float p0, p0, v5

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    const-wide v9, 0x4066800000000000L    # 180.0

    if-lez p0, :cond_2

    mul-float p0, p1, v2

    cmpl-float p0, p0, v6

    if-lez p0, :cond_3

    div-float/2addr v3, p1

    float-to-double p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    mul-double/2addr p0, v9

    div-double/2addr p0, v7

    double-to-float p0, p0

    div-float/2addr v4, v2

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v9

    div-double/2addr v2, v7

    double-to-float p1, v2

    sub-float v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y degreeTop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "degreeBottom = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    cmpg-float p0, v2, v5

    if-gez p0, :cond_3

    return v1

    :cond_2
    mul-float p0, v3, v4

    cmpl-float p0, p0, v6

    if-lez p0, :cond_3

    div-float/2addr p1, v3

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    mul-double/2addr p0, v9

    div-double/2addr p0, v7

    double-to-float p0, p0

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v9

    div-double/2addr v2, v7

    double-to-float p1, v2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public isSwitchingState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Workspace;->K:Z

    return p0
.end method

.method public justHasExtraEmptyScreen()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v0, -0xc9

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p0

    return p0
.end method

.method public synthetic k0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getIsLocationEnd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const v1, 0x35d8b

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->checkDeleteViewIcon()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic l0(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/category/AllAppsCategory;IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Workspace;->openFolderAfterCreated(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;)V

    invoke-virtual {p2}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/launcher/folder/Folder;->setFirstOpenFlag(Z)V

    invoke-virtual {p3, p4}, Lcom/zui/launcher/category/AllAppsCategory;->trackEventCreateFolder(I)V

    int-to-long p1, p5

    invoke-virtual {p3, p1, p2, p4}, Lcom/zui/launcher/category/AllAppsCategory;->getCategoryApps(JI)Ljava/util/LinkedHashSet;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p6, p5, p1}, Lcom/zui/launcher/Launcher;->initFolderOtherApps(Ljava/lang/String;ILjava/util/LinkedHashSet;)V

    return-void
.end method

.method public lenovoCpuState()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getLenovoCpuTogetherCurrentChild()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lenovoCpuState  list ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->cpuPrintLog(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->endAllPolling(Z)Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->startPolling()V

    :goto_0
    return-void
.end method

.method public lockWallpaperToDefaultPage()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    return-void
.end method

.method public mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/zui/launcher/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, v3, p1}, Lcom/zui/launcher/Workspace;->A0(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/Workspace$ItemOperator;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public moveItemToPosition(Landroid/view/View;III)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    move/from16 v6, p3

    move/from16 v5, p4

    const/4 v1, 0x0

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    iget v3, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v7}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v8

    if-ne v3, v8, :cond_1

    iget v3, v4, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne v3, v6, :cond_1

    iget v3, v4, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ne v3, v5, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v7}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v3

    int-to-long v10, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v9, v4, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v3, v8, v9}, Lcom/zui/launcher/CellLayout;->removeViewAt(II)Landroid/view/View;

    new-instance v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, v4, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-direct {v3, v6, v5, v8, v9}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v15, v6, v5}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    return v1

    :cond_2
    instance-of v1, v2, Lcom/zui/launcher/folder/FolderIcon;

    xor-int/lit8 v16, v1, 0x1

    iget v1, v4, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long v8, v1

    iget v14, v4, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, v4, Lcom/zui/launcher/ItemInfo;->spanY:I

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v17, v15

    move v15, v1

    invoke-static/range {v8 .. v15}, Lcom/zui/launcher/LauncherModel;->C(JJIIII)I

    move-result v8

    const/4 v9, -0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object v10, v3

    move v3, v9

    move-object v9, v4

    move v4, v8

    move-object v5, v10

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v1, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v9, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v0, v7}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v4

    move-object v0, v1

    move-object v1, v2

    move-object v2, v9

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;IIII)V

    :cond_3
    return v8
.end method

.method public moveToDefaultPage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->notifyPageSwitchListener(I)V

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ge p1, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    :cond_1
    return-void
.end method

.method public numCustomPages()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAddDropTarget(Lcom/zui/launcher/DropTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragController;->addDropTarget(Lcom/zui/launcher/DropTarget;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->computeScroll()V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/dragndrop/DragController;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace;->E0:Z

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace;->C0:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->showScrimView()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->handleTempViewDeviceChange()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreen(ZZ)V

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->X0()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/HotseatLayout;->removeEmptyCell(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/HotseatLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/HotseatLayout;->onDragEnd()V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->getLastDropTarget()Lcom/zui/launcher/DropTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    :cond_3
    iput-object v2, p0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->notifyMissedNumChanged()V

    return-void
.end method

.method public onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->V:Z

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->W:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->H:[F

    invoke-virtual {p1, v2}, Lcom/zui/launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/Workspace;->H:[F

    aget v0, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, p1, v0, v2}, Lcom/zui/launcher/Workspace;->P0(Lcom/zui/launcher/DropTarget$DragObject;FF)Z

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v0, v0, Lcom/zui/launcher/folder/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->setCurrentDropLayout(Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->setCurrentDragOverlappingLayout(Lcom/zui/launcher/CellLayout;)V

    :cond_0
    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of p1, p1, Lcom/zui/launcher/widget/BaseWidgetSheet;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->setCurrentDropLayout(Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->setCurrentDragOverlappingLayout(Lcom/zui/launcher/CellLayout;)V

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    iget p1, p0, Lcom/zui/launcher/Workspace;->a0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->V:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->W:Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->setCurrentDropLayout(Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->setCurrentDragOverlappingLayout(Lcom/zui/launcher/CellLayout;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->J:Lcom/zui/launcher/dragndrop/SpringLoadedDragController;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->cancel()V

    return-void
.end method

.method public onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->U0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v7, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    if-nez v7, :cond_1

    return-void

    :cond_1
    iget v0, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-ltz v0, :cond_11

    iget v0, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-ltz v0, :cond_11

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->H:[F

    invoke-virtual {v8, v0}, Lcom/zui/launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/zui/launcher/Workspace;->H:[F

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    :goto_0
    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->H:[F

    const/16 v17, 0x0

    aget v1, v0, v17

    const/4 v15, 0x1

    aget v0, v0, v15

    invoke-direct {v9, v8, v1, v0}, Lcom/zui/launcher/Workspace;->P0(Lcom/zui/launcher/DropTarget$DragObject;FF)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget-object v1, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->J:Lcom/zui/launcher/dragndrop/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->cancel()V

    goto :goto_1

    :cond_3
    iget-object v0, v9, Lcom/zui/launcher/Workspace;->J:Lcom/zui/launcher/dragndrop/SpringLoadedDragController;

    iget-object v1, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;->setAlarm(Lcom/zui/launcher/CellLayout;)V

    :cond_4
    :goto_1
    iget-object v0, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_10

    iget-object v1, v9, Lcom/zui/launcher/Workspace;->H:[F

    invoke-direct {v9, v0, v1}, Lcom/zui/launcher/Workspace;->B0(Lcom/zui/launcher/CellLayout;[F)V

    iget v0, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v2, v7, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    if-lez v2, :cond_5

    iget v3, v7, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    if-lez v3, :cond_5

    move/from16 v22, v2

    move/from16 v23, v3

    goto :goto_2

    :cond_5
    move/from16 v22, v0

    move/from16 v23, v1

    :goto_2
    iget-object v0, v9, Lcom/zui/launcher/Workspace;->H:[F

    aget v1, v0, v17

    float-to-int v1, v1

    aget v0, v0, v15

    float-to-int v2, v0

    iget-object v5, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v6, v9, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/zui/launcher/Workspace;->w:[I

    aget v6, v0, v17

    aget v1, v0, v15

    aget v2, v0, v17

    aget v0, v0, v15

    invoke-virtual {v9, v2, v0}, Lcom/zui/launcher/Workspace;->O0(II)V

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v2, v9, Lcom/zui/launcher/Workspace;->H:[F

    aget v3, v2, v17

    aget v2, v2, v15

    iget-object v4, v9, Lcom/zui/launcher/Workspace;->w:[I

    invoke-virtual {v0, v3, v2, v4}, Lcom/zui/launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v0

    iget-object v2, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v3, v9, Lcom/zui/launcher/Workspace;->w:[I

    invoke-direct {v9, v2, v3, v0, v8}, Lcom/zui/launcher/Workspace;->z0(Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;)V

    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/Workspace;->e0(Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/Workspace;->E0(Lcom/zui/launcher/DropTarget$DragObject;)V

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->X()V

    :cond_6
    return-void

    :cond_7
    iget-object v10, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v0, v17

    float-to-int v11, v2

    aget v0, v0, v15

    float-to-int v12, v0

    iget v13, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v14, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->w:[I

    move v5, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/zui/launcher/CellLayout;->K(IIIILandroid/view/View;[I)Z

    move-result v24

    const/4 v15, 0x2

    if-nez v24, :cond_b

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    instance-of v1, v0, Lcom/zui/launcher/HotseatLayout;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/HotseatLayout;->addEmptyCell()V

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->H:[F

    aget v1, v0, v17

    float-to-int v1, v1

    aget v0, v0, v5

    float-to-int v2, v0

    iget-object v10, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v11, v9, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v0, p0

    move/from16 v3, v22

    move/from16 v4, v23

    move v14, v5

    move-object v5, v10

    move v10, v6

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/zui/launcher/Workspace;->w:[I

    aget v1, v0, v17

    if-eq v10, v1, :cond_8

    const-string v0, "this call must be careful!!"

    invoke-static {v0}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/Workspace;->onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V

    return-void

    :cond_8
    iget-object v1, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    move-object v10, v1

    check-cast v10, Lcom/zui/launcher/HotseatLayout;

    iget-object v1, v9, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v17

    float-to-int v11, v2

    aget v1, v1, v14

    float-to-int v12, v1

    iget v13, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    move v6, v14

    move v14, v1

    move v5, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/zui/launcher/HotseatLayout;->isNearestDropLocationTempOccupied(IIIILandroid/view/View;[I)Z

    move-result v24

    goto :goto_3

    :cond_9
    move v6, v5

    move v5, v15

    :goto_3
    iget-object v0, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v2, v9, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget-object v1, v9, Lcom/zui/launcher/Workspace;->w:[I

    aget v3, v1, v17

    aget v4, v1, v6

    iget v10, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/4 v11, 0x0

    move-object/from16 v1, v21

    move v15, v5

    move v5, v10

    move v14, v6

    move v6, v7

    move v7, v11

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->a0(Landroid/view/View;Lcom/zui/launcher/graphics/DragPreviewProvider;IIIIZLcom/zui/launcher/DropTarget$DragObject;)V

    :cond_a
    move v11, v14

    move v12, v15

    goto/16 :goto_4

    :cond_b
    move v14, v5

    move v10, v6

    iget v0, v9, Lcom/zui/launcher/Workspace;->a0:I

    if-eqz v0, :cond_c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    :cond_c
    iget-object v0, v9, Lcom/zui/launcher/Workspace;->S:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v9, Lcom/zui/launcher/Workspace;->b0:I

    if-ne v0, v10, :cond_d

    iget v0, v9, Lcom/zui/launcher/Workspace;->c0:I

    if-eq v0, v1, :cond_a

    :cond_d
    new-array v0, v15, [I

    iget-object v10, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v1, v9, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v17

    float-to-int v11, v2

    aget v1, v1, v14

    float-to-int v12, v1

    iget v1, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v2, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/zui/launcher/Workspace;->w:[I

    const/16 v20, 0x0

    move/from16 v13, v22

    move v6, v14

    move/from16 v14, v23

    move v5, v15

    move v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v21

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v10 .. v20}, Lcom/zui/launcher/CellLayout;->P(IIIIIILandroid/view/View;[I[II)[I

    new-instance v10, Lcom/zui/launcher/Workspace$y;

    iget-object v2, v9, Lcom/zui/launcher/Workspace;->H:[F

    iget v11, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, v22

    move/from16 v4, v23

    move v12, v5

    move v5, v11

    move v11, v6

    move v6, v7

    move-object/from16 v7, p1

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/Workspace$y;-><init>(Lcom/zui/launcher/Workspace;[FIIIILcom/zui/launcher/DropTarget$DragObject;Landroid/view/View;)V

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->S:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0, v10}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->S:Lcom/zui/launcher/Alarm;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    iget-object v0, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    instance-of v1, v0, Lcom/zui/launcher/HotseatLayout;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/HotseatLayout;->z0()V

    :cond_e
    :goto_4
    iget v0, v9, Lcom/zui/launcher/Workspace;->a0:I

    if-eq v0, v11, :cond_f

    if-eq v0, v12, :cond_f

    if-nez v24, :cond_10

    :cond_f
    iget-object v0, v9, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->X()V

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 5

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/133009122"

    if-eqz v0, :cond_0

    const-string v0, "onDragStart 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragView;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-virtual {v3, v0}, Lcom/zui/launcher/graphics/DragPreviewProvider;->generateDragOutline(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v4}, Lcom/zui/launcher/dragndrop/DragView;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-virtual {v3, v0}, Lcom/zui/launcher/graphics/DragPreviewProvider;->generateDragOutline(Ljava/util/List;)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->X0()V

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const/high16 v3, 0x10000

    invoke-static {v0, v3}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    :cond_5
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-boolean p2, p2, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz p2, :cond_9

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-ne p2, p0, :cond_8

    goto :goto_2

    :cond_8
    move p2, v2

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_b

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->u:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->addExtraEmptyScreenOnDrag()V

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-eq p2, p0, :cond_b

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result p2

    :goto_4
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    if-ge p2, v0, :cond_b

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    iget-object v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/CellLayout;->hasReorderSolution(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    goto :goto_5

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_c

    const-string p0, "onDragStart 2"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 40

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->H:[F

    invoke-virtual {v11, v0}, Lcom/zui/launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v10, Lcom/zui/launcher/Workspace;->H:[F

    iget-object v8, v10, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    if-eqz v8, :cond_0

    invoke-direct {v10, v8, v0}, Lcom/zui/launcher/Workspace;->B0(Lcom/zui/launcher/CellLayout;[F)V

    :cond_0
    instance-of v0, v8, Lcom/zui/launcher/HotseatLayout;

    const/4 v9, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_3

    move-object v0, v8

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    iget-boolean v1, v10, Lcom/zui/launcher/Workspace;->V:Z

    if-nez v1, :cond_2

    iget-boolean v1, v10, Lcom/zui/launcher/Workspace;->W:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v15

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v9

    :goto_1
    invoke-virtual {v0, v1}, Lcom/zui/launcher/HotseatLayout;->retrieveCellCount(Z)V

    :cond_3
    iget-object v0, v11, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-ne v0, v10, :cond_34

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-nez v0, :cond_4

    goto/16 :goto_1e

    :cond_4
    iget-object v13, v0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v23, 0x0

    const/16 v24, -0x1

    if-eqz v8, :cond_26

    iget-boolean v0, v11, Lcom/zui/launcher/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_26

    invoke-virtual {v10, v13}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-eq v0, v8, :cond_5

    move/from16 v25, v9

    goto :goto_2

    :cond_5
    move/from16 v25, v15

    :goto_2
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v8}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v5, -0x65

    goto :goto_3

    :cond_6
    const/16 v0, -0x64

    move v5, v0

    :goto_3
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v0, v0, v15

    if-gez v0, :cond_7

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget v0, v0, Lcom/zui/launcher/CellLayout$CellInfo;->screenId:I

    goto :goto_4

    :cond_7
    invoke-virtual {v10, v8}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v0

    :goto_4
    move/from16 v16, v0

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    move v4, v0

    goto :goto_5

    :cond_8
    move v4, v9

    :goto_5
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    move v3, v0

    goto :goto_6

    :cond_9
    move v3, v9

    :goto_6
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->H:[F

    aget v1, v0, v15

    float-to-int v1, v1

    aget v0, v0, v9

    float-to-int v2, v0

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 p2, v3

    move v3, v4

    move v14, v4

    move/from16 v4, p2

    move/from16 v29, v5

    move-object v5, v8

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v1, v10, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v15

    aget v1, v1, v9

    invoke-virtual {v8, v2, v1, v0}, Lcom/zui/launcher/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v17

    iget-object v4, v10, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v6, 0x0

    iget-object v7, v11, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v29

    move-object v3, v8

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->L(Landroid/view/View;ILcom/zui/launcher/CellLayout;[IFZLcom/zui/launcher/dragndrop/DragView;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v3, v10, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v8

    move/from16 v4, v17

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->A(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_15

    :cond_a
    iget-object v7, v11, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget v0, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v2, v7, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    if-lez v2, :cond_b

    iget v3, v7, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    if-lez v3, :cond_b

    move v0, v2

    move v1, v3

    :cond_b
    if-eqz v26, :cond_d

    iget-object v2, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->hasVerticalHotseat()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget-object v3, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v3, v3, v9

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    goto :goto_7

    :cond_c
    iget-object v2, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v2, v2, v15

    :goto_7
    move/from16 v16, v2

    :cond_d
    move/from16 v2, v16

    iget v3, v7, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne v3, v2, :cond_e

    iget v3, v7, Lcom/zui/launcher/ItemInfo;->container:I

    move/from16 v6, v29

    if-ne v3, v6, :cond_f

    iget v3, v7, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget-object v4, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v5, v4, v15

    if-ne v3, v5, :cond_f

    iget v3, v7, Lcom/zui/launcher/ItemInfo;->cellY:I

    aget v4, v4, v9

    if-ne v3, v4, :cond_f

    move/from16 v35, v9

    goto :goto_8

    :cond_e
    move/from16 v6, v29

    :cond_f
    move/from16 v35, v15

    :goto_8
    if-eqz v35, :cond_10

    iget-boolean v3, v10, Lcom/zui/launcher/Workspace;->K:Z

    if-eqz v3, :cond_10

    move/from16 v36, v9

    goto :goto_9

    :cond_10
    move/from16 v36, v15

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v3

    if-nez v3, :cond_11

    if-nez v36, :cond_11

    iget-object v3, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v4, v3, v15

    aget v3, v3, v9

    move/from16 v5, p2

    invoke-virtual {v8, v4, v3, v14, v5}, Lcom/zui/launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_12

    move v3, v9

    goto :goto_a

    :cond_11
    move/from16 v5, p2

    :cond_12
    move v3, v15

    :goto_a
    const/4 v4, 0x2

    new-array v15, v4, [I

    if-eqz v3, :cond_13

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    aput v24, v0, v9

    const/16 v16, 0x0

    aput v24, v0, v16

    move-object/from16 p2, v13

    move-object/from16 v27, v15

    move/from16 v4, v16

    const/16 v11, -0x65

    goto :goto_b

    :cond_13
    const/16 v16, 0x0

    iget-object v4, v10, Lcom/zui/launcher/Workspace;->H:[F

    aget v12, v4, v16

    float-to-int v12, v12

    aget v4, v4, v9

    float-to-int v4, v4

    iget-object v9, v10, Lcom/zui/launcher/Workspace;->w:[I

    const/16 v22, 0x2

    move/from16 v17, v12

    const/16 v11, -0x65

    move-object v12, v8

    move-object/from16 p2, v13

    move/from16 v13, v17

    move/from16 v17, v14

    move v14, v4

    move-object/from16 v27, v15

    move/from16 v4, v16

    move v15, v0

    move/from16 v16, v1

    move/from16 v18, v5

    move-object/from16 v19, p2

    move-object/from16 v20, v9

    move-object/from16 v21, v27

    invoke-virtual/range {v12 .. v22}, Lcom/zui/launcher/CellLayout;->P(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    :goto_b
    if-eqz v26, :cond_15

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget-object v1, v10, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    goto :goto_c

    :cond_14
    const/4 v5, 0x1

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v0, v0, v4

    :goto_c
    move v9, v0

    goto :goto_d

    :cond_15
    const/4 v5, 0x1

    move v9, v2

    :goto_d
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v1, v0, v4

    if-ltz v1, :cond_16

    aget v0, v0, v5

    if-ltz v0, :cond_16

    const/4 v15, 0x1

    goto :goto_e

    :cond_16
    move v15, v4

    :goto_e
    move-object/from16 v12, p2

    if-eqz v15, :cond_18

    instance-of v0, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_18

    aget v0, v27, v4

    iget v1, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    aget v1, v27, v0

    iget v2, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-eq v1, v2, :cond_18

    goto :goto_f

    :cond_17
    const/4 v0, 0x1

    :goto_f
    aget v1, v27, v4

    iput v1, v7, Lcom/zui/launcher/ItemInfo;->spanX:I

    aget v1, v27, v0

    iput v1, v7, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v13, v12

    check-cast v13, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    aget v2, v27, v4

    aget v5, v27, v0

    invoke-static {v13, v1, v2, v5}, Lcom/zui/launcher/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    const/4 v13, 0x1

    goto :goto_10

    :cond_18
    move v13, v4

    :goto_10
    if-eqz v15, :cond_21

    iget v0, v10, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {v10, v0}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    if-eq v0, v9, :cond_19

    if-nez v26, :cond_19

    invoke-virtual {v10, v9}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    move v14, v0

    goto :goto_11

    :cond_19
    move/from16 v14, v24

    :goto_11
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/zui/launcher/ItemInfo;

    if-eqz v25, :cond_1c

    invoke-virtual {v10, v12}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v12}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1a
    if-eqz v0, :cond_1b

    iget-object v1, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0, v12}, Lcom/zui/launcher/HotseatLayout;->commitReorderState(Landroid/view/View;)V

    :cond_1b
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v5, v0, v4

    const/4 v1, 0x1

    aget v16, v0, v1

    iget v3, v15, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v2, v15, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v17, v2

    move v2, v6

    move/from16 v18, v3

    move v3, v9

    move v11, v4

    move v4, v5

    move/from16 v5, v16

    move/from16 v38, v6

    move/from16 v6, v18

    move-object/from16 v39, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    goto :goto_12

    :cond_1c
    move v11, v4

    move/from16 v38, v6

    move-object/from16 v39, v7

    :goto_12
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-object v1, v10, Lcom/zui/launcher/Workspace;->w:[I

    aget v2, v1, v11

    iput v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iput v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iput v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v1, v39

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput-boolean v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    move/from16 v2, v38

    const/16 v3, -0x65

    if-eq v2, v3, :cond_1d

    instance-of v3, v12, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1d

    move-object v3, v12

    check-cast v3, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_1d

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v4, :cond_1d

    move-object/from16 v7, p1

    iget-boolean v4, v7, Lcom/zui/launcher/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v4, :cond_1e

    new-instance v4, Lcom/zui/launcher/Workspace$v;

    invoke-direct {v4, v10, v3, v8}, Lcom/zui/launcher/Workspace$v;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Lcom/zui/launcher/CellLayout;)V

    goto :goto_13

    :cond_1d
    move-object/from16 v7, p1

    :cond_1e
    move-object/from16 v4, v23

    :goto_13
    instance-of v3, v12, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v3, :cond_20

    move-object v3, v12

    check-cast v3, Lcom/zui/launcher/LeosWidgetInterface;

    iget-object v5, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5, v3}, Lcom/zui/launcher/Launcher;->C2(Lcom/zui/launcher/LeosWidgetInterface;)V

    const-string v5, "yudl3"

    const-string v6, "workspace   onDropExternal else  "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v5, v3, Lcom/zui/launcher/DaulTimeZoneViewOne;

    if-nez v5, :cond_1f

    instance-of v3, v3, Lcom/zui/launcher/NewDualTimeZoneWidget;

    if-eqz v3, :cond_20

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Workspace;->daulTimeZoneCancelLongPress()V

    :cond_20
    iget-object v3, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v27

    iget v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object/from16 v28, v15

    move/from16 v29, v2

    move/from16 v30, v9

    move/from16 v31, v3

    move/from16 v32, v0

    move/from16 v33, v5

    move/from16 v34, v1

    invoke-virtual/range {v27 .. v34}, Lcom/zui/launcher/model/ModelWriter;->modifyItemInDatabase(Lcom/zui/launcher/ItemInfo;IIIIII)V

    move-object v15, v4

    move v1, v13

    move v0, v14

    goto :goto_14

    :cond_21
    move-object/from16 v7, p1

    move v11, v4

    if-nez v3, :cond_22

    invoke-virtual {v10, v8}, Lcom/zui/launcher/Workspace;->onNoCellFound(Landroid/view/View;)V

    :cond_22
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-object v1, v10, Lcom/zui/launcher/Workspace;->w:[I

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    aput v2, v1, v11

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, v12}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    instance-of v1, v0, Lcom/zui/launcher/HotseatLayout;

    if-eqz v1, :cond_23

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0, v12}, Lcom/zui/launcher/HotseatLayout;->itemToOriginalPosition(Landroid/view/View;)V

    :cond_23
    move v1, v13

    move-object/from16 v15, v23

    move/from16 v0, v24

    :goto_14
    const-wide/16 v13, 0x1f4

    goto :goto_16

    :cond_24
    :goto_15
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v0, v1, v13, v14}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_25
    return-void

    :cond_26
    move-object v12, v13

    move-wide v13, v6

    move-object v7, v11

    move v11, v15

    move v1, v11

    move/from16 v35, v1

    move/from16 v36, v35

    move-object/from16 v15, v23

    move/from16 v0, v24

    :goto_16
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_17

    :cond_27
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/zui/launcher/CellLayout;

    :goto_17
    move-object/from16 v9, v23

    iget-object v2, v7, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_31

    if-eqz v36, :cond_2a

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v15, v12, v1}, Lcom/zui/launcher/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :cond_28
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDropTargetBar()Lcom/zui/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DropTargetBar;->onDragEnd()V

    if-eqz v9, :cond_29

    invoke-virtual {v9, v12}, Lcom/zui/launcher/CellLayout;->O(Landroid/view/View;)V

    :cond_29
    return-void

    :cond_2a
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2c

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2c

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2b

    goto :goto_18

    :cond_2b
    move/from16 v37, v11

    goto :goto_19

    :cond_2c
    :goto_18
    const/16 v37, 0x1

    :goto_19
    if-eqz v37, :cond_2f

    if-eqz v1, :cond_2d

    const/4 v6, 0x2

    goto :goto_1a

    :cond_2d
    move v6, v11

    :goto_1a
    if-eqz v9, :cond_2e

    iget-object v3, v7, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v4, v7, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v9

    move-object v5, v15

    move-object v11, v7

    move-object v7, v12

    move-object v13, v9

    move/from16 v9, v35

    invoke-virtual/range {v0 .. v9}, Lcom/zui/launcher/Workspace;->animateWidgetDrop(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Ljava/lang/Runnable;ILandroid/view/View;ZZ)V

    goto :goto_1c

    :cond_2e
    move-object v11, v7

    move-object v13, v9

    goto :goto_1c

    :cond_2f
    move-object v11, v7

    move-object v13, v9

    if-gez v0, :cond_30

    move/from16 v4, v24

    goto :goto_1b

    :cond_30
    const/16 v0, 0x12c

    move v4, v0

    :goto_1b
    iget-object v0, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, v11, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v2, v11, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-object v3, v12

    move-object v5, v15

    move-object/from16 v6, p0

    move/from16 v7, v35

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Z)V

    :goto_1c
    move-object v0, v11

    goto :goto_1d

    :cond_31
    move-object v0, v7

    move-object v13, v9

    iput-boolean v11, v0, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    if-eqz v13, :cond_32

    invoke-virtual {v13, v12}, Lcom/zui/launcher/CellLayout;->O(Landroid/view/View;)V

    :cond_32
    iget-object v1, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, v10, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4, v15}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;JLjava/lang/Runnable;)V

    :cond_33
    move/from16 v15, v35

    goto :goto_1f

    :cond_34
    :goto_1e
    move-object v0, v11

    move v11, v15

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, v10, Lcom/zui/launcher/Workspace;->H:[F

    aget v3, v2, v11

    float-to-int v3, v3

    aput v3, v1, v11

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v1, v3

    invoke-direct {v10, v1, v8, v0}, Lcom/zui/launcher/Workspace;->F0([ILcom/zui/launcher/CellLayout;Lcom/zui/launcher/DropTarget$DragObject;)V

    move v15, v11

    :goto_1f
    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_35

    if-nez v15, :cond_35

    const v1, 0x7f120410

    invoke-virtual {v0, v1}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_35
    return-void
.end method

.method public onDropCompleteOutside()V
    .locals 0

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 1

    if-eqz p3, :cond_0

    if-eq p1, p0, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/zui/launcher/XDockView;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    instance-of p1, p1, Lcom/zui/launcher/Hotseat;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "Launcher.Workspace"

    const-string p3, "onDropCompleted, target instanceof XDockView"

    invoke-static {p1, p3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Workspace;->animateToOldPlace(Lcom/zui/launcher/DropTarget$DragObject;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget v0, p1, Lcom/zui/launcher/CellLayout$CellInfo;->container:I

    iget p1, p1, Lcom/zui/launcher/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p3, v0, p1}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/zui/launcher/CellLayout;->O(Landroid/view/View;)V

    :cond_3
    :goto_0
    iget-object p1, p2, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->galleryWidgetsSend()V

    iget-boolean p2, p2, Lcom/zui/launcher/DropTarget$DragObject;->cancelled:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    if-eqz p2, :cond_8

    iget-object p2, p2, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    move-object p2, p3

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->q:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/HotseatLayout;

    if-nez v0, :cond_6

    :cond_5
    instance-of p2, p2, Lcom/zui/launcher/HotseatLayout;

    if-eqz p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/HotseatLayout;->iconsBackToCellX()V

    :cond_7
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iput-object p3, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    return-void
.end method

.method public onFlingShowGlobalSearch()V
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->doAddExcessiveView()V

    const-string v0, "GlobalSearch"

    const-string v1, "onFlingShowGlobalSearch  click  ------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->updateDisableAnimationsToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->doGlobalSearch()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/zui/launcher/Workspace;->o0:I

    iget-object v4, p0, Lcom/zui/launcher/Workspace;->B0:Lcom/zui/launcher/GlobalSearchView;

    iget-object v5, p0, Lcom/zui/launcher/Workspace;->A0:Lcom/zui/launcher/LauncherRootView;

    iget-object v6, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->onFlingShowGlobalSearch(Landroid/view/View;ILcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->Y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->Z:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mCanTap:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->T0:Z

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->setWidgetDown(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workspace, onInterceptTouchEvent, ev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->Q:Z

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->jumpToFinal()V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/zui/launcher/PagedView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->a1()V

    return-void
.end method

.method public onNoCellFound(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1203f3

    goto :goto_0

    :cond_0
    const p1, 0x7f12054f

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v4, v2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/zui/launcher/Workspace;->setOverlayShown(Z)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v1, v3, v6, v4, v7}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/zui/launcher/Workspace;->m0:F

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->announcePageForAccessibility()V

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/zui/launcher/Workspace;->setOverlayShown(Z)V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->V0()Z

    :cond_4
    :goto_1
    sub-float/2addr p1, v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-boolean v3, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_5

    neg-float v1, v1

    :cond_5
    iput v1, p0, Lcom/zui/launcher/Workspace;->m0:F

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->Z0(F)V

    iput p1, p0, Lcom/zui/launcher/Workspace;->y0:F

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/zui/launcher/views/BaseDragLayer;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 3

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onPageBeginTransition()V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->X0()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->closeTopFloatView()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->daulTimeZoneCancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->r0:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasTimeWeatherViewCurrentPage()Lcom/zui/launcher/TimeWidgetLongClickViewOne;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->setClockAnimationStatus(Z)V

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->r0:Z

    :cond_0
    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->s0:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasTimeWeatherWidgetView4X2CurrentPage()Lcom/zui/launcher/TimeWeatherWidgetView4X2old;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setClockAnimationStatus(Z)V

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->s0:Z

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewThreeChild()Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->setClockAnimationStatus(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewFiveChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;->setClockAnimationStatus(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewSixChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;->setClockAnimationStatus(Z)V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->widgetAnimationWState()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->mobaTimeWidgetAnimationState()V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->L0()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hideScrimView()V

    return-void
.end method

.method protected onPageEndTransition()V
    .locals 4

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onPageEndTransition()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->galleryWidgetsSend()V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->X0()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->closeTopFloatView()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->daulTimeZoneCancelLongPress()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->forceTouchMove()V

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->M:Z

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentScreenId()I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/Workspace;->t0:I

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const/16 v3, -0x64

    invoke-virtual {v2, v3, v0}, Lcom/zui/launcher/Launcher;->onPageMove(II)V

    iput v0, p0, Lcom/zui/launcher/Workspace;->t0:I

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->showScrimView()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->lenovoCpuState()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasTimeWeatherViewCurrentPage()Lcom/zui/launcher/TimeWidgetLongClickViewOne;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/zui/launcher/Workspace;->r0:Z

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->setClockAnimationStatus(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasTimeWeatherWidgetView4X2CurrentPage()Lcom/zui/launcher/TimeWeatherWidgetView4X2old;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/zui/launcher/Workspace;->s0:Z

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setClockAnimationStatus(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewThreeChild()Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->setClockAnimationStatus(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewFiveChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;->setClockAnimationStatus(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewSixChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;->setClockAnimationStatus(Z)V

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->mobaTimeWidgetAnimationState()V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->widgetAnimationWState()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iget-boolean p1, p0, Lcom/zui/launcher/Workspace;->K:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->a1()V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->P()V

    return-void
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onScrollInteractionBegin()V

    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onScrollInteractionEnd()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->R0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->onViewAdded(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A Workspace can only have CellLayout children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->F:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    :try_start_0
    iget-object v5, p0, Lcom/zui/launcher/Workspace;->p:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v3, :cond_0

    const-string p0, "android.wallpaper.tap"

    goto :goto_0

    :cond_0
    const-string p0, "android.wallpaper.secondaryTap"

    :goto_0
    move-object v7, p0

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected openFolderAfterCreated(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->J()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result v0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/16 v1, 0x190

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    const/16 p1, 0x96

    new-instance v2, Lcom/zui/launcher/y2;

    invoke-direct {v2, p0, p2}, Lcom/zui/launcher/y2;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/folder/FolderIcon;)V

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/zui/launcher/Workspace;->R(IILjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zui/launcher/Workspace;->animateOpenFolder(Lcom/zui/launcher/folder/FolderIcon;)V

    :goto_0
    return-void
.end method

.method public padGlobalSearchPivotLocation(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;I)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getHotseat()Lcom/zui/launcher/Hotseat;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/Workspace;->resetPivotState(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;Landroid/view/View;Lcom/zui/launcher/Hotseat;)V

    return-void

    :cond_0
    const/4 v4, 0x3

    if-ne p2, v4, :cond_1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/Workspace;->resetPivotState(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;Landroid/view/View;Lcom/zui/launcher/Hotseat;)V

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setWorkspacePivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setIndicatorPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    new-instance p2, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p2, v4, v6}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setHotseatPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v5

    add-float/2addr p1, p2

    const/high16 p2, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p2, v4}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iget v4, p2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget p0, p2, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    invoke-virtual {v0, p0}, Landroid/view/View;->setPivotX(F)V

    iget p0, p2, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setPivotX(F)V

    new-array p0, v3, [I

    invoke-virtual {v2, v0, p0}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    const/4 p2, 0x1

    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setPivotY(F)V

    new-array p0, v3, [I

    invoke-virtual {v2, v1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setPivotY(F)V

    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    return-void
.end method

.method public prepareDragWithProvider(Lcom/zui/launcher/graphics/DragPreviewProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->N:Lcom/zui/launcher/graphics/DragPreviewProvider;

    return-void
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->I0:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->H0:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->T0:Z

    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->I0:Z

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zui/launcher/Workspace;->l0:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_3

    return v4

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v1, :cond_6

    iput-boolean v4, p0, Lcom/zui/launcher/Workspace;->I0:Z

    :cond_6
    iget-boolean v3, p0, Lcom/zui/launcher/Workspace;->H0:Z

    if-nez v3, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/16 v3, 0x105

    if-eq v0, v3, :cond_7

    if-ne v0, v1, :cond_b

    :cond_7
    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->K0(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_8
    if-ne v0, v1, :cond_9

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->N(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    if-eq v0, v4, :cond_c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    const/16 v1, 0x106

    if-ne v0, v1, :cond_a

    goto :goto_1

    :cond_a
    iput-boolean v2, p0, Lcom/zui/launcher/Workspace;->H0:Z

    :cond_b
    :goto_0
    return v2

    :cond_c
    :goto_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->J0(Landroid/view/MotionEvent;)V

    return v4

    :cond_d
    :goto_2
    return v2
.end method

.method public removeAbandonedPromise(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemsFromDatabase(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->removeItemsByMatcher(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->O()V

    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->removeFolderListeners()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntArray;->clear()V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget-object v1, v1, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const-class v2, Lcom/zui/launcher/Workspace$w;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->Q()V

    return-void
.end method

.method public removeExtraEmptyScreen(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    return-void
.end method

.method public removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p3, :cond_1

    new-instance v0, Lcom/zui/launcher/Workspace$k;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/zui/launcher/Workspace$k;-><init>(Lcom/zui/launcher/Workspace;ZLjava/lang/Runnable;Z)V

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->J()V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    const/16 p3, -0xc9

    invoke-virtual {p1, p3}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p3

    const/16 v0, 0x96

    if-ne p3, p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 p3, 0x190

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    invoke-direct {p0, p3, v0, p2, p4}, Lcom/zui/launcher/Workspace;->R(IILjava/lang/Runnable;Z)V

    return-void

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public removeFolderListeners()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/Workspace$f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Workspace$f;-><init>(Lcom/zui/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    return-void
.end method

.method public removeItemsByMatcher(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 11

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/zui/launcher/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v5

    new-instance v6, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v6}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/zui/launcher/ItemInfo;

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v10, v10, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v6, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v7}, Lcom/zui/launcher/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/ItemInfo;

    iget v8, v7, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_4

    invoke-virtual {v4, v8}, Lcom/zui/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    instance-of v7, v8, Lcom/zui/launcher/DropTarget;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    move-object v9, v8

    check-cast v9, Lcom/zui/launcher/DropTarget;

    invoke-virtual {v7, v9}, Lcom/zui/launcher/dragndrop/DragController;->removeDropTarget(Lcom/zui/launcher/DropTarget;)V

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v7, v8}, Lcom/zui/launcher/Launcher;->unregisterActiveCollector(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_2

    :cond_4
    iget v8, v7, Lcom/zui/launcher/ItemInfo;->container:I

    if-ltz v8, :cond_2

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v9}, Lcom/zui/launcher/FolderInfo;->prepareAutoUpdate()V

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v9, v7, v2}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    check-cast v8, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v8}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_5
    iget-object v8, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v8, v7}, Lcom/zui/launcher/Launcher;->unregisterActiveCollector(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_2

    :cond_6
    instance-of v5, v4, Lcom/zui/launcher/HotseatLayout;

    if-eqz v5, :cond_7

    check-cast v4, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v4}, Lcom/zui/launcher/HotseatLayout;->reorderAllIcons()V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    :cond_9
    return-void
.end method

.method public removeTempView()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTempView  tempView state -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAnimators"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->z0:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public removeViewByInfo(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/CellLayout;->removeViewAt(II)Landroid/view/View;

    :cond_2
    return-void
.end method

.method public removeWidget(I)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/o2;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/o2;-><init>(Lcom/zui/launcher/Workspace;I)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/DropTarget;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    check-cast p1, Lcom/zui/launcher/DropTarget;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragController;->removeDropTarget(Lcom/zui/launcher/DropTarget;)V

    :cond_1
    return-void
.end method

.method public reorderItemAllScreen()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->V0:Lcom/zui/launcher/ReorderActor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor;->reorderItemAllScreen()V

    :cond_0
    return-void
.end method

.method public reorderItemsManualDown()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->V0:Lcom/zui/launcher/ReorderActor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor;->reorderItemsManualDown()V

    :cond_0
    return-void
.end method

.method public reorderItemsManualUp()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->V0:Lcom/zui/launcher/ReorderActor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor;->reorderItemsManualUp()V

    :cond_0
    return-void
.end method

.method public resetPivotState(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;Landroid/view/View;Lcom/zui/launcher/Hotseat;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->getWorkspacePivot()Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->getIndicatorPivot()Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    move-result-object p0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->getX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->getY()F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->getHotseatPivot()Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    move-result-object p0

    if-eqz p3, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->getX()F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->getY()F

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setPivotY(F)V

    :cond_2
    return-void
.end method

.method public resetTransitionTransform()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/Workspace;->f0:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v0, p0, Lcom/zui/launcher/Workspace;->f0:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->d0:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->e0:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->d0:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->e0:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Workspace;->e0:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->d0:Landroid/util/SparseArray;

    return-void
.end method

.method public runOnOverlayHidden(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->j0:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->j0:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/zui/launcher/c3;

    invoke-direct {v1, v0, p1}, Lcom/zui/launcher/c3;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/zui/launcher/Workspace;->j0:Ljava/lang/Runnable;

    :goto_0
    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->V0()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zui/launcher/Workspace$q;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/Workspace$q;-><init>(Lcom/zui/launcher/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic s0(Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->animateOpenFolder(Lcom/zui/launcher/folder/FolderIcon;)V

    return-void
.end method

.method public scrollLeft()Z
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->j1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->K:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->i0:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget v2, p0, Lcom/zui/launcher/Workspace;->m0:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    move-result v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->completeDragExit()V

    :cond_2
    return v1
.end method

.method public scrollRight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace;->K:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->completeDragExit()V

    :cond_1
    return v0
.end method

.method public scrollToOverScreen()V
    .locals 0

    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/zui/launcher/CellLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->A:Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/CellLayout;->setIsDragOverlapping(Z)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/Workspace;->A:Lcom/zui/launcher/CellLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/CellLayout;->setIsDragOverlapping(Z)V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->getScrim()Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->invalidate()V

    return-void
.end method

.method setCurrentDropLayout(Lcom/zui/launcher/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->X()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->N()V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->M()V

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->H(Z)V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->G()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lcom/zui/launcher/Workspace;->O0(II)V

    return-void
.end method

.method public setCurrentEventType(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/Workspace;->mEventType:I

    return-void
.end method

.method setDragMode(I)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/Workspace;->a0:I

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->F()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Workspace;->H(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->G()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/zui/launcher/Workspace;->H(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->F()V

    invoke-direct {p0, v1}, Lcom/zui/launcher/Workspace;->H(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->F()V

    goto :goto_0

    :cond_3
    :goto_1
    iput p1, p0, Lcom/zui/launcher/Workspace;->a0:I

    :cond_4
    return-void
.end method

.method public setDropToFirstNotOccupied(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->B:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace;->w:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-void
.end method

.method public setFinalTransitionTransform()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/Workspace;->f0:F

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 9

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_0
    const v1, 0x3e8a3d71    # 0.27f

    :goto_0
    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/zui/launcher/Workspace;->X:F

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->O:Z

    iget-object v1, v0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->E:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/zui/launcher/graphics/RotationMode;->mapRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsetsWithMarginH()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/zui/launcher/graphics/RotationMode;->mapRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->E:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v3, v5, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/zui/launcher/Workspace;->E:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v5, v1, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Workspace;->E:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v1, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->E:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setPageSpacing(I)V

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->E:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v7, v8, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-boolean v3, p1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    if-eqz v3, :cond_3

    mul-int/lit8 p1, p1, 0x3

    goto :goto_2

    :cond_3
    int-to-float p1, p1

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    :goto_2
    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_3

    :cond_4
    iget-boolean v3, p0, Lcom/zui/launcher/Workspace;->O:Z

    const/high16 v6, 0x3f800000    # 1.0f

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    int-to-float p1, p1

    mul-float/2addr p1, v6

    float-to-int p1, p1

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setPageSpacing(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_4
    iget p1, v0, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->cellLayoutBottomPaddingPx:I

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_5
    if-ltz v1, :cond_8

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Lcom/zui/launcher/CellLayout;->setRotationMode(Lcom/zui/launcher/graphics/RotationMode;)V

    invoke-virtual {v3, p1, v5, p1, v0}, Lcom/zui/launcher/CellLayout;->setPadding(IIII)V

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public setLauncherOverlay(Lcom/zui/launcher/LauncherOverlay;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zui/launcher/util/OverlayEdgeEffect;-><init>(Landroid/content/Context;Lcom/zui/launcher/LauncherOverlay;)V

    :goto_0
    iput-object v0, p0, Lcom/zui/launcher/Workspace;->q0:Lcom/zui/launcher/util/OverlayEdgeEffect;

    if-nez p1, :cond_1

    new-instance v0, Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    :cond_1
    iget-boolean v1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    :goto_1
    iput-object p1, p0, Lcom/zui/launcher/Workspace;->h0:Lcom/zui/launcher/LauncherOverlay;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->onOverlayScrollChanged(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->handleOverlayScreenIndicator()V

    return-void
.end method

.method public setOverlayShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace;->i0:Z

    return-void
.end method

.method public setReorderingChangedListener(Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/ReorderActor;

    invoke-direct {v0, p0}, Lcom/zui/launcher/ReorderActor;-><init>(Lcom/zui/launcher/PagedView;)V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->V0:Lcom/zui/launcher/ReorderActor;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/ReorderActor;->setLauncher(Lcom/zui/launcher/Launcher;)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->V0:Lcom/zui/launcher/ReorderActor;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/ReorderActor;->setReorderingChangedListener(Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->W0:Lcom/zui/launcher/Workspace$PageSwitchListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-interface {p1, v0, p0}, Lcom/zui/launcher/Workspace$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setState(Lcom/zui/launcher/LauncherState;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/Workspace;->I0(Lcom/zui/launcher/LauncherState;)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->setState(Lcom/zui/launcher/LauncherState;)V

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->G0()V

    return-void
.end method

.method public setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/Workspace$z;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/Workspace$z;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/LauncherState;)V

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->p0:Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    iget-boolean p1, p1, Lcom/zui/launcher/LauncherState;->hasMultipleVisiblePages:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace;->k0:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v1, p3, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected setWallpaperDimension()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/zui/launcher/Workspace$r;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Workspace$r;-><init>(Lcom/zui/launcher/Workspace;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWidgetDown(Z)V
    .locals 1

    const-string v0, "setWidgetDown"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug$R5;->echo(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace;->mDownWidget:Z

    return-void
.end method

.method setup(Lcom/zui/launcher/dragndrop/DragController;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/zui/launcher/dragndrop/SpringLoadedDragController;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Workspace;->J:Lcom/zui/launcher/dragndrop/SpringLoadedDragController;

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->X0()V

    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/Workspace;->m0:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->shouldFlingForVelocity(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showIndicatorWhenExitEdit()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasOverlayScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->showOverlayMark(Z)V

    :cond_0
    return-void
.end method

.method public showPageIndicatorAtCurrentScroll()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->computeMaxScroll()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/zui/launcher/pageindicators/PageIndicator;->setScroll(II)V

    :cond_0
    return-void
.end method

.method public showScrimView()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showScrimView()V

    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mWasInOverscroll:Z

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->snapToPageImmediately(I)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/launcher/PagedView;->snapToDestination()V

    :goto_0
    return-void
.end method

.method public snapToPageFromOverView(I)V
    .locals 1

    const/16 v0, 0xfa

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    return-void
.end method

.method public startDrag(Lcom/zui/launcher/CellLayout$CellInfo;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 3

    iget-object v0, p1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iput-object p1, p0, Lcom/zui/launcher/Workspace;->v:Lcom/zui/launcher/CellLayout$CellInfo;

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout;

    instance-of v1, p1, Lcom/zui/launcher/HotseatLayout;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/HotseatLayout;->prepareChildForDrag(Landroid/view/View;)V

    :cond_0
    iget-boolean p1, p2, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    new-instance v1, Lcom/zui/launcher/Workspace$s;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p0, v2}, Lcom/zui/launcher/Workspace$s;-><init>(Lcom/zui/launcher/Workspace;Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, v1}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    :cond_1
    invoke-virtual {p0, v0, p0, p2}, Lcom/zui/launcher/Workspace;->beginDragShared(Landroid/view/View;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return-void
.end method

.method public stripEmptyScreens()V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/zui/launcher/Workspace;->M:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    new-instance v2, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v2}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    iget-object v6, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-lez v6, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {v2, v6}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v3

    move v5, v4

    move v6, v5

    :goto_1
    invoke-virtual {v2}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-virtual {v2, v5}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/CellLayout;

    iget-object v9, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->remove(I)V

    iget-object v9, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v9, v7}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-le v7, v1, :cond_8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v7, v0, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    if-eqz v3, :cond_7

    const/4 v7, 0x2

    invoke-virtual {v8, v4, v7}, Lcom/zui/launcher/CellLayout;->enableAccessibleDrag(ZI)V

    :cond_7
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/zui/launcher/Workspace;->t:Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    const/16 v9, -0xc9

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/zui/launcher/Workspace;->s:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v7, v9}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->justHasExtraEmptyScreen()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v1, :cond_a

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    :cond_a
    if-ltz v6, :cond_b

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_b
    return-void
.end method

.method public stripScreenIfHasEmptyOne()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/Workspace;->r:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lez v3, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    :cond_3
    return-void
.end method

.method public switchWidgetState()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->checkToppingWord()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/ObserverManager;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/SpUtills;->getHotWordPos(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/ObserverManager;->getObserverListenerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;

    invoke-interface {v1}, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0}, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;->refreshWidgetSearchData(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic t0(ILcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget v0, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p2, p1}, Lcom/zui/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public timeViewFlagChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/Workspace;->b0()Lcom/zui/launcher/Workspace$a0;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zui/launcher/Workspace;->v0:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/launcher/Workspace$a0;->NOTIME:Lcom/zui/launcher/Workspace$a0;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/zui/launcher/Workspace;->v0:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/zui/launcher/Workspace$a0;->TIMEEXIST:Lcom/zui/launcher/Workspace$a0;

    if-ne v0, v1, :cond_3

    :cond_1
    sget-object v1, Lcom/zui/launcher/Workspace$a0;->TIMEEXIST:Lcom/zui/launcher/Workspace$a0;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->v0:Z

    invoke-direct {p0, v0}, Lcom/zui/launcher/Workspace;->N0(Z)V

    :cond_3
    return-void
.end method

.method public unlockWallpaperFromDefaultPageOnNextLayout()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->P:Lcom/zui/launcher/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->isLockedToDefaultPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace;->Q:Z

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateAccessibilityFlags()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/LauncherState;->workspaceAccessibilityFlag:I

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout;

    invoke-direct {p0, v0, v3}, Lcom/zui/launcher/Workspace;->W0(ILcom/zui/launcher/CellLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public updateDisableAnimationsToggle()Z
    .locals 6

    sget-object v0, Lcom/zui/launcher/Workspace;->a1:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/zui/launcher/q2;

    invoke-direct {v1, v0, p1}, Lcom/zui/launcher/q2;-><init>(Lcom/zui/launcher/util/PackageUserKey;Ljava/util/function/Predicate;)V

    new-instance p1, Lcom/zui/launcher/z2;

    invoke-direct {p1, p0, v1}, Lcom/zui/launcher/z2;-><init>(Lcom/zui/launcher/Workspace;Ljava/util/function/Predicate;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/Folder;->iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    :cond_0
    return-void
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/s2;

    invoke-direct {v0, p1}, Lcom/zui/launcher/s2;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/Folder;->iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    :cond_0
    return-void
.end method

.method public updateZuiDots(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/ShortcutUserKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/ShortcutUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v1, Lcom/zui/launcher/Workspace$j;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/launcher/Workspace$j;-><init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/util/ShortcutUserKey;Ljava/util/Set;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    return-void
.end method

.method public synthetic w0(Ljava/util/function/Predicate;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 5

    instance-of v0, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast p3, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 p0, 0x1

    invoke-interface {p3, p2, p0}, Lcom/zui/launcher/WorkspaceIconCompat;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lcom/zui/launcher/FolderInfo;

    if-eqz v0, :cond_3

    instance-of v0, p3, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/zui/launcher/FolderInfo;

    iget-object v0, p2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/zui/launcher/dot/FolderDotInfo;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p1, v0}, Lcom/zui/launcher/dot/FolderDotInfo;-><init>(Z)V

    iget-object p2, p2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, v0}, Lcom/zui/launcher/Launcher;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object v2

    move-object v3, p3

    check-cast v3, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v3, v0, v1}, Lcom/zui/launcher/WorkspaceIconCompat;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    :cond_1
    invoke-virtual {p1, v2}, Lcom/zui/launcher/dot/FolderDotInfo;->addDotInfo(Lcom/zui/launcher/dot/DotInfo;)V

    goto :goto_0

    :cond_2
    check-cast p3, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p3, p1}, Lcom/zui/launcher/folder/FolderIcon;->setDotInfo(Lcom/zui/launcher/dot/FolderDotInfo;)V

    :cond_3
    :goto_1
    return v1
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/zui/launcher/Workspace$w;

    iget-object v1, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/zui/launcher/Workspace$w;-><init>(Lcom/zui/launcher/Workspace;Ljava/util/ArrayList;Lcom/zui/launcher/widget/LauncherAppWidgetHost;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-direct {v2, v3}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1}, Lcom/zui/launcher/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v3, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-direct {v2, v3}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget v1, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v1}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace$w;->run()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/zui/launcher/Workspace$i;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/Workspace$i;-><init>(Lcom/zui/launcher/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public workspaceIconsCanBeDragged()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/LauncherState;->workspaceIconsCanBeDragged:Z

    return p0
.end method
