.class public Lcom/zui/launcher/AppWidgetResizeFrame;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/AppWidgetResizeFrame$b;
    }
.end annotation


# static fields
.field private static final P:Landroid/graphics/Rect;

.field private static Q:[Landroid/graphics/Point;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Landroid/widget/ImageButton;

.field private L:I

.field private M:I

.field private final N:Landroid/view/View$OnAttachStateChangeListener;

.field private O:Z

.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

.field private final c:Lcom/zui/launcher/FirstFrameAnimatorHelper;

.field private final d:[Landroid/view/View;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

.field private g:Lcom/zui/launcher/CellLayout;

.field private h:Lcom/zui/launcher/dragndrop/DragLayer;

.field private i:Landroid/graphics/Rect;

.field private final j:I

.field private final k:I

.field private final l:[I

.field private final m:[I

.field private final n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

.field private final o:Lcom/zui/launcher/AppWidgetResizeFrame$b;

.field private final p:Lcom/zui/launcher/AppWidgetResizeFrame$b;

.field private final q:Lcom/zui/launcher/AppWidgetResizeFrame$b;

.field private final r:Lcom/zui/launcher/AppWidgetResizeFrame$b;

.field private final s:Lcom/zui/launcher/AppWidgetResizeFrame$b;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    new-array p3, p2, [Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->e:Ljava/util/List;

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->l:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->m:[I

    new-instance v0, Lcom/zui/launcher/AppWidgetResizeFrame$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame$a;)V

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    new-instance v0, Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-direct {v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame$a;)V

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->o:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    new-instance v0, Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-direct {v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame$a;)V

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->p:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    new-instance v0, Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-direct {v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame$a;)V

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->q:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    new-instance v0, Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-direct {v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame$a;)V

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->r:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    new-instance v0, Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-direct {v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame$a;)V

    iput-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->s:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->G:I

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->H:I

    new-instance v1, Lcom/zui/launcher/AppWidgetResizeFrame$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/AppWidgetResizeFrame$a;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame;)V

    iput-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->N:Landroid/view/View$OnAttachStateChangeListener;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->b:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07065d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->j:I

    mul-int/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    new-instance p1, Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-direct {p1, p0}, Lcom/zui/launcher/FirstFrameAnimatorHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->c:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->e:Ljava/util/List;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/AppWidgetResizeFrame;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->a:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->h:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1, v2, p1}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->shouldExchangeXY()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->j:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->i:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->j:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->i:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->j:I

    sub-int/2addr v3, p0

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, p0

    int-to-float p0, v5

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->j:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->i:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->j:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->i:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->j:I

    sub-int/2addr v3, p0

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p0

    int-to-float p0, v4

    int-to-float v4, v5

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    float-to-int p0, p0

    :goto_0
    iput v3, p1, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static c(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f28f5c3    # 0.66f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v0, v2}, Lcom/zui/launcher/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->a:Lcom/zui/launcher/Launcher;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    iput v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->I:I

    iput p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->J:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    sget-object v0, Lcom/zui/launcher/AppWidgetResizeFrame;->Q:[Landroid/graphics/Point;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Point;

    sput-object v3, Lcom/zui/launcher/AppWidgetResizeFrame;->Q:[Landroid/graphics/Point;

    iget-object v4, v0, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v3, Lcom/zui/launcher/AppWidgetResizeFrame;->Q:[Landroid/graphics/Point;

    iget-object v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->portraitProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    aput-object v0, v3, v1

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sget-object v0, Lcom/zui/launcher/AppWidgetResizeFrame;->Q:[Landroid/graphics/Point;

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p1

    int-to-float v3, v3

    div-float/2addr v3, p0

    float-to-int v3, v3

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p2

    int-to-float v2, v2

    div-float/2addr v2, p0

    float-to-int v2, v2

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v4

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p1, p1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-int p0, p2

    invoke-virtual {p3, p1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p3
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->y:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->E:I

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->F:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->C:I

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->D:I

    new-instance v0, Lcom/zui/launcher/i;

    invoke-direct {v0, p0}, Lcom/zui/launcher/i;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i(Z)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->C:I

    iget v4, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->E:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->y:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-static {v3}, Lcom/zui/launcher/AppWidgetResizeFrame;->c(F)I

    move-result v7

    iget v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->D:I

    iget v3, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->F:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->z:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/zui/launcher/AppWidgetResizeFrame;->c(F)I

    move-result v1

    if-nez p1, :cond_0

    if-nez v7, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->l:[I

    const/16 v16, 0x0

    aput v16, v2, v16

    const/16 v17, 0x1

    aput v16, v2, v17

    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v2, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget-boolean v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_1
    iget v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_0
    iget-boolean v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v6, :cond_2

    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_2
    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->shouldExchangeXY()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v8, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v8}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v8

    invoke-static {v5, v2, v8}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v5

    add-int/2addr v2, v5

    move v12, v5

    move v5, v6

    goto :goto_2

    :cond_3
    add-int/2addr v2, v5

    add-int/2addr v4, v6

    move v12, v6

    move/from16 v19, v4

    move v4, v2

    move/from16 v2, v19

    :goto_2
    iget-object v6, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {v6, v5, v4}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    iget-object v4, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget-boolean v5, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    iget-boolean v6, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->u:Z

    iget v8, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->A:I

    iget v9, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->L:I

    iget-object v10, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v10}, Lcom/zui/launcher/CellLayout;->getCountH()I

    move-result v10

    iget-object v11, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->o:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual/range {v4 .. v11}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b(ZZIIIILcom/zui/launcher/AppWidgetResizeFrame$b;)I

    move-result v18

    iget-object v4, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->o:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget v5, v4, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    invoke-virtual {v4}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result v4

    const/4 v6, -0x1

    if-eqz v18, :cond_5

    iget-object v7, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->l:[I

    iget-boolean v8, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move/from16 v8, v17

    :goto_3
    aput v8, v7, v16

    :cond_5
    iget-object v7, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {v7, v12, v2}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    iget-object v8, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget-boolean v9, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    iget-boolean v10, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->w:Z

    iget v12, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->B:I

    iget v13, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->M:I

    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountV()I

    move-result v14

    iget-object v15, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->o:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    move v11, v1

    invoke-virtual/range {v8 .. v15}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b(ZZIIIILcom/zui/launcher/AppWidgetResizeFrame$b;)I

    move-result v9

    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->o:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget v2, v1, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    invoke-virtual {v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result v1

    if-eqz v9, :cond_7

    iget-object v7, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->l:[I

    iget-boolean v8, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v6, v17

    :goto_4
    aput v6, v7, v17

    :cond_7
    if-nez p1, :cond_8

    if-nez v9, :cond_8

    if-nez v18, :cond_8

    return-void

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->shouldExchangeXY()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-static {v2, v1, v6}, Lcom/zui/launcher/Utilities;->getOriginalCellX(III)I

    move-result v2

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->getOriginalCellY(I)I

    move-result v5

    move v11, v1

    move v13, v2

    move v12, v4

    move v10, v5

    goto :goto_5

    :cond_9
    move v12, v1

    move v10, v2

    move v11, v4

    move v13, v5

    :goto_5
    if-eqz p1, :cond_a

    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->l:[I

    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->m:[I

    aget v4, v2, v16

    aput v4, v1, v16

    aget v2, v2, v17

    aput v2, v1, v17

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->m:[I

    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->l:[I

    aget v4, v2, v16

    aput v4, v1, v16

    aget v2, v2, v17

    aput v2, v1, v17

    :goto_6
    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    iget-object v6, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object v7, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->l:[I

    move v2, v13

    move-object v14, v3

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/zui/launcher/CellLayout;->t(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->b:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_c

    iget v1, v14, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v1, v11, :cond_b

    iget v1, v14, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v1, v12, :cond_c

    :cond_b
    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->b:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->a:Lcom/zui/launcher/Launcher;

    const v3, 0x7f120744

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v17

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_c
    iput v13, v14, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iput v10, v14, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iput v11, v14, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v12, v14, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->z:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->z:I

    iget v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->y:I

    add-int v1, v1, v18

    iput v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->y:I

    if-nez p1, :cond_d

    iget-object v1, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object v2, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1, v2, v11, v12}, Lcom/zui/launcher/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_d
    iget-object v0, v0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    return-void
.end method

.method private j(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 3

    iput-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->N:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetHostView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->N:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->O:Z

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->x:I

    iput-object p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->h:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->shouldExchangeXY()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->A:I

    iget p3, p2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_0

    :cond_1
    iget p3, p2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->A:I

    iget p3, p2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    :goto_0
    iput p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->B:I

    iget p3, p2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->L:I

    iget p2, p2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    iput p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->M:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->i:Landroid/graphics/Rect;

    iget p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->x:I

    const/4 p2, 0x0

    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->shouldExchangeXY()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, p3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->shouldExchangeXY()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, p3

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, v0

    goto :goto_1

    :cond_5
    :goto_2
    const p1, 0x7f0a0441

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->K:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->g:Lcom/zui/launcher/CellLayout;

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private k(Z)V
    .locals 13

    sget-object v0, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/zui/launcher/AppWidgetResizeFrame;->b(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    if-gez v2, :cond_0

    neg-int v5, v2

    iput v5, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->G:I

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->G:I

    :goto_0
    add-int v5, v2, v1

    iget-object v6, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->h:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v6, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->h:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    iput v5, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->H:I

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->H:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-nez p1, :cond_3

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    iput v2, v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    :goto_2
    if-ge v4, v7, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p1, p1, v4

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_4

    :cond_3
    new-array p1, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v9, Lcom/zui/launcher/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [I

    iget v12, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    aput v12, v11, v4

    aput v0, v11, v8

    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p1, v4

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/Property;

    new-array v9, v10, [I

    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    aput v11, v9, v4

    aput v1, v9, v8

    invoke-static {v0, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p1, v8

    sget-object v0, Lcom/zui/launcher/views/BaseDragLayer;->LAYOUT_X:Landroid/util/Property;

    new-array v1, v10, [I

    iget v9, v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    aput v9, v1, v4

    aput v3, v1, v8

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p1, v10

    const/4 v0, 0x3

    sget-object v1, Lcom/zui/launcher/views/BaseDragLayer;->LAYOUT_Y:Landroid/util/Property;

    new-array v3, v10, [I

    iget v9, v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    aput v9, v3, v4

    aput v2, v3, v8

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {v5, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->c:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zui/launcher/h;

    invoke-direct {v1, p0}, Lcom/zui/launcher/h;-><init>(Lcom/zui/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move p1, v4

    :goto_3
    if-ge p1, v7, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->c:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    iget-object v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object v2, v2, p1

    sget-object v3, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    aput v6, v5, v4

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_4
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public static showForWidget(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Lcom/zui/launcher/CellLayout;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/zui/launcher/views/ActivityContext;I)V

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0046

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/AppWidgetResizeFrame;

    invoke-direct {v0, p0, p1, v1}, Lcom/zui/launcher/AppWidgetResizeFrame;->j(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragLayer;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-boolean p1, v0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    invoke-direct {v0, v3}, Lcom/zui/launcher/AppWidgetResizeFrame;->k(Z)V

    return-void
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 7

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->x:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->x:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->shouldExchangeXY()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->x:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iget v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->x:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :cond_4
    :goto_3
    iget v5, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    if-ge p1, v5, :cond_5

    if-eqz v0, :cond_5

    move v5, v1

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    iput-boolean v5, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    sub-int/2addr v5, v6

    if-le p1, v5, :cond_6

    if-eqz v0, :cond_6

    move p1, v1

    goto :goto_5

    :cond_6
    move p1, v2

    :goto_5
    iput-boolean p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->u:Z

    iget p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->G:I

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_7

    if-eqz v3, :cond_7

    move p1, v1

    goto :goto_6

    :cond_7
    move p1, v2

    :goto_6
    iput-boolean p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->H:I

    add-int/2addr p1, v0

    if-le p2, p1, :cond_8

    if-eqz v3, :cond_8

    move p1, v1

    goto :goto_7

    :cond_8
    move p1, v2

    :goto_7
    iput-boolean p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->w:Z

    iget-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->u:Z

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    if-nez p2, :cond_a

    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    move p1, v2

    goto :goto_9

    :cond_a
    :goto_8
    move p1, v1

    :goto_9
    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p2, p2, v2

    iget-boolean v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_a

    :cond_b
    move v0, v5

    :goto_a
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p2, p2, v4

    iget-boolean v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->u:Z

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_b

    :cond_c
    move v0, v5

    :goto_b
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p2, p2, v1

    iget-boolean v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_c

    :cond_d
    move v0, v5

    :goto_c
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    const/4 v0, 0x3

    aget-object p2, p2, v0

    iget-boolean v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->w:Z

    if-eqz v0, :cond_e

    goto :goto_d

    :cond_e
    move v3, v5

    :goto_d
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    iget-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->p:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    mul-int/2addr v3, v4

    :goto_e
    sub-int/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    goto :goto_f

    :cond_10
    iget-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->u:Z

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->p:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    mul-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->h:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    goto :goto_e

    :cond_11
    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->p:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p2, v2, v2}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    :goto_f
    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->q:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    iget-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->r:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    mul-int/2addr v2, v4

    :goto_10
    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    goto :goto_11

    :cond_12
    iget-boolean p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->w:Z

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->r:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->k:I

    mul-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->h:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    goto :goto_10

    :cond_13
    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->r:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p2, v2, v2}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    :goto_11
    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->s:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p2, v0, p0}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->d(II)V

    return p1
.end method

.method public synthetic f()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/AppWidgetResizeFrame;->k(Z)V

    return-void
.end method

.method public synthetic g(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected handleClose(Z)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->h:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->N:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/AppWidgetResizeFrame;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/AppWidgetResizeFrame;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    iget-object p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->a:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->I:I

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->J:I

    if-eqz v3, :cond_3

    sub-int/2addr v1, v0

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->I:I

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->J:I

    if-eqz v3, :cond_2

    sub-int/2addr v1, v0

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->h()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->J:I

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->I:I

    :cond_3
    :goto_0
    return p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/zui/launcher/AppWidgetResizeFrame;->d(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/AppWidgetResizeFrame;->i(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p2}, Lcom/zui/launcher/util/FocusLogic;->shouldConsume(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->a:Lcom/zui/launcher/Launcher;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    iget-object p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->f:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sget-boolean p1, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->d:[Landroid/view/View;

    aget-object p2, p2, p1

    iget-object p3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public shouldExchangeXY()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->O:Z

    return p0
.end method

.method public visualizeResizeForDelta(II)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->p:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->C:I

    iget-object v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->r:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->D:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->p:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->c(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->C:I

    iget-object v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->q:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget-boolean v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    iget-boolean v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->u:Z

    iget-object v4, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a(ZZILcom/zui/launcher/AppWidgetResizeFrame$b;)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget v1, p1, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    iput v1, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    invoke-virtual {p1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->r:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->c(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->D:I

    iget-object p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->s:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget-boolean v1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    iget-boolean v2, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->w:Z

    iget-object v3, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    invoke-virtual {p2, v1, v2, p1, v3}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a(ZZILcom/zui/launcher/AppWidgetResizeFrame$b;)V

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->n:Lcom/zui/launcher/AppWidgetResizeFrame$b;

    iget p2, p1, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    iput p2, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    invoke-virtual {p1}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher/AppWidgetResizeFrame;->i(Z)V

    sget-object p1, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/zui/launcher/AppWidgetResizeFrame;->b(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->t:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sget-object p2, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iget p2, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->v:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget-object p2, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iget p2, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    iget-boolean p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->u:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    :cond_2
    iget-boolean p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame;->w:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/zui/launcher/AppWidgetResizeFrame;->P:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
