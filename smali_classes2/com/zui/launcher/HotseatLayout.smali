.class public Lcom/zui/launcher/HotseatLayout;
.super Lcom/zui/launcher/Hotseat;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/HotseatLayout$c;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "HotseatLayout"


# instance fields
.field private e0:Z

.field private f0:I

.field private g0:I

.field private final h0:Lcom/zui/launcher/Alarm;

.field private i0:I

.field private j0:I

.field private k0:I

.field private l0:I

.field private m0:Ljava/lang/Runnable;

.field public final mPonits:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private n0:Z

.field private o0:I

.field private p0:Lcom/zui/launcher/Launcher;

.field private q0:I

.field private r0:I

.field private s0:I

.field private t0:I

.field private u0:I

.field private v0:I

.field private w0:Landroid/graphics/RectF;

.field private x0:I

.field private final y0:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/Hotseat;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/launcher/HotseatLayout;->f0:I

    iput v1, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    new-instance v1, Lcom/zui/launcher/Alarm;

    invoke-direct {v1}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    new-instance v1, Lcom/zui/launcher/HotseatLayout$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/HotseatLayout$a;-><init>(Lcom/zui/launcher/HotseatLayout;)V

    iput-object v1, p0, Lcom/zui/launcher/HotseatLayout;->m0:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/HotseatLayout;->w0:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/zui/launcher/HotseatLayout;->y0:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->q0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->f0:I

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/launcher/HotseatLayout$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/HotseatLayout$a;-><init>(Lcom/zui/launcher/HotseatLayout;)V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayout;->m0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayout;->w0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayout;->y0:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->q0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/launcher/HotseatLayout;->f0:I

    iput p2, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    new-instance p2, Lcom/zui/launcher/Alarm;

    invoke-direct {p2}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    new-instance p2, Lcom/zui/launcher/HotseatLayout$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/HotseatLayout$a;-><init>(Lcom/zui/launcher/HotseatLayout;)V

    iput-object p2, p0, Lcom/zui/launcher/HotseatLayout;->m0:Ljava/lang/Runnable;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/HotseatLayout;->w0:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zui/launcher/HotseatLayout;->y0:Landroid/graphics/Paint;

    return-void
.end method

.method private A0(I)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reorderRightIcon .. mIsDragViewExternal =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->B0()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getDraggingInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_2

    iget-object v7, v2, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v6, v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    goto :goto_1

    :cond_1
    iget v2, v2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_1
    move v7, v2

    move-object v8, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v8, v3

    move v7, v5

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reorderRightIcon goneIndex =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-ne v7, v5, :cond_4

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_4
    add-int/lit8 v0, v1, -0x1

    if-ne v7, v0, :cond_5

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->u0(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragCompleted()Z

    move-result v0

    const-string v1, "<F5><F5><F5><F5><F5><F5><F5><F5>"

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reorderRightIcon .. isCompleted =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    :goto_3
    move v10, v0

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->z0()V

    new-instance v0, Lcom/zui/launcher/HotseatLayout$c;

    move-object v5, v0

    move-object v6, p0

    move v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/zui/launcher/HotseatLayout$c;-><init>(Lcom/zui/launcher/HotseatLayout;ILandroid/view/View;II)V

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    return-void
.end method

.method private B0()V
    .locals 13

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/HotseatLayout;->o0:I

    if-lez v3, :cond_0

    invoke-direct {p0, v3}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const-string v5, ", "

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---runAnimBecauseCountChanged~~ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v7, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v4 .. v12}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---invisible child ~~ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private C0(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/HotseatLayout;->f0:I

    return p1
.end method

.method static synthetic e0(Lcom/zui/launcher/HotseatLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->B0()V

    return-void
.end method

.method static synthetic f0(Lcom/zui/launcher/HotseatLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    return p1
.end method

.method static synthetic g0(Lcom/zui/launcher/HotseatLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    return-void
.end method

.method private getLauncher()Lcom/zui/launcher/Launcher;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method private getTmpCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->f0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->f0:I

    goto :goto_1

    :cond_0
    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget p0, p0, Lcom/zui/launcher/HotseatLayout;->f0:I

    return p0
.end method

.method static synthetic h0(Lcom/zui/launcher/HotseatLayout;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    move-result p0

    return p0
.end method

.method static synthetic i0(Lcom/zui/launcher/HotseatLayout;ILandroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/HotseatLayout;->k0(ILandroid/view/View;II)V

    return-void
.end method

.method private j0(ILandroid/view/View;I)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-ge v14, v13, :cond_9

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v8, p2

    if-ne v15, v8, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_1
    const/4 v2, -0x1

    const-string v3, " to "

    const-string v4, "animateItemsToDragIndex . from "

    if-ne v11, v2, :cond_4

    if-le v1, v10, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v2

    if-eqz v2, :cond_2

    iput v5, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_2

    :cond_2
    iput v5, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    const/16 v4, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, v16

    move/from16 v8, v17

    goto/16 :goto_6

    :cond_3
    iget v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    goto/16 :goto_6

    :cond_4
    const/4 v2, 0x1

    if-ne v11, v2, :cond_7

    if-lt v1, v10, :cond_7

    add-int/lit8 v5, v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v2

    if-eqz v2, :cond_5

    iput v5, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_3

    :cond_5
    iput v5, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    const/16 v4, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    goto :goto_4

    :cond_6
    iget v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v5

    :goto_4
    move v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    goto :goto_6

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_5

    :cond_8
    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateItemsToDragIndex because coordinate changed~~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    :goto_6
    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    invoke-virtual {v9, v15}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private k0(ILandroid/view/View;II)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createReorder mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/zui/launcher/HotseatLayout;->j0(ILandroid/view/View;I)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->commitTempPlacement()V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->t0(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->dumpState()V

    return-void
.end method

.method private l0(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child  title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "child\'s visibility : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout$LayoutParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cell == ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useTmpCoords == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmpCell == ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget v0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v1, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOccupied : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotseatLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTempOccupied : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    iget-object p0, p0, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    iget v2, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    aget-object p0, p0, v2

    iget p1, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    aget-boolean p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private m0(Lcom/zui/launcher/CellLayout$LayoutParams;[Landroid/graphics/Point;)I
    .locals 7

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findVacantPoint, realcount ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_1

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_2

    :cond_1
    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    :goto_2
    if-ge v4, v0, :cond_4

    aput-boolean v6, v1, v4

    goto :goto_4

    :cond_2
    iget-boolean v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_3

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_3

    :cond_3
    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_3
    if-ge v4, v0, :cond_4

    aput-boolean v6, v1, v4

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v4, v0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_7

    aget-boolean v5, v1, v3

    if-nez v5, :cond_6

    move v4, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_8

    array-length v2, p2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findVacantPoint, vacantCell ==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->printHotseatWarning(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result p0

    if-eqz p0, :cond_a

    if-lt v4, v2, :cond_9

    iget p0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    goto :goto_6

    :cond_9
    aget-object p0, p2, v4

    iget p0, p0, Landroid/graphics/Point;->y:I

    :goto_6
    return p0

    :cond_a
    if-lt v4, v2, :cond_b

    iget p0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    goto :goto_7

    :cond_b
    aget-object p0, p2, v4

    iget p0, p0, Landroid/graphics/Point;->x:I

    :goto_7
    return p0
.end method

.method private o0(Z)I
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getDraggingInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v2, p1

    :goto_0
    if-ge p1, v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method private p0()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/HotseatLayout;->v0:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static printHotseatWarning(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private q0(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    new-instance v0, Lcom/zui/launcher/HotseatLayoutTouchListener;

    invoke-direct {v0, p1, p0}, Lcom/zui/launcher/HotseatLayoutTouchListener;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/HotseatLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private r0(Lcom/zui/launcher/DeviceProfile;I[Landroid/graphics/Point;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0703d1

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->s0:I

    iget-object v0, p1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    const v1, 0x7f0703d4

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->u0:I

    iget v1, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v2, p0, Lcom/zui/launcher/HotseatLayout;->t0:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v4, v0

    add-int/2addr v2, v4

    const v4, 0x7f0703d7

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/zui/launcher/HotseatLayout;->t0:I

    const v4, 0x7f0703d9

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/HotseatLayout;->x0:I

    sub-int p3, v1, v2

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/zui/launcher/HotseatLayout;->q0:I

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v4, p0, Lcom/zui/launcher/HotseatLayout;->s0:I

    sub-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zui/launcher/HotseatLayout;->r0:I

    iget-object v5, p0, Lcom/zui/launcher/HotseatLayout;->w0:Landroid/graphics/RectF;

    int-to-float v6, p3

    int-to-float v7, p1

    add-int/2addr v2, p3

    int-to-float p3, v2

    add-int/2addr p1, v4

    int-to-float p1, p1

    invoke-virtual {v5, v6, v7, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result p1

    iget-object p3, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    int-to-long v4, p2

    invoke-virtual {p3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/Point;

    iget p3, p0, Lcom/zui/launcher/HotseatLayout;->j0:I

    if-ne p3, v0, :cond_0

    iget p3, p0, Lcom/zui/launcher/HotseatLayout;->k0:I

    if-ne p3, v1, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    if-eq p2, p1, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    const/4 p2, 0x1

    :goto_0
    if-gt p2, p1, :cond_2

    new-array p3, p2, [Landroid/graphics/Point;

    iget v2, p0, Lcom/zui/launcher/HotseatLayout;->t0:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v4, v0

    add-int/2addr v2, v4

    rsub-int/lit8 v4, p2, 0x3

    mul-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v6, p2, 0x1

    div-int/2addr v4, v6

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iget v7, p0, Lcom/zui/launcher/HotseatLayout;->t0:I

    add-int/2addr v2, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v2, v7

    :goto_1
    if-ge v5, p2, :cond_1

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    aput-object v7, p3, v5

    add-int/lit8 v7, v5, 0x1

    mul-int v8, v4, v7

    add-int/2addr v8, v2

    mul-int v9, v0, v5

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " x-coordinate of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HotseatLayout"

    invoke-static {v10, v9}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, p3, v5

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Point;->set(II)V

    move v5, v7

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move p2, v6

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->j0:I

    iput v1, p0, Lcom/zui/launcher/HotseatLayout;->k0:I

    :cond_3
    return-void
.end method

.method private s0()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->hasVerticalHotseat()Z

    move-result p0

    return p0
.end method

.method private t0(I)V
    .locals 5

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->u0:I

    iget v2, p0, Lcom/zui/launcher/HotseatLayout;->t0:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/2addr v1, p1

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->q0:I

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayout;->w0:Landroid/graphics/RectF;

    int-to-float v1, v0

    iget v3, p0, Lcom/zui/launcher/HotseatLayout;->r0:I

    int-to-float v4, v3

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/zui/launcher/HotseatLayout;->s0:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method private u0(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    :goto_0
    iput p1, p0, Lcom/zui/launcher/HotseatLayout;->o0:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "postAnim------------- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/HotseatLayout;->o0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayout;->m0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private v0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private w0(II)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->k0:I

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->j0:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recaculateIconCenterCoord, contentWidth ==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->printHotseatInfo(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/HotseatLayout;->caculateIconCenterCoord(II)V

    return-void
.end method

.method private x0([Landroid/graphics/Point;Lcom/zui/launcher/ShortcutAndWidgetContainer;I)[Landroid/graphics/Point;
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result v1

    iget-boolean v2, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_1

    const/4 p2, 0x2

    iput p2, p0, Lcom/zui/launcher/HotseatLayout;->v0:I

    invoke-direct {p0, v0, p3, p1}, Lcom/zui/launcher/HotseatLayout;->r0(Lcom/zui/launcher/DeviceProfile;I[Landroid/graphics/Point;)V

    iget-object p2, p0, Lcom/zui/launcher/HotseatLayout;->y0:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    iget-boolean p3, p3, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_0

    const p3, 0x7f0601a6

    goto :goto_0

    :cond_0
    const p3, 0x7f0601a7

    :goto_0
    invoke-virtual {p0, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    array-length v2, p1

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    if-eq p2, v1, :cond_4

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "retrieve point data, realCount === "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->printHotseatWarning(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "retrieve point data, grid === "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->printHotseatWarning(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/HotseatLayout;->v0:I

    iget p1, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p2, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    :goto_1
    add-int/2addr p2, v2

    sub-int/2addr p1, p2

    iget-object p2, v0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iput p2, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    invoke-direct {p0, v1, p1}, Lcom/zui/launcher/HotseatLayout;->w0(II)V

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, [Landroid/graphics/Point;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getHotseatChildLeft, points === "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->printHotseatWarning(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object p1
.end method

.method private y0()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method M()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/CellLayout;->M()V

    return-void
.end method

.method N()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/CellLayout;->N()V

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/HotseatLayout;->removeEmptyCell(Z)V

    return-void
.end method

.method O(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/CellLayout;->O(Landroid/view/View;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDropChild~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    invoke-virtual {p0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    :cond_0
    return-void
.end method

.method W(II)[I
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/CellLayout;->W(II)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->p0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget p0, p0, Lcom/zui/launcher/HotseatLayout;->u0:I

    aput p0, v0, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    if-gt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Hotseat;->hasVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    iget p0, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    invoke-static {p2, p0}, Lcom/zui/launcher/DeviceProfile;->calculateCellHeight(II)I

    move-result p0

    aput p0, v0, p1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    invoke-static {p1, p0}, Lcom/zui/launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result p0

    aput p0, v0, v3

    :cond_2
    :goto_0
    return-object v0
.end method

.method X()V
    .locals 6

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-boolean v5, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragCompleted()Z

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertTempState .. needCommit .."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->commitTempPlacement()V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {p0, v4}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual {p0, v4}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v4, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->u0(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->J()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    :cond_5
    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getDragMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_7

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_6
    invoke-super {p0}, Lcom/zui/launcher/CellLayout;->X()V

    :cond_7
    :goto_3
    return-void
.end method

.method public addEmptyCell()V
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add empty cell : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " VS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->u0(I)V

    :cond_1
    return-void
.end method

.method public addShortcutIntoHotseat(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->getRealChildCount()I

    move-result v1

    const-string v2, "Hotseat"

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no cell can handle this icon + "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    if-eqz p1, :cond_4

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ltz v1, :cond_4

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCellAndShortcut, this info=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " index=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x65

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iput v3, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/HotseatLayout;->makeAnEmptyCell(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/zui/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v3
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result p3

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p4

    invoke-virtual {p4}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result p4

    if-eq p2, p3, :cond_0

    if-nez p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "addViewToCellLayout ~~~ "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "  vs "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-direct {p0, p2}, Lcom/zui/launcher/HotseatLayout;->t0(I)V

    :cond_0
    return p1
.end method

.method public caculateIconCenterCoord(II)V
    .locals 12

    iget v0, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    invoke-static {p2, v0}, Lcom/zui/launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->j0:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->k0:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->j0:I

    iput p2, p0, Lcom/zui/launcher/HotseatLayout;->k0:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  cellWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->printHotseatInfo(Ljava/lang/String;)V

    if-lez p2, :cond_4

    if-gtz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_4

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p2, v1}, Lcom/zui/launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v1

    new-array v2, v0, [Landroid/graphics/Point;

    add-int v3, p2, v1

    add-int/lit8 v4, v0, 0x1

    div-int/2addr v3, v4

    sub-int/2addr v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cellWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  gap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/util/Debug;->printHotseatInfo(Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v6, " is : "

    const-string v7, " x-coordinate of "

    const-string v8, "The "

    const/4 v9, 0x0

    if-ne v0, v5, :cond_2

    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cellWidth------"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    :goto_1
    if-ge v9, v0, :cond_3

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v9

    add-int/lit8 v3, v9, 0x1

    mul-int v5, v1, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    aget-object v9, v2, v9

    invoke-virtual {v9, v5, v5}, Landroid/graphics/Point;->set(II)V

    move v9, v3

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v9, v0, :cond_3

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    aput-object v5, v2, v9

    add-int/lit8 v5, v9, 0x1

    mul-int v10, v3, v5

    mul-int v11, v1, v9

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    aget-object v9, v2, v9

    invoke-virtual {v9, v10, v10}, Landroid/graphics/Point;->set(II)V

    move v9, v5

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move v0, v4

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public commitReorderState(Landroid/view/View;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitReorderState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragCompleted()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitReorderState ~~ isCompleted == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->o0(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-string v4, "commitReorderState ~~ tmpCount == "

    const-string v5, "commitReorderState ~~ cellX == "

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_0
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/zui/launcher/HotseatLayout;->k0(ILandroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->setCurrentEventType(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dragViewOut(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getDraggingInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/launcher/Launcher;->y1(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dragViewOut .. target == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/HotseatLayout;->commitReorderState(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 6

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container  childCount ~~~~~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/zui/launcher/HotseatLayout;->l0(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findNearestArea(IIII[I)[I
    .locals 8

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    new-array p5, p3, [I

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    aput v1, p5, v1

    aput v1, p5, v0

    goto/16 :goto_5

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result p4

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    aput v1, p5, v1

    aput v1, p5, v0

    return-object p5

    :cond_2
    iget-object v4, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v5

    invoke-direct {p0, v4, p3, v5}, Lcom/zui/launcher/HotseatLayout;->x0([Landroid/graphics/Point;Lcom/zui/launcher/ShortcutAndWidgetContainer;I)[Landroid/graphics/Point;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    if-eqz p3, :cond_5

    move v5, v1

    :goto_1
    array-length v6, p3

    if-ge v5, v6, :cond_5

    if-eqz p4, :cond_3

    aget-object v6, p3, v5

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    if-ge p2, v6, :cond_4

    aput v1, p5, v1

    aput v5, p5, v0

    goto :goto_2

    :cond_3
    aget-object v6, p3, v5

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    add-int/2addr v6, v2

    if-ge p1, v6, :cond_4

    aput v5, p5, v1

    aput v1, p5, v0

    :goto_2
    move p0, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move p0, v1

    :goto_3
    if-nez p0, :cond_8

    if-eqz p4, :cond_6

    move p0, v1

    goto :goto_4

    :cond_6
    array-length p0, p3

    sub-int/2addr p0, v0

    :goto_4
    aput p0, p5, v1

    if-eqz p4, :cond_7

    array-length p0, p3

    add-int/lit8 v1, p0, -0x1

    :cond_7
    aput v1, p5, v0

    :cond_8
    :goto_5
    return-object p5
.end method

.method public getHotseatChildLeft(Lcom/zui/launcher/ShortcutAndWidgetContainer;Lcom/zui/launcher/CellLayout$LayoutParams;I)I
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Point;

    invoke-direct {p0, v1, p1, v0}, Lcom/zui/launcher/HotseatLayout;->x0([Landroid/graphics/Point;Lcom/zui/launcher/ShortcutAndWidgetContainer;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-nez v1, :cond_1

    const-string p1, "getHotseatChildLeft, params.isLockedToGrid is false!!"

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout$LayoutParams;->getX()I

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-direct {p0, p3}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    :cond_2
    iget-boolean p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz p3, :cond_3

    iget p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_3
    iget p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_0
    iget v1, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p1, v1, v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getDraggingInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, p1, :cond_4

    iget p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    const-string v1, "NOT VISIBLE <F6><F6><F6><F6><F6><F6><F6><F6><F6>"

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->l0(Landroid/view/View;)V

    :cond_4
    if-eqz v0, :cond_6

    array-length p1, v0

    if-gt p1, p3, :cond_5

    goto :goto_1

    :cond_5
    aget-object p0, v0, p3

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0

    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get error x-coordinate, return default value."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->dumpState()V

    invoke-direct {p0, p2, v0}, Lcom/zui/launcher/HotseatLayout;->m0(Lcom/zui/launcher/CellLayout$LayoutParams;[Landroid/graphics/Point;)I

    move-result p0

    return p0

    :cond_7
    :goto_2
    iget p0, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    return p0
.end method

.method public getHotseatChildTop(Lcom/zui/launcher/ShortcutAndWidgetContainer;Lcom/zui/launcher/CellLayout$LayoutParams;I)I
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Point;

    invoke-direct {p0, v1, p1, v0}, Lcom/zui/launcher/HotseatLayout;->x0([Landroid/graphics/Point;Lcom/zui/launcher/ShortcutAndWidgetContainer;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-nez v1, :cond_1

    const-string p1, "getHotseatChildLeft, params.isLockedToGrid is false!!"

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget p0, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-direct {p0, p3}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    :cond_2
    iget-boolean p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz p3, :cond_3

    iget p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_0

    :cond_3
    iget p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    :goto_0
    iget v1, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p1, v1, v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getDraggingInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, p1, :cond_4

    iget p3, p2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const-string v1, "NOT VISIBLE <F6><F6><F6><F6><F6><F6><F6><F6><F6>"

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->l0(Landroid/view/View;)V

    :cond_4
    if-eqz v0, :cond_6

    array-length p1, v0

    if-gt p1, p3, :cond_5

    goto :goto_1

    :cond_5
    aget-object p0, v0, p3

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0

    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get error y-coordinate, return default value."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->dumpState()V

    invoke-direct {p0, p2, v0}, Lcom/zui/launcher/HotseatLayout;->m0(Lcom/zui/launcher/CellLayout$LayoutParams;[Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public getMaxCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    return p0
.end method

.method public getRealChildCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getUnusedHorizontalSpace()I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->p0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Hotseat;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v1

    iget p0, p0, Lcom/zui/launcher/HotseatLayout;->u0:I

    :goto_1
    mul-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0

    :cond_1
    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Hotseat;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->l0:I

    iget p0, p0, Lcom/zui/launcher/CellLayout;->a:I

    goto :goto_1

    :cond_3
    invoke-super {p0}, Lcom/zui/launcher/CellLayout;->getUnusedHorizontalSpace()I

    move-result p0

    return p0
.end method

.method i(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->z0()V

    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/CellLayout;->i(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    return-void
.end method

.method public iconsBackToCellX()V
    .locals 14

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-eq v5, v6, :cond_1

    :cond_0
    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v7, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v7, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, v13

    invoke-virtual/range {v4 .. v12}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    :cond_1
    invoke-virtual {p0, v13}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isHandlingTouch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNearestDropLocationTempOccupied(IIIILandroid/view/View;[I)Z
    .locals 5

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    aget v0, p6, p2

    const/4 v1, 0x1

    aget v2, p6, v1

    aget v3, p6, p2

    add-int/2addr v3, p3

    aget p3, p6, v1

    add-int/2addr p3, p4

    invoke-direct {p1, v0, v2, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    move p6, p2

    :goto_0
    if-ge p6, p4, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v2

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v0, v3

    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {p1, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "isNearestDropLocationTempOccupied, return false"

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    return p2

    :cond_1
    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public itemToOriginalPosition(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->h0:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemToOriginalPosition .. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    if-eq v2, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->X()V

    return-void
.end method

.method public itemToOriginalPosition(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/HotseatLayout;->itemToOriginalPosition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method l(II[I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/CellLayout;->l(II[I)V

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v1

    const-string v2, "  points.length =="

    const-string v3, "cellToCenterPoint~~~~warning"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    array-length p1, v0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    aget-object p2, v0, p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    aput v1, p3, p1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cellY == "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    array-length v4, v0

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->dumpState()V

    return-void

    :cond_3
    if-eqz v0, :cond_5

    array-length p2, v0

    if-lt p1, p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    aget-object p1, v0, p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    aput p2, p3, v4

    :goto_3
    return-void

    :cond_5
    :goto_4
    invoke-static {v3}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cellX == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    array-length v4, v0

    :goto_5
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public makeAnEmptyCell(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeAnEmptyCell index + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, p1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->copyToTmpOccupied()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/zui/launcher/HotseatLayout;->k0(ILandroid/view/View;II)V

    :cond_2
    :goto_0
    return v0
.end method

.method n(III[I)V
    .locals 4

    const/4 p3, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/zui/launcher/CellLayout;->n(III[I)V

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->mPonits:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v1

    const-string v2, "  points.length =="

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    array-length p1, v0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    aget-object p1, v0, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p0, p1

    aput p0, p4, p3

    goto :goto_3

    :cond_1
    :goto_0
    const-string p1, "cellToPoint~~~~warning"

    invoke-static {p1}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cellY == "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    array-length v3, v0

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->dumpState()V

    return-void

    :cond_3
    if-eqz v0, :cond_5

    array-length p2, v0

    if-lt p1, p2, :cond_4

    goto :goto_4

    :cond_4
    aget-object p1, v0, p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    add-int/2addr p1, p0

    aput p1, p4, v3

    :goto_3
    return-void

    :cond_5
    :goto_4
    const-string p2, "cellToPoint~~~~WARNING"

    invoke-static {p2}, Lcom/zui/launcher/HotseatLayout;->printHotseatWarning(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cellX == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    array-length v3, v0

    :goto_5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    goto :goto_2
.end method

.method n0(II)I
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public onDragEnd()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnd, count === "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragCanceled()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd, isCanceled === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->X()V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->notifyMissedNumChanged()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->w0:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->x0:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/launcher/HotseatLayout;->y0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/CellLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotseatLayout, onInterceptTouchEvent, ev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/Hotseat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0

    const-string p1, "prepareChildForDrag, set FLAG ~~~"

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    return-void
.end method

.method public removeEmptyCell(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->o0(Z)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove empty cell : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->A0(I)V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeView, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/HotseatLayout;->i0:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->getLastDropTarget()Lcom/zui/launcher/DropTarget;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/DeleteDropTarget;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->reorderAllIconsJustUI()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/FolderInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/zui/launcher/HotseatLayout;->i0:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "removeView ~~ folder has no child."

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->reorderAllIcons()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const-string p1, "removeView ~~ replace folder, do nothing."

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/HotseatLayout;->i0:I

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq p1, v1, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    :cond_4
    const-wide/16 v0, 0xc8

    new-instance p1, Lcom/zui/launcher/HotseatLayout$b;

    invoke-direct {p1, p0}, Lcom/zui/launcher/HotseatLayout$b;-><init>(Lcom/zui/launcher/HotseatLayout;)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public reorderAllIcons()V
    .locals 17

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInvalidCell childCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result v13

    const/4 v14, 0x0

    move v0, v14

    :goto_0
    if-ge v0, v13, :cond_c

    const/4 v1, 0x0

    :goto_1
    const/4 v2, -0x1

    if-ge v0, v13, :cond_4

    if-eqz v12, :cond_0

    invoke-virtual {v9, v14, v0}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v3

    goto :goto_2

    :cond_0
    invoke-virtual {v9, v0, v14}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_3

    if-eqz v12, :cond_1

    invoke-virtual {v10, v14, v0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :cond_1
    invoke-virtual {v10, v0, v14}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cell occupied error."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", child:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    move v3, v0

    goto :goto_5

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_5
    if-ne v3, v2, :cond_5

    const-string v0, "All cell occupied ."

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v15, v3, 0x1

    move v0, v15

    :goto_6
    if-ge v0, v13, :cond_8

    if-eqz v12, :cond_6

    invoke-virtual {v10, v14, v0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    :cond_6
    invoke-virtual {v10, v0, v14}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    :goto_7
    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    :goto_8
    if-nez v1, :cond_9

    const-string v0, "All icons on the right spot ."

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->y0()V

    goto :goto_b

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.cellX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_a

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_9

    :cond_a
    iget v0, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    vacant cell == "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-eqz v12, :cond_b

    const/4 v2, 0x0

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    :goto_a
    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    move v0, v15

    goto/16 :goto_0

    :cond_c
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/zui/launcher/Workspace;->Y0(Lcom/zui/launcher/CellLayout;)V

    invoke-direct {v9, v11}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {v9, v14}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    return-void
.end method

.method public reorderAllIconsJustUI()V
    .locals 17

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reorderAllIconsJustUI childCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->s0()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result v13

    const/4 v14, 0x0

    move v0, v14

    :goto_0
    if-ge v0, v13, :cond_c

    const/4 v1, 0x0

    :goto_1
    const/4 v2, -0x1

    if-ge v0, v13, :cond_4

    if-eqz v12, :cond_0

    invoke-virtual {v9, v14, v0}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v3

    goto :goto_2

    :cond_0
    invoke-virtual {v9, v0, v14}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_3

    if-eqz v12, :cond_1

    invoke-virtual {v10, v14, v0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :cond_1
    invoke-virtual {v10, v0, v14}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_2

    invoke-virtual {v9, v3}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto :goto_4

    :cond_2
    move v3, v0

    goto :goto_5

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_5
    if-ne v3, v2, :cond_5

    const-string v0, "All cell occupied ."

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v15, v3, 0x1

    move v0, v15

    :goto_6
    if-ge v0, v13, :cond_8

    if-eqz v12, :cond_6

    invoke-virtual {v10, v14, v0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    :cond_6
    invoke-virtual {v10, v0, v14}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    :goto_7
    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    :goto_8
    if-nez v1, :cond_9

    const-string v0, "All icons on the right spot ."

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/HotseatLayout;->y0()V

    goto :goto_b

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.cellX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_a

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_9

    :cond_a
    iget v0, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    vacant cell == "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-eqz v12, :cond_b

    const/4 v2, 0x0

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    :goto_a
    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    move v0, v15

    goto/16 :goto_0

    :cond_c
    :goto_b
    invoke-direct {v9, v11}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    invoke-virtual {v10}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {v9, v14}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    return-void
.end method

.method public resetDragSourceTag()V
    .locals 1

    const-string v0, "resetDragSourceTag, REset FLAG ~~~"

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->e0:Z

    return-void
.end method

.method public retrieveCellCount(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HotseatLayout;->o0(Z)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/launcher/HotseatLayout;->C0(I)I

    move-result v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastTmpCount ==== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/launcher/HotseatLayout;->g0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   addToFolder == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieve cell count == "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  vs "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setFolderReplaced(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/zui/launcher/HotseatLayout;->i0:I

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/Hotseat;->setInsets(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayout;->getTmpCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/zui/launcher/HotseatLayout;->x0([Landroid/graphics/Point;Lcom/zui/launcher/ShortcutAndWidgetContainer;I)[Landroid/graphics/Point;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldExchangeXY()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showBackground(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->y0:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayout;->p0:Lcom/zui/launcher/Launcher;

    iget-boolean p1, p1, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0601a6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0601a7

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method z0()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    if-eqz v0, :cond_0

    const-string v0, "removeAnim------------- "

    invoke-direct {p0, v0}, Lcom/zui/launcher/HotseatLayout;->v0(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/HotseatLayout;->o0:I

    iput-boolean v0, p0, Lcom/zui/launcher/HotseatLayout;->n0:Z

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout;->m0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
