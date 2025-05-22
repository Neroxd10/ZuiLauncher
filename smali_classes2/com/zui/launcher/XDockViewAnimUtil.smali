.class public Lcom/zui/launcher/XDockViewAnimUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MOVE_ICON_DURATION:J = 0x8cL

.field public static final SCALE_ICON_DURATION:J = 0xc8L


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private b:Lcom/zui/launcher/XDockView;

.field c:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->c:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil;->b:Lcom/zui/launcher/XDockView;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->b:Lcom/zui/launcher/XDockView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[ILandroid/view/View;[ILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/XDockViewAnimUtil;->g(Landroid/view/View;[ILandroid/view/View;[ILandroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[I[ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/XDockViewAnimUtil;->f(Landroid/view/View;[I[ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private e()Landroid/animation/ValueAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private f(Landroid/view/View;[I[ILandroid/animation/ValueAnimator;)V
    .locals 3

    const/4 p0, 0x0

    aget v0, p2, p0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    aget v1, p3, p0

    if-eqz v1, :cond_2

    aget v1, p3, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    aget v1, p3, p0

    aget v2, p2, p0

    sub-int/2addr v1, v2

    aget p3, p3, v0

    aget v2, p2, v0

    sub-int/2addr p3, v2

    aget p0, p2, p0

    int-to-float p0, p0

    int-to-float v1, v1

    mul-float/2addr v1, p4

    add-float/2addr p0, v1

    invoke-virtual {p1, p0}, Landroid/view/View;->setX(F)V

    aget p0, p2, v0

    int-to-float p0, p0

    int-to-float p2, p3

    mul-float/2addr p4, p2

    add-float/2addr p0, p4

    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private g(Landroid/view/View;[ILandroid/view/View;[ILandroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockViewLayout;->getStackPosition()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr p1, v4

    sub-float/2addr v3, p1

    float-to-int p1, v3

    div-int/2addr p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    aget v3, v0, v2

    add-int/2addr v3, p1

    aput v3, p2, v2

    const/4 p1, 0x1

    aget v0, v0, p1

    aput v0, p2, p1

    iget-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, v0, p3, p5}, Lcom/zui/launcher/Launcher;->getFolderTargetPosition(Lcom/zui/launcher/folder/Folder;Landroid/view/View;Landroid/view/View;)[I

    move-result-object p2

    aget p3, p2, v2

    if-lez p3, :cond_2

    aget p3, p2, p1

    if-gtz p3, :cond_5

    :cond_2
    new-array p3, v1, [I

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0, p3}, Lcom/zui/launcher/Launcher;->getFolderCenterPos(Lcom/zui/launcher/folder/Folder;[I)V

    aget p0, p3, v2

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr p0, v0

    aput p0, p2, v2

    aget p0, p3, p1

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/2addr p3, v1

    sub-int/2addr p0, p3

    aput p0, p2, p1

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p3, p5}, Lcom/zui/launcher/Launcher;->getWorkspaceTargetPosition(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget-object v5, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    iget-boolean v6, v5, Lcom/zui/launcher/Launcher;->isHomeOrBackPressed:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/ItemInfo;

    iget p3, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p2}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p2

    if-ne p3, p2, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result p2

    iget-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p3}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result p3

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    iget-object v6, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p0

    mul-int/2addr v3, p2

    add-int/2addr v6, v3

    sub-int/2addr p2, v5

    div-int/2addr p2, v1

    add-int/2addr v6, p2

    aput v6, v0, v2

    mul-int/2addr v4, p3

    add-int/2addr v7, v4

    sub-int/2addr p3, p5

    div-int/2addr p3, v1

    add-int/2addr v7, p3

    aput v7, v0, p1

    :cond_4
    move-object p2, v0

    :cond_5
    :goto_2
    aget p0, p2, v2

    aput p0, p4, v2

    aget p0, p2, p1

    aput p0, p4, p1

    return-void
.end method


# virtual methods
.method public animAllAnimator(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil;->c:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/zui/launcher/XDockViewAnimUtil;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->c:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/zui/launcher/XDockViewAnimUtil$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/XDockViewAnimUtil$e;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public endAnimatorSet()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil;->c:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFolderItemScaleAnim(Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;[IJ)Landroid/animation/ValueAnimator;
    .locals 8

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderIcon;->getFolderScale()F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getItemScale()F

    move-result v1

    mul-float/2addr v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/zui/launcher/XDockViewAnimUtil$c;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, v0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/XDockViewAnimUtil$c;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;F[I)V

    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/zui/launcher/XDockViewAnimUtil$d;

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/zui/launcher/XDockViewAnimUtil$d;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;FLandroid/view/View;[I)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSpreadFolderAnim(Landroid/view/View;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;[I[IJ)Landroid/animation/ValueAnimator;
    .locals 10

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->e()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/effect/CubicInterpolator;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/zui/launcher/effect/CubicInterpolator;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Lcom/zui/launcher/folder/FolderIcon;->getFolderScale()F

    move-result v8

    new-instance v9, Lcom/zui/launcher/XDockViewAnimUtil$a;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, v8

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/XDockViewAnimUtil$a;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;F[ILandroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v7, Lcom/zui/launcher/XDockViewAnimUtil$b;

    move-object v1, v7

    move-object v3, p3

    move v4, v8

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/XDockViewAnimUtil$b;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;F[I[I)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public getToFolderIconAnim(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 10

    const/4 p2, 0x2

    new-array v7, p2, [I

    new-array p2, p2, [I

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->e()Landroid/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v0, 0x8c

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Lcom/zui/launcher/folder/FolderIcon;->getFolderScale()F

    new-instance v9, Lcom/zui/launcher/XDockViewAnimUtil$h;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, v7

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/XDockViewAnimUtil$h;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;Landroid/view/View;[ILcom/zui/launcher/folder/FolderIcon;[I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/zui/launcher/XDockViewAnimUtil$i;

    invoke-direct {p1, p0, p4, v7, p2}, Lcom/zui/launcher/XDockViewAnimUtil$i;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[I[I)V

    invoke-virtual {v8, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v8
.end method

.method public getToWorkSpaceAnim(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 11

    const/4 v0, 0x2

    new-array v8, v0, [I

    new-array v0, v0, [I

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->e()Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Lcom/zui/launcher/XDockViewAnimUtil$f;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, v8

    move-object v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/XDockViewAnimUtil$f;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;Landroid/view/View;[ILandroid/view/View;[I)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/zui/launcher/XDockViewAnimUtil$g;

    invoke-direct {p1, p0, p3, v8, v0}, Lcom/zui/launcher/XDockViewAnimUtil$g;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[I[I)V

    invoke-virtual {v9, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v9
.end method

.method public startDragViewAnim([ILandroid/view/View;[ILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p4

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/XDockViewLayout;

    iget-object v3, v1, Lcom/zui/launcher/XDockViewAnimUtil;->b:Lcom/zui/launcher/XDockView;

    invoke-virtual {v3}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v3

    iget-object v4, v1, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v4}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v4

    iget-object v5, v1, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4, v5}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    const/4 v5, 0x0

    aget v6, p1, v5

    const/4 v7, 0x1

    aget v8, p1, v7

    aget v9, p3, v7

    aget v7, p1, v7

    sub-int/2addr v9, v7

    const/4 v7, 0x2

    new-array v10, v7, [I

    iget-object v11, v1, Lcom/zui/launcher/XDockViewAnimUtil;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v11}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v11

    invoke-virtual {v11, v0, v10}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v11

    if-eqz v2, :cond_0

    aget v2, p3, v5

    aget v5, p1, v5

    sub-int/2addr v2, v5

    invoke-virtual {v3}, Lcom/zui/launcher/XDockViewLayout;->getCellWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v4

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v7

    goto :goto_0

    :cond_0
    aget v2, p3, v5

    aget v3, p1, v5

    :goto_0
    sub-int/2addr v2, v3

    move v7, v2

    invoke-direct {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->e()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v2, Lcom/zui/launcher/XDockViewAnimUtil$j;

    move-object/from16 v4, p2

    invoke-direct {v2, p0, v4, v0}, Lcom/zui/launcher/XDockViewAnimUtil$j;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v13, Lcom/zui/launcher/XDockViewAnimUtil$k;

    move-object v0, v13

    move-object v1, p0

    move v2, v10

    move v3, v11

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/XDockViewAnimUtil$k;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;FFLandroid/view/View;IIII)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v12
.end method

.method public startDragViewToFolderIconAnim(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;Lcom/zui/launcher/folder/FolderIcon;)Landroid/animation/ValueAnimator;
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/zui/launcher/dragndrop/DragView;->cancelAnimation()V

    invoke-virtual/range {p2 .. p2}, Lcom/zui/launcher/dragndrop/DragView;->resetLayoutParams()V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/XDockViewAnimUtil;->e()Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v0, Lcom/zui/launcher/XDockViewAnimUtil$l;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/XDockViewAnimUtil$l;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v15, Lcom/zui/launcher/XDockViewAnimUtil$m;

    move-object v0, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p12

    move-object/from16 v4, p11

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/zui/launcher/XDockViewAnimUtil$m;-><init>(Lcom/zui/launcher/XDockViewAnimUtil;Lcom/zui/launcher/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v14
.end method
