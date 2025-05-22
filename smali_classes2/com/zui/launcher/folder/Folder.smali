.class public Lcom/zui/launcher/folder/Folder;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/ClipPathView;
.implements Lcom/zui/launcher/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/zui/launcher/DropTarget;
.implements Lcom/zui/launcher/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;
.implements Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/folder/Folder$q;,
        Lcom/zui/launcher/folder/Folder$o;,
        Lcom/zui/launcher/folder/Folder$p;
    }
.end annotation


# static fields
.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESCROLL_DELAY:I = 0x384

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_NONE:I = -0x1

.field public static final SCROLL_RIGHT:I = 0x1

.field private static final V:Landroid/graphics/Rect;

.field private static W:Ljava/lang/String;

.field private static X:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field G:F

.field H:F

.field private I:Z

.field private J:Z

.field private K:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private L:I

.field M:I

.field N:I

.field O:Lcom/zui/launcher/OnAlarmListener;

.field P:Lcom/zui/launcher/OnAlarmListener;

.field Q:I

.field private R:Z

.field private S:Z

.field private T:Lcom/zui/launcher/Alarm;

.field private U:Lcom/zui/launcher/OnAlarmListener;

.field private a:F

.field private b:F

.field private c:Z

.field private d:Z

.field private final e:Lcom/zui/launcher/Alarm;

.field private final f:Lcom/zui/launcher/Alarm;

.field private final g:Lcom/zui/launcher/Alarm;

.field final h:Lcom/zui/launcher/Alarm;

.field final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/animation/AnimatorSet;

.field k:Lcom/zui/launcher/folder/FolderIcon;

.field l:Lcom/zui/launcher/folder/FolderPagedView;

.field private m:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

.field protected mDragController:Lcom/zui/launcher/dragndrop/DragController;

.field public mFolderName:Lcom/zui/launcher/ExtendedEditText;

.field public final mFolderScale:F

.field public mInfo:Lcom/zui/launcher/FolderInfo;

.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/view/View;

.field t:I

.field u:I

.field v:I

.field private w:Landroid/graphics/Path;

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "STATE_NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "STATE_SMALL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "STATE_ANIMATING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "STATE_OPEN"
            .end subannotation
        }
    .end annotation
.end field

.field private y:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    new-instance v0, Lcom/zui/launcher/folder/Folder$e;

    invoke-direct {v0}, Lcom/zui/launcher/folder/Folder$e;-><init>()V

    sput-object v0, Lcom/zui/launcher/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/folder/Folder;->a:F

    iput p2, p0, Lcom/zui/launcher/folder/Folder;->b:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->c:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->d:Z

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderScale:F

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->h:Lcom/zui/launcher/Alarm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->i:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->x:I

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->y:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->D:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->E:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->F:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->I:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->J:Z

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->M:I

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->N:I

    new-instance v0, Lcom/zui/launcher/folder/Folder$m;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/Folder$m;-><init>(Lcom/zui/launcher/folder/Folder;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->O:Lcom/zui/launcher/OnAlarmListener;

    new-instance v0, Lcom/zui/launcher/folder/Folder$n;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/Folder$n;-><init>(Lcom/zui/launcher/folder/Folder;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->P:Lcom/zui/launcher/OnAlarmListener;

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->R:Z

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->S:Z

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->T:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/launcher/folder/Folder$f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/Folder$f;-><init>(Lcom/zui/launcher/folder/Folder;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->U:Lcom/zui/launcher/OnAlarmListener;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/zui/launcher/folder/Folder;->setLocaleDependentFields(Landroid/content/res/Resources;Z)V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/folder/Folder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/folder/Folder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->I:Z

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/folder/Folder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder;->j:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic d(Lcom/zui/launcher/folder/Folder;)Lcom/zui/launcher/pageindicators/PageIndicatorDots;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->m:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/folder/Folder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->u()V

    return-void
.end method

.method private getContentAreaHeight()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getDesiredHeight()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getFolderHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/folder/Folder;->p(I)I

    move-result p0

    return p0
.end method

.method private getFolderWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getDesiredWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/folder/Folder;

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/folder/Folder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/folder/Folder;->n(Z)V

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/folder/FolderAnimationManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/folder/FolderAnimationManager;-><init>(Lcom/zui/launcher/folder/Folder;Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/folder/Folder$l;

    invoke-direct {v1, p0}, Lcom/zui/launcher/folder/Folder$l;-><init>(Lcom/zui/launcher/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/folder/Folder;->w(Landroid/animation/AnimatorSet;)V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b003a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->cancelDeskBlurSelfControl(J)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const v2, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget-object v6, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/folder/Folder;->getFolderWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/folder/Folder;->getFolderHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    iget-object v9, v0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    sget-object v10, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    invoke-virtual {v6, v9, v10}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    sget-object v9, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sget-object v10, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v9, v11

    div-int/lit8 v12, v8, 0x2

    sub-int/2addr v10, v12

    iget-object v13, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v13}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v13

    iget-boolean v13, v13, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-eqz v13, :cond_1

    iget-object v13, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v13}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v13

    sget-object v14, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    invoke-virtual {v6, v13, v14}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v6

    sget-object v13, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    invoke-virtual {v6, v13}, Lcom/zui/launcher/Workspace;->getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V

    :goto_1
    sget-object v6, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v13, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    sget-object v6, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v13, Lcom/zui/launcher/folder/Folder;->V:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v8

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    iget-object v6, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingLeft()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    iget v6, v1, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    int-to-float v13, v7

    mul-float v14, v13, v4

    float-to-int v15, v14

    sub-int/2addr v6, v15

    const/4 v15, 0x2

    div-int/2addr v6, v15

    cmpl-float v16, v4, v3

    if-nez v16, :cond_2

    iget v3, v1, Lcom/zui/launcher/DeviceProfile;->mStatusBarHeight:I

    move/from16 v17, v6

    goto :goto_2

    :cond_2
    move/from16 v17, v6

    const/4 v3, 0x0

    :goto_2
    iget v6, v1, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v6, v8

    div-int/2addr v6, v15

    div-int/lit8 v18, v3, 0x4

    add-int v6, v6, v18

    iget-boolean v15, v1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-nez v15, :cond_3

    iget-boolean v15, v1, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v19, v5

    const v5, 0x7f07036d

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v15, 0x2

    div-int/2addr v5, v15

    sub-int/2addr v6, v5

    goto :goto_3

    :cond_3
    move-object/from16 v19, v5

    :goto_3
    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, v6

    move/from16 v6, v17

    goto :goto_6

    :cond_5
    :goto_4
    iget-object v5, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    goto :goto_5

    :cond_6
    iget v1, v5, Landroid/graphics/Point;->x:I

    :goto_5
    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-float/2addr v14, v2

    float-to-int v2, v14

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/lit8 v6, v1, 0x2

    iget-object v1, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_7

    int-to-float v1, v8

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v14, 0x2

    new-array v4, v14, [I

    iget-object v5, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    const/4 v2, 0x1

    aget v2, v4, v2

    sub-int/2addr v3, v1

    div-int/2addr v3, v14

    add-int v1, v2, v3

    goto :goto_6

    :cond_7
    const/4 v14, 0x2

    sub-int/2addr v5, v3

    int-to-float v1, v5

    int-to-float v2, v8

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/2addr v1, v14

    add-int/2addr v1, v3

    :goto_6
    sub-int/2addr v9, v6

    add-int/2addr v11, v9

    sub-int/2addr v10, v1

    add-int/2addr v12, v10

    int-to-float v2, v11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    int-to-float v3, v12

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v4, v0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v2, v5

    div-float/2addr v2, v13

    mul-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    iput v2, v0, Lcom/zui/launcher/folder/Folder;->G:F

    iget-object v2, v0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v5

    int-to-float v4, v8

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lcom/zui/launcher/folder/Folder;->H:F

    move-object/from16 v5, v19

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    iput v1, v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    return-void
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->A:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->B:Z

    return-void
.end method

.method private n(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDropTarget(Lcom/zui/launcher/DropTarget;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/FolderIcon;->setBackgroundVisible(Z)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/BubbleTextView;->setTextVisibility(Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderIcon;->animateBgShadowAndStroke()V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/folder/FolderIcon;->onFolderClose(I)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderIcon;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/zui/launcher/folder/FolderIcon;->mTargetDotScale:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/folder/FolderIcon;->animateDotScale([F)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_2
    iget-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->y:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->rearrangeChildren()V

    iput-boolean v2, p0, Lcom/zui/launcher/folder/Folder;->y:Z

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v1, :cond_5

    iget-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->E:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->s()V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/zui/launcher/folder/Folder;->D:Z

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/zui/launcher/folder/Folder;->E:Z

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->m()V

    iput v2, p0, Lcom/zui/launcher/folder/Folder;->x:I

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1, v2}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->stripScreenIfHasEmptyOne()V

    :cond_6
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->clearDeskBlur()V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static o(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d018e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/folder/Folder;

    return-object p0
.end method

.method private p(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/zui/launcher/folder/Folder;->p:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->q:I

    add-int/2addr v0, p0

    return v0
.end method

.method private q(Lcom/zui/launcher/DropTarget$DragObject;[F)I
    .locals 4

    invoke-virtual {p1, p2}, Lcom/zui/launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p1

    iget-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->c:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lcom/zui/launcher/folder/Folder;->a:F

    aget v2, p1, v0

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_1

    iget p2, p0, Lcom/zui/launcher/folder/Folder;->b:F

    aget v3, p1, v1

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/zui/launcher/folder/Folder;->c:Z

    :cond_2
    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    aget v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    aget p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->r:I

    sub-int/2addr p1, p0

    invoke-virtual {p2, v0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->findNearestArea(II)I

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method public static setLocaleDependentFields(Landroid/content/res/Resources;Z)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/folder/Folder;->W:Ljava/lang/String;

    const v1, 0x7f1203bc

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/folder/Folder;->W:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/zui/launcher/folder/Folder;->X:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zui/launcher/folder/Folder;->X:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 0

    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/folder/Folder;->setupContentDimensions(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    if-nez p1, :cond_0

    new-instance p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->l()V

    :cond_0
    return-void
.end method

.method private t(Lcom/zui/launcher/CellLayout;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    return v1

    :cond_0
    instance-of v3, v3, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0xa

    if-lt v2, p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method private u()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragController;->isDragCompleted()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/category/AllAppsCategory;->isFolderWellregulated(Lcom/zui/launcher/FolderInfo;)I

    move-result v2

    if-ltz v2, :cond_4

    sget-object v3, Lcom/zui/launcher/category/AppsCategoryInfo;->DEFAULT_INDEX_OF_DB:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5, v2}, Lcom/zui/launcher/category/AllAppsCategory;->getCategoryApps(JI)Ljava/util/LinkedHashSet;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v3, v1}, Lcom/zui/launcher/Launcher;->initFolderOtherApps(Ljava/lang/String;ILjava/util/LinkedHashSet;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private v(ILcom/zui/launcher/DropTarget$DragObject;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/folder/Folder;->M:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->showScrollHint(I)V

    iput p1, p0, Lcom/zui/launcher/folder/Folder;->M:I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/folder/Folder;->N:I

    if-eq v0, p1, :cond_2

    :cond_1
    iput p1, p0, Lcom/zui/launcher/folder/Folder;->N:I

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/launcher/folder/Folder$p;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/folder/Folder$p;-><init>(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/DropTarget$DragObject;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/zui/launcher/folder/Folder;->v:I

    iput p1, p0, Lcom/zui/launcher/folder/Folder;->t:I

    :cond_2
    return-void
.end method

.method private w(Landroid/animation/AnimatorSet;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/zui/launcher/CellLayout;

    invoke-direct {p0, v4}, Lcom/zui/launcher/folder/Folder;->t(Lcom/zui/launcher/CellLayout;)Z

    move-result v3

    invoke-virtual {v4}, Lcom/zui/launcher/CellLayout;->isHardwareLayerEnabled()Z

    move-result v6

    new-instance v0, Lcom/zui/launcher/folder/Folder$j;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/folder/Folder$j;-><init>(Lcom/zui/launcher/folder/Folder;ZLcom/zui/launcher/CellLayout;Landroid/animation/AnimatorSet;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private x()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    iput v3, v4, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/zui/launcher/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 3

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v1, v1, Lcom/zui/launcher/XDockView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    check-cast p0, Lcom/zui/launcher/XDockView;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->showOutOfFolderMessage()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1203bf

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1
    const/4 p0, 0x1

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    const/16 p1, 0x9

    if-eq v0, p1, :cond_2

    const/16 p1, 0x8

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-ne v0, p1, :cond_3

    :cond_2
    move v2, p0

    :cond_3
    return v2
.end method

.method public animateOpen()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->addDropTarget(Lcom/zui/launcher/DropTarget;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderPagedView;->completePendingPageChanges()V

    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/PagedView;->snapToPageImmediately(I)Z

    :cond_2
    iput-boolean v2, p0, Lcom/zui/launcher/folder/Folder;->D:Z

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->l()V

    new-instance v0, Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/folder/FolderAnimationManager;-><init>(Lcom/zui/launcher/folder/Folder;Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v3, Lcom/zui/launcher/folder/Folder$k;

    invoke-direct {v3, p0}, Lcom/zui/launcher/folder/Folder$k;-><init>(Lcom/zui/launcher/folder/Folder;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v3

    if-le v3, v1, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/zui/launcher/FolderInfo;->hasOption(I)Z

    move-result v3

    :cond_3
    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTranslationX(F)V

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->m:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-virtual {v3}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->stopAllAnimations()V

    invoke-direct {p0, v0}, Lcom/zui/launcher/folder/Folder;->w(Landroid/animation/AnimatorSet;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->forceTouchMove()V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v3, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1203bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v3, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1203c0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v5, v5, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget v0, v0, Lcom/zui/launcher/Launcher;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/Folder;->setChildTextColor(I)V

    return-void
.end method

.method public beginExternalDrag()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderPagedView;->allocateRankForNewItem()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->B:Z

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public cancelExitFolder()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    invoke-virtual {p0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    :cond_0
    return-void
.end method

.method public completeDragExit()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/zui/launcher/folder/Folder;->y:Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/zui/launcher/folder/Folder;->x:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->rearrangeChildren()V

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->m()V

    :goto_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x105

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x106

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/zui/launcher/folder/Folder;->R:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->R:Z

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->w:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->w:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p1, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput p1, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p0

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    const/4 p0, 0x3

    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget-boolean v1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1203b8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getActiveTextView()Lcom/zui/launcher/ExtendedEditText;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContent()Lcom/zui/launcher/folder/FolderPagedView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    return-object p0
.end method

.method public getContentAreaWidth()I
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getDesiredWidth()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getContentCellHeight()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getDesiredHeight()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getCellCountY()I

    move-result p0

    div-int v1, v0, p0

    :cond_0
    return v1
.end method

.method public getContentCellWidth()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNormalChildWidth()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getCellCountX()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public getFolderBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->s:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderIcon()Lcom/zui/launcher/folder/FolderIcon;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    return-object p0
.end method

.method public getFolderLauncher()Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method public getFolderState()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->x:I

    return p0
.end method

.method public getFooterHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->p:I

    return p0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->L:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public getInfo()Lcom/zui/launcher/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    new-instance v1, Lcom/zui/launcher/folder/Folder$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/folder/Folder$d;-><init>(Lcom/zui/launcher/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItemsOnPage(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->itemsPerPage()I

    move-result p0

    if-ne p1, v1, :cond_0

    mul-int v1, p0, p1

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    mul-int/2addr p1, p0

    add-int p0, p1, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge p1, p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public getLogContainerType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getPivotXForIconAnimation()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->G:F

    return p0
.end method

.method public getPivotYForIconAnimation()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->H:F

    return p0
.end method

.method public getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    new-instance v1, Lcom/zui/launcher/folder/Folder$c;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/folder/Folder$c;-><init>(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public handleClose()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/Folder;->handleClose(Z)V

    return-void
.end method

.method protected handleClose(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->j:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->removeFenLeiView()V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/folder/Folder;->setFirstOpenFlag(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v2}, Lcom/zui/launcher/ExtendedEditText;->dispatchBackKey()V

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderIcon;->clearLeaveBehindIfExists()V

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/Launcher;->playFolderAnimExtraOutPro(Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->closeFolderAlphaHandle()V

    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->j()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/zui/launcher/folder/Folder;->n(Z)V

    new-instance p1, Lcom/zui/launcher/folder/a;

    invoke-direct {p1, p0}, Lcom/zui/launcher/folder/a;-><init>(Lcom/zui/launcher/folder/Folder;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    return-void
.end method

.method public hideItem(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isClickEmptySpace(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderPagedView;->getCellCountX()I

    move-result v1

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/zui/launcher/folder/FolderPagedView;->getCellCountY()I

    move-result v3

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getCurrentCellLayout()Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_4

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v5, v4}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v6, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v2

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isClickEmptySpace   mIsFolderNameContainer -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->J:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.Folder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/zui/launcher/folder/Folder;->J:Z

    return v2
.end method

.method public isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/folder/Folder;->K:Z

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->x:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditingName()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/folder/Folder;->I:Z

    return p0
.end method

.method public isFirstOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/folder/Folder;->S:Z

    return p0
.end method

.method public isFull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result v0

    iget p0, p0, Lcom/zui/launcher/folder/Folder;->Q:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOfType(I)Z
    .locals 0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;

    return-void
.end method

.method k(Lcom/zui/launcher/FolderInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object p1, p1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v0, Lcom/zui/launcher/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->bindItems(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput-boolean v0, p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->l()V

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->updateTextViewFocus()V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/FolderInfo;->addListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    new-instance v0, Lcom/zui/launcher/folder/Folder$i;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/Folder$i;-><init>(Lcom/zui/launcher/folder/Folder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public logActionCommand(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getFolderIcon()Lcom/zui/launcher/folder/FolderIcon;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getLogContainerType()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    return-void
.end method

.method public notifyDrop()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->F:Z

    :cond_0
    return-void
.end method

.method public onAdd(Lcom/zui/launcher/WorkspaceItemInfo;I)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/folder/FolderPagedView;->createAndAddViewForRank(Lcom/zui/launcher/WorkspaceItemInfo;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v4, v1, Lcom/zui/launcher/ItemInfo;->id:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/launcher/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBackKey()Z
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    sget-object v2, Lcom/zui/launcher/folder/Folder;->W:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/zui/launcher/folder/Folder;->X:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v1, 0x20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1203c0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v6, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v6, p0, Lcom/zui/launcher/folder/Folder;->I:Z

    return v4
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->dispatchBackKey()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/launcher/AbstractFloatingView;->onBackPressed()Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/dragndrop/DragLayer;->isEventOverDockView(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, v3, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/zui/launcher/folder/Folder;->J:Z

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v3}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v3

    iget-boolean v3, v3, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->isTouchOverHotseat(Lcom/zui/launcher/Launcher;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, v3, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->dispatchBackKey()V

    return v2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDropTargetBar()Lcom/zui/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionTapOutside(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    const/high16 v0, 0x10000

    invoke-static {p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return v2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/Folder;->isClickEmptySpace(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->d:Z

    if-nez p1, :cond_7

    invoke-virtual {p0, v2}, Lcom/zui/launcher/folder/Folder;->handleClose(Z)V

    return v2

    :cond_7
    iput-boolean v1, p0, Lcom/zui/launcher/folder/Folder;->d:Z

    iput-boolean v1, p0, Lcom/zui/launcher/folder/Folder;->J:Z

    :cond_8
    return v1
.end method

.method public onDragEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->completeDragExit()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v1, v0, Lcom/zui/launcher/XDockView;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->beginExternalDrag()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->u:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    invoke-virtual {p1, v1}, Lcom/zui/launcher/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zui/launcher/folder/Folder;->d:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zui/launcher/folder/Folder;->c:Z

    aget v4, v1, v3

    iput v4, p0, Lcom/zui/launcher/folder/Folder;->a:F

    aget v1, v1, v2

    iput v1, p0, Lcom/zui/launcher/folder/Folder;->b:F

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    invoke-virtual {v1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegionWidth()I

    move-result v1

    div-int/2addr v1, v0

    iget p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/zui/launcher/folder/Folder;->L:I

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/dragndrop/DragView;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 2

    iget-boolean p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->P:Lcom/zui/launcher/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->h:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/zui/launcher/folder/Folder;->M:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderPagedView;->clearScrollHint()V

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->M:I

    :cond_1
    return-void
.end method

.method public onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/Folder;->acceptDrop(Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->h:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/folder/Folder;->q(Lcom/zui/launcher/DropTarget$DragObject;[F)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/folder/Folder;->t:I

    iget v2, p0, Lcom/zui/launcher/folder/Folder;->u:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    invoke-virtual {v1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->O:Lcom/zui/launcher/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    iget v1, p0, Lcom/zui/launcher/folder/Folder;->t:I

    iput v1, p0, Lcom/zui/launcher/folder/Folder;->u:I

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1204ea

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/zui/launcher/folder/Folder;->t:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_2
    aget v0, v0, v3

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderPagedView;->getCurrentCellLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v5

    cmpg-float v5, v0, v2

    if-gez v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-lez v1, :cond_6

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget-boolean v2, v2, Lcom/zui/launcher/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    invoke-direct {p0, v3, p1}, Lcom/zui/launcher/folder/Folder;->v(ILcom/zui/launcher/DropTarget$DragObject;)V

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_8

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget-boolean v1, v1, Lcom/zui/launcher/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v1, :cond_7

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    :goto_3
    invoke-direct {p0, v4, p1}, Lcom/zui/launcher/folder/Folder;->v(ILcom/zui/launcher/DropTarget$DragObject;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/zui/launcher/folder/Folder;->M:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderPagedView;->clearScrollHint()V

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->M:I

    :cond_9
    :goto_4
    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 2

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->A:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of p2, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    new-instance p2, Lcom/zui/launcher/folder/Folder$q;

    invoke-direct {p2, p0}, Lcom/zui/launcher/folder/Folder$q;-><init>(Lcom/zui/launcher/folder/Folder;)V

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, p1, v0}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/zui/launcher/folder/Folder$q;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p2}, Lcom/zui/launcher/folder/Folder$q;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->F:Z

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget p1, p1, Lcom/zui/launcher/Launcher;->mTextColor:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/Folder;->setChildTextColor(I)V

    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 13

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget v0, p0, Lcom/zui/launcher/folder/Folder;->v:I

    invoke-virtual {p2, v0}, Lcom/zui/launcher/folder/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/folder/Folder;->q(Lcom/zui/launcher/DropTarget$DragObject;[F)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/folder/Folder;->t:I

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->O:Lcom/zui/launcher/OnAlarmListener;

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    invoke-interface {p2, v1}, Lcom/zui/launcher/OnAlarmListener;->onAlarm(Lcom/zui/launcher/Alarm;)V

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->g:Lcom/zui/launcher/Alarm;

    invoke-virtual {p2}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->h:Lcom/zui/launcher/Alarm;

    invoke-virtual {p2}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p2}, Lcom/zui/launcher/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v1, p2, Lcom/zui/launcher/LayoutInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object p2

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    check-cast v1, Lcom/zui/launcher/LayoutInfo;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move v5, v3

    :goto_0
    invoke-virtual {v1}, Lcom/zui/launcher/LayoutInfo;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v1, v5}, Lcom/zui/launcher/LayoutInfo;->getInfoAt(I)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v6

    iget-object v7, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/dragndrop/DragView;

    if-nez v5, :cond_1

    iget-object v8, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v8}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p2, v7, v6, v0, v4}, Lcom/zui/launcher/XDockView;->dropToCurrentScreen(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;[ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2, v6, v2}, Lcom/zui/launcher/XDockView;->removeDockItemByInfo(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v7, v6, v4}, Lcom/zui/launcher/XDockView;->animDragviewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {p2}, Lcom/zui/launcher/XDockView;->hideDockView()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Lcom/zui/launcher/XDockView;->startAnimatorSet(Z)V

    iput-boolean v3, p0, Lcom/zui/launcher/folder/Folder;->B:Z

    return-void

    :cond_4
    instance-of v1, p2, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    if-eqz v1, :cond_5

    check-cast p2, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    move-object v5, p2

    goto :goto_2

    :cond_5
    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_6

    iget-object p2, v5, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v6, p2, Lcom/zui/launcher/ItemInfo;->id:I

    iput v6, v5, Lcom/zui/launcher/ItemInfo;->container:I

    iget p2, p0, Lcom/zui/launcher/folder/Folder;->v:I

    iput p2, v5, Lcom/zui/launcher/ItemInfo;->rank:I

    iget-object v4, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget v7, v5, Lcom/zui/launcher/ItemInfo;->screenId:I

    const/4 v8, 0x0

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v10, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual/range {v4 .. v10}, Lcom/zui/launcher/Launcher;->addPendingItem(Lcom/zui/launcher/PendingAddItemInfo;II[III)V

    iput-boolean v3, p1, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-boolean v2, p0, Lcom/zui/launcher/folder/Folder;->y:Z

    goto/16 :goto_8

    :cond_7
    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v0, p2, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/zui/launcher/AppInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, p2

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    :goto_3
    iget-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->B:Z

    if-eqz p2, :cond_c

    iget-object p2, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :goto_4
    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget v1, p0, Lcom/zui/launcher/folder/Folder;->v:I

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->createAndAddViewForRank(Lcom/zui/launcher/WorkspaceItemInfo;I)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v4

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v6, v1, Lcom/zui/launcher/ItemInfo;->id:I

    const/4 v7, 0x0

    iget v8, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v9, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-eq v1, p0, :cond_b

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->x()V

    :cond_b
    iput-boolean v3, p0, Lcom/zui/launcher/folder/Folder;->B:Z

    goto :goto_5

    :cond_c
    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget v4, p0, Lcom/zui/launcher/folder/Folder;->v:I

    invoke-virtual {v1, p2, v0, v4}, Lcom/zui/launcher/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;I)V

    :goto_5
    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zui/launcher/HotseatLayout;->dragViewOut(Landroid/view/View;)V

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragView;->hasDrawn()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v4

    if-eqz p2, :cond_d

    iget-object v5, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v5

    iget-object v6, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v7, p1, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v8, p2

    invoke-virtual/range {v5 .. v12}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Z)V

    :cond_d
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    goto :goto_6

    :cond_e
    iput-boolean v3, p1, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iput-boolean v2, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->rearrangeChildren()V

    if-eqz p2, :cond_f

    new-instance p2, Lcom/zui/launcher/folder/Folder$q;

    invoke-direct {p2, p0}, Lcom/zui/launcher/folder/Folder$q;-><init>(Lcom/zui/launcher/folder/Folder;)V

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1, v0, v3}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/zui/launcher/folder/Folder$q;->close()V

    goto :goto_8

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p2}, Lcom/zui/launcher/folder/Folder$q;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0

    :cond_f
    :goto_8
    iput-boolean v3, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p2}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p2

    if-le p2, v2, :cond_10

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    invoke-virtual {p2, v0, v2, v1}, Lcom/zui/launcher/FolderInfo;->setOption(IZLcom/zui/launcher/model/ModelWriter;)V

    :cond_10
    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_11
    iget-object p0, p1, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz p0, :cond_12

    const p1, 0x7f120410

    invoke-virtual {p0, p1}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_12
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->D:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/zui/launcher/folder/Folder;->F:Z

    if-nez p2, :cond_2

    if-eq p1, p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->s()V

    goto :goto_1

    :cond_0
    iget-object v1, p2, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->A:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->A:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/folder/FolderPagedView;->createNewView(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/zui/launcher/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    new-instance v1, Lcom/zui/launcher/folder/Folder$q;

    invoke-direct {v1, p0}, Lcom/zui/launcher/folder/Folder$q;-><init>(Lcom/zui/launcher/folder/Folder;)V

    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2, p2, v0}, Lcom/zui/launcher/folder/FolderIcon;->onDrop(Lcom/zui/launcher/DropTarget$DragObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/zui/launcher/folder/Folder$q;->close()V

    :cond_2
    :goto_1
    if-eq p1, p0, :cond_5

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    invoke-virtual {p2}, Lcom/zui/launcher/Alarm;->alarmPending()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->f:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    if-nez p3, :cond_3

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->E:Z

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->h:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->completeDragExit()V

    goto :goto_2

    :cond_4
    instance-of p1, p1, Lcom/zui/launcher/XDockView;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->rearrangeChildren()V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->D:Z

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->C:Z

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->F:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/folder/Folder;->A:Landroid/view/View;

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->x()V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p3}, Lcom/zui/launcher/folder/FolderPagedView;->itemsPerPage()I

    move-result p3

    if-gt p2, p3, :cond_6

    iget-object p2, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    const/4 p3, 0x4

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p2, p3, p1, p0}, Lcom/zui/launcher/FolderInfo;->setOption(IZLcom/zui/launcher/model/ModelWriter;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lcom/zui/launcher/folder/Folder$q;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->dispatchBackKey()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/folder/FolderPagedView;

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/folder/FolderPagedView;->setFolder(Lcom/zui/launcher/folder/Folder;)V

    const v0, 0x7f0a0192

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->m:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    const v0, 0x7f0a0190

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ExtendedEditText;

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/ExtendedEditText;->setOnBackKeyListener(Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    const v4, -0x8001

    and-int/2addr v3, v4

    const v4, -0x80001

    and-int/2addr v3, v4

    or-int/lit16 v3, v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/ExtendedEditText;->forceDisableSuggestions(Z)V

    const v0, 0x7f0a018c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->o:Landroid/view/View;

    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/Folder;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->p:I

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->o:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->q:I

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->s:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->r:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->Q:I

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->startEditingFolderName()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/ExtendedEditText;->dispatchBackKey()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->updateTextViewFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showLayoutLockedToast()V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->R:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->clickWorkspaceItemInEditViewMode(Landroid/view/View;)V

    :cond_1
    iput-boolean v1, p0, Lcom/zui/launcher/folder/Folder;->R:Z

    return v1

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    new-instance v0, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/folder/Folder;->startDrag(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragOptions;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getContentAreaWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/zui/launcher/folder/Folder;->getContentAreaHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->s:Landroid/view/View;

    iget v4, p0, Lcom/zui/launcher/folder/Folder;->q:I

    add-int/2addr v4, p2

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v3, p1, p2}, Lcom/zui/launcher/folder/FolderPagedView;->setFixedSize(II)V

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    iget-object v4, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->n:Landroid/view/View;

    iget v3, p0, Lcom/zui/launcher/folder/Folder;->p:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->o:Landroid/view/View;

    iget v3, p0, Lcom/zui/launcher/folder/Folder;->q:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-direct {p0, p2}, Lcom/zui/launcher/folder/Folder;->p(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRecommendStatusChanged()V
    .locals 0

    return-void
.end method

.method public onRemove(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/Launcher;->addFenLeiSkipCase(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    iget v1, p0, Lcom/zui/launcher/folder/Folder;->x:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/zui/launcher/folder/Folder;->x:I

    if-ne v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->y:Z

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    iput p1, p0, Lcom/zui/launcher/folder/Folder;->v:I

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object p1, p1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/folder/Folder;->t:I

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->T:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->T:Lcom/zui/launcher/Alarm;

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->U:Lcom/zui/launcher/OnAlarmListener;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder;->T:Lcom/zui/launcher/Alarm;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->rearrangeChildren()V

    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->s()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onRemoveAll()V
    .locals 3

    const-string v0, "onRemoveAll"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveFolerLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->removeAllViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/folder/Folder;->x:I

    if-ne v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->y:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/folder/Folder;->setupContentForNumItems(I)V

    :goto_1
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->O:Lcom/zui/launcher/OnAlarmListener;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->e:Lcom/zui/launcher/Alarm;

    invoke-interface {v0, p0}, Lcom/zui/launcher/OnAlarmListener;->onAlarm(Lcom/zui/launcher/Alarm;)V

    :cond_0
    return-void
.end method

.method public prepareAutoUpdate()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public rearrangeChildren()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/Folder;->rearrangeChildren(I)V

    return-void
.end method

.method public rearrangeChildren(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    return-void
.end method

.method public refreshDummyIcon(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/Launcher;->refreshDummyIcon(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method s()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/folder/Folder$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/Folder$a;-><init>(Lcom/zui/launcher/folder/Folder;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/folder/FolderIcon;->performDestroyAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->K:Z

    return-void
.end method

.method public saveOrderAfterRemove()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/folder/FolderPagedView;->saveOrder(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/Folder;->z:Z

    return-void
.end method

.method public scrollLeft()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    return-void
.end method

.method public scrollRight()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    return-void
.end method

.method public searchFolderAppLocation(Lcom/zui/launcher/ItemInfo;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    mul-int/2addr v1, p0

    div-int v2, v0, p0

    rem-int p0, v0, p0

    if-eqz p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    div-int/2addr v0, v1

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/4 p0, 0x1

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    const-string p0, "zdx1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchFolderAppLocation   cellX -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellY -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenId -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setChildTextColor(I)V
    .locals 11

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderPagedView;->getCellCountX()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderPagedView;->getCellCountY()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout;

    if-eqz v5, :cond_2

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_2

    move v7, v3

    :goto_2
    if-ge v7, v2, :cond_1

    invoke-virtual {v5, v6, v7}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    iget-object v9, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v10, p1}, Lcom/zui/launcher/Workspace;->handleViewTextColor(Landroid/view/View;Ljava/lang/Object;I)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder;->w:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setDragController(Lcom/zui/launcher/dragndrop/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    return-void
.end method

.method public setFirstOpenFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/Folder;->S:Z

    return-void
.end method

.method public setFolderIcon(Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    return-void
.end method

.method public showItem(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragOptions;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->rank:I

    iput v0, p0, Lcom/zui/launcher/folder/Folder;->v:I

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder;->A:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    iget-boolean v0, p2, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    new-instance v1, Lcom/zui/launcher/folder/Folder$g;

    iget-object v3, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-direct {v1, p0, v3, v2}, Lcom/zui/launcher/folder/Folder$g;-><init>(Lcom/zui/launcher/folder/Folder;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/zui/launcher/Workspace;->beginDragShared(Landroid/view/View;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;)V

    :cond_1
    return v2
.end method

.method public startEditingFolderName()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/folder/Folder$h;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/Folder$h;-><init>(Lcom/zui/launcher/folder/Folder;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTextViewFocus()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusLeftId(I)V

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusForwardId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setNextFocusUpId(I)V

    new-instance v0, Lcom/zui/launcher/folder/Folder$b;

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/folder/Folder$b;-><init>(Lcom/zui/launcher/folder/Folder;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method
