.class public Lcom/zui/launcher/XDockView;
.super Landroid/widget/HorizontalScrollView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/zui/launcher/DropTarget;
.implements Lcom/zui/launcher/DragSource;
.implements Lcom/zui/launcher/DragScroller;
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/XDockView$m;,
        Lcom/zui/launcher/XDockView$o;,
        Lcom/zui/launcher/XDockView$p;,
        Lcom/zui/launcher/XDockView$n;,
        Lcom/zui/launcher/XDockView$q;
    }
.end annotation


# static fields
.field protected static final ANIM_STACK_FIRST_HALF_DURATION:I = 0xc8

.field protected static final ANIM_STACK_LAST_HALF_DURATION:I = 0x64

.field protected static final ANIM_STACK_ROTATE_DEGREE:I = -0x2d


# instance fields
.field private A:Lcom/zui/launcher/XDockView$p;

.field private B:Landroid/widget/Toast;

.field private final C:[I

.field private final D:[I

.field private E:[I

.field private F:Landroid/view/View;

.field private G:I

.field private H:I

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/XDockView$o;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/zui/launcher/XDockView$m;

.field private a:Lcom/zui/launcher/XDockView$q;

.field private b:Lcom/zui/launcher/Launcher;

.field private c:Lcom/zui/launcher/Workspace;

.field private d:Lcom/zui/launcher/ItemInfo;

.field private e:Lcom/zui/launcher/dragndrop/DragController;

.field private f:Lcom/zui/launcher/dragndrop/DragLayer;

.field private g:Lcom/zui/launcher/XDockViewContainer;

.field private h:Lcom/zui/launcher/XDockViewLayout;

.field private i:Z

.field private j:Z

.field private k:Lcom/zui/launcher/XDockViewAnimUtil;

.field private l:Landroid/view/ScaleGestureDetector;

.field public lastTargetX:I

.field private m:F

.field public mAnimatorSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private final v:Landroid/graphics/Paint;

.field private w:Z

.field private x:Z

.field private final y:Lcom/zui/launcher/Alarm;

.field z:Lcom/zui/launcher/OnAlarmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/XDockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/XDockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/zui/launcher/XDockView$q;->NORMAL:Lcom/zui/launcher/XDockView$q;

    iput-object p2, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->i:Z

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->j:Z

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/zui/launcher/XDockView;->m:F

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->n:Z

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->o:Z

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->p:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/zui/launcher/XDockView;->q:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->r:Z

    iput-boolean p3, p0, Lcom/zui/launcher/XDockView;->s:Z

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->t:Z

    const/16 p3, 0xd

    iput p3, p0, Lcom/zui/launcher/XDockView;->u:I

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->v:Landroid/graphics/Paint;

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->w:Z

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView;->x:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/zui/launcher/XDockView;->lastTargetX:I

    new-instance p3, Lcom/zui/launcher/Alarm;

    invoke-direct {p3}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->y:Lcom/zui/launcher/Alarm;

    new-instance p3, Lcom/zui/launcher/XDockView$g;

    invoke-direct {p3, p0}, Lcom/zui/launcher/XDockView$g;-><init>(Lcom/zui/launcher/XDockView;)V

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->z:Lcom/zui/launcher/OnAlarmListener;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->B:Landroid/widget/Toast;

    new-array p3, v0, [I

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->C:[I

    new-array p3, v0, [I

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->D:[I

    new-array p3, v0, [I

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->E:[I

    iput p2, p0, Lcom/zui/launcher/XDockView;->G:I

    iput p2, p0, Lcom/zui/launcher/XDockView;->H:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/XDockView;->I:Ljava/util/List;

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41500000    # 13.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/XDockView;->u:I

    return-void
.end method

.method private A(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, v3, v3, p4, v1}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of p3, p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz p3, :cond_0

    check-cast p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->v:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_1
    instance-of p0, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->getTextVisible()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p0, v3}, Lcom/zui/launcher/folder/FolderIcon;->setTextVisible(Z)V

    move v3, v2

    goto :goto_1

    :cond_2
    instance-of p0, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p4

    add-int/lit8 p4, p4, -0x3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    add-int/2addr p4, p0

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    move-object p0, p1

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    sub-int/2addr p4, v1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p0

    neg-int p0, p0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p0, p3

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p4

    neg-int p4, p4

    add-int/2addr p4, p3

    int-to-float p3, p4

    invoke-virtual {p2, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_5

    check-cast p1, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1, v2}, Lcom/zui/launcher/folder/FolderIcon;->setTextVisible(Z)V

    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private B(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private C(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 14

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iget v11, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v12, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v13, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v5, v0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v6, v0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5, v2}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v2

    iput v2, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v2, v4, v3

    iput v2, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x1

    aget v2, v4, v2

    iput v2, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/XDockView;->z(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_1
    iget v2, v0, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v6, v2

    move-object v5, p0

    move v8, v11

    move v9, v12

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/zui/launcher/XDockView;->H(JIII)Landroid/view/View;

    move-result-object v2

    iput v11, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v12, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v13, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v4

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4, v0, v3}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    invoke-virtual {v2, v0}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_0
    if-nez v2, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, p1, v2}, Lcom/zui/launcher/XDockView;->G(Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private D(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget-object v2, v1, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderIcon;->getFolderInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v3

    iget-object v4, v3, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v3}, Lcom/zui/launcher/FolderInfo;->getCount()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    iget-boolean v0, v3, Lcom/zui/launcher/FolderInfo;->isRecommend:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v4}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/zui/launcher/XDockView;->E(Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v0, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v0, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->F(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method private E(Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->createAndAddSnapshotOnDragLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, v1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->k:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/zui/launcher/XDockViewAnimUtil;->getToFolderIconAnim(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private F(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget v8, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v9, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v10, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-direct {p0, v1}, Lcom/zui/launcher/XDockView;->y(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v3, v2

    move-object v2, p0

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/XDockView;->H(JIII)Landroid/view/View;

    move-result-object v2

    iput v8, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v9, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v10, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :cond_1
    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/zui/launcher/XDockView;->G(Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private G(Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/XDockView;->createAndAddSnapshotOnDragLayer(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    move-object v2, p1

    check-cast v2, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v2}, Lcom/zui/launcher/ActiveIconView;->getViewTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->k:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/XDockViewAnimUtil;->getToWorkSpaceAnim(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private H(JIII)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4, p5}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/zui/launcher/ItemInfo;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/ItemInfo;

    iget p3, p3, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    cmp-long p1, p3, p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private I([ILjava/lang/Object;Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 4

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown item type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of v0, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    const/4 v2, 0x0

    aget v3, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, v3, p1, p3}, Lcom/zui/launcher/XDockViewLayout;->findTargetCell(IILcom/zui/launcher/DropTarget$DragObject;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->E:[I

    check-cast p2, Lcom/zui/launcher/WorkspaceItemInfo;

    aget p1, p1, v2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/XDockView;->addDragItemInfo(Lcom/zui/launcher/WorkspaceItemInfo;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    iput-boolean v1, p0, Lcom/zui/launcher/XDockView;->x:Z

    :cond_2
    return-void
.end method

.method private J(I)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->I:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockView$o;

    invoke-interface {v0, p1}, Lcom/zui/launcher/XDockView$o;->onSelectCountChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private K(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/ItemInfo;)Z
    .locals 8

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/CellLayout;->isHaveItemForCell(II)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    move v2, p0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout;

    new-array v3, v3, [I

    iget v6, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v5, v3, v6, v7}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v2}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result p0

    iput p0, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget p0, v3, v4

    iput p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget p0, v3, v0

    :goto_1
    iput p0, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_2
    if-ge v1, p0, :cond_4

    invoke-virtual {p1, v1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    new-array v5, v3, [I

    iget v6, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result p0

    iput p0, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget p0, v5, v4

    iput p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget p0, v5, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v4
.end method

.method private L(Landroid/view/View;)V
    .locals 13

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->f:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->C:[I

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->C:[I

    const/4 v0, 0x0

    aget v4, p1, v0

    const/4 v1, 0x1

    aget v5, p1, v1

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lcom/zui/launcher/XDockView;->createDragBitmap(Lcom/zui/launcher/XDockViewLayout;Landroid/graphics/Canvas;I)Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    iput-object v2, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, "dockview"

    const-string v7, "dockviewdragstacktoworkspace"

    const-string v8, ""

    invoke-static {v2, v7, v8, v1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/zui/launcher/LayoutInfo;

    invoke-direct {v2}, Lcom/zui/launcher/LayoutInfo;-><init>()V

    move v7, v0

    :goto_0
    iget-object v8, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v8, v7}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9, v8}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v9

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2, v8}, Lcom/zui/launcher/LayoutInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget-object v6, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-direct {v2, v6}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v6, v2}, Lcom/zui/launcher/Workspace;->prepareDragWithProvider(Lcom/zui/launcher/graphics/DragPreviewProvider;)V

    new-instance v8, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v8, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    iget-object v7, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    new-instance v12, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v12}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v12}, Lcom/zui/launcher/dragndrop/DragController;->startDrag(Ljava/util/List;Ljava/util/List;IILcom/zui/launcher/DragSource;Lcom/zui/launcher/XDockViewLayout;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/zui/launcher/dragndrop/DragOptions;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    instance-of v1, v1, Lcom/zui/launcher/BubbleTextView;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/XDockView;->J:Lcom/zui/launcher/XDockView$m;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/zui/launcher/XDockView$m;->c()V

    :cond_5
    return-void
.end method

.method private a(Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 5

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v1, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, p0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v3, v0, Lcom/zui/launcher/ItemInfo;

    const v4, 0x7f120100

    if-nez v3, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    if-nez p1, :cond_3

    new-instance p1, Lcom/zui/launcher/XDockView$p;

    invoke-direct {p1, p0, v4}, Lcom/zui/launcher/XDockView$p;-><init>(Lcom/zui/launcher/XDockView;I)V

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    goto :goto_1

    :cond_3
    invoke-static {p1, v4}, Lcom/zui/launcher/XDockView$p;->a(Lcom/zui/launcher/XDockView$p;I)V

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_4
    instance-of v3, v0, Lcom/zui/launcher/FolderInfo;

    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    const v0, 0x7f120101

    if-nez p1, :cond_5

    new-instance p1, Lcom/zui/launcher/XDockView$p;

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/XDockView$p;-><init>(Lcom/zui/launcher/XDockView;I)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v0}, Lcom/zui/launcher/XDockView$p;->a(Lcom/zui/launcher/XDockView$p;I)V

    goto :goto_1

    :cond_6
    iget v0, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/4 v3, 0x7

    if-eq v0, v3, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    if-nez p1, :cond_3

    new-instance p1, Lcom/zui/launcher/XDockView$p;

    invoke-direct {p1, p0, v4}, Lcom/zui/launcher/XDockView$p;-><init>(Lcom/zui/launcher/XDockView;I)V

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Lcom/zui/launcher/XDockView;->x:Z

    if-eqz v3, :cond_9

    return v1

    :cond_9
    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-eq p1, p0, :cond_a

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isDockViewFull()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->showOutOfDockViewMessage()V

    goto :goto_3

    :cond_a
    move v2, v0

    :goto_3
    return v2
.end method

.method static synthetic b(Lcom/zui/launcher/XDockView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/XDockView;->m:F

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/XDockView;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->B:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/XDockView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->B:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic e(Lcom/zui/launcher/XDockView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/XDockView;->m:F

    return p1
.end method

.method static synthetic f(Lcom/zui/launcher/XDockView;Lcom/zui/launcher/XDockView$q;)Lcom/zui/launcher/XDockView$q;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    return-object p1
.end method

.method static synthetic g(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockView$m;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->J:Lcom/zui/launcher/XDockView$m;

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/XDockView;F)F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/XDockView;->m:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/XDockView;->m:F

    return v0
.end method

.method static synthetic i(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewAnimUtil;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->k:Lcom/zui/launcher/XDockViewAnimUtil;

    return-object p0
.end method

.method static synthetic j(Lcom/zui/launcher/XDockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->q:Z

    return p1
.end method

.method static synthetic k(Lcom/zui/launcher/XDockView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/XDockView;->i:Z

    return p0
.end method

.method static synthetic l(Lcom/zui/launcher/XDockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->i:Z

    return p1
.end method

.method static synthetic m(Lcom/zui/launcher/XDockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->r:Z

    return p1
.end method

.method static synthetic n(Lcom/zui/launcher/XDockView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/XDockView;->s:Z

    return p0
.end method

.method static synthetic o(Lcom/zui/launcher/XDockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->s:Z

    return p1
.end method

.method static synthetic p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    return-object p0
.end method

.method static synthetic q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic r(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewContainer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    return-object p0
.end method

.method static synthetic s(Lcom/zui/launcher/XDockView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    return-object p0
.end method

.method private setParentView(Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    :goto_0
    iput-object p0, p1, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getFolderIcon()Lcom/zui/launcher/folder/FolderIcon;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-void
.end method

.method static synthetic t(Lcom/zui/launcher/XDockView;)[I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->E:[I

    return-object p0
.end method

.method private u(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget-object v2, v1, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderIcon;->getFolderInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v3

    iget-object v4, v3, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3}, Lcom/zui/launcher/FolderInfo;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    iget-boolean v4, v3, Lcom/zui/launcher/FolderInfo;->isRecommend:Z

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/XDockViewLayout;->getStackPosition()[I

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    aget p1, v1, v0

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    if-le p1, v0, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->dismissDockView()V

    :cond_5
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v0, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v0, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->v(Landroid/view/View;)Z

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_3
    return v0
.end method

.method private v(Landroid/view/View;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget v8, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v9, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v10, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-direct {p0, v1}, Lcom/zui/launcher/XDockView;->y(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v3, v2

    move-object v2, p0

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/XDockView;->H(JIII)Landroid/view/View;

    move-result-object v2

    iput v8, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v9, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v10, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/XDockViewLayout;->getStackPosition()[I

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    aget p1, v1, v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    if-le p1, v1, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->dismissDockView()V

    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method private w(Landroid/view/View;Lcom/zui/launcher/DragSource;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/zui/launcher/XDockView;->f:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v3, v0, Lcom/zui/launcher/XDockView;->C:[I

    invoke-virtual {v2, v1, v3}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget-object v2, v0, Lcom/zui/launcher/XDockView;->C:[I

    const/4 v3, 0x0

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    new-instance v2, Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {v2, v1}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/zui/launcher/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    if-nez v15, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, v0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    instance-of v4, v1, Lcom/zui/launcher/BubbleTextView;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/zui/launcher/BubbleTextView;

    :cond_1
    iget-object v4, v0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-object v4, v0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zui/launcher/Workspace;->prepareDragWithProvider(Lcom/zui/launcher/graphics/DragPreviewProvider;)V

    new-instance v10, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v10, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/zui/launcher/ItemInfo;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    new-instance v14, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v14}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    move-object v5, v15

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v14}, Lcom/zui/launcher/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/zui/launcher/DragSource;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v15, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void
.end method

.method private x(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private y(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/XDockView;->K(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->addExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    move-result v0

    iput v4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v4, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/LauncherModel;->F(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v3, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v3}, Lcom/zui/launcher/model/BgDataModel;->collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;

    move-result-object v3

    iget-object v5, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v5, v6, v3, v1}, Lcom/zui/launcher/LauncherModel;->t(Landroid/content/Context;ILcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    aget v1, v1, v4

    iput v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    check-cast v0, [I

    aget v0, v0, v2

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :goto_0
    move v0, v2

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->z(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private z(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/Launcher;->U0(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    :goto_0
    iget v2, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v4}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v5, v6}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v5, v6}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v6, :cond_3

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v7, v7, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne v6, v7, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {v0, v5}, Lcom/zui/launcher/LauncherModel;->filterEquals(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v4

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    const/16 v4, -0x64

    const/4 v5, 0x2

    new-array v6, v5, [I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    const/4 v8, 0x0

    aput v7, v6, v8

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput v7, v6, v3

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/zui/launcher/Workspace;->M(Landroid/view/View;ILcom/zui/launcher/CellLayout;[I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    new-array v0, v5, [I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    aput v4, v0, v8

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput p1, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/zui/launcher/Workspace;->B(Landroid/view/View;Lcom/zui/launcher/CellLayout;[I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v1

    :cond_5
    iget-object v2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, v0}, Lcom/zui/launcher/Launcher;->L0(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v4

    :cond_6
    iget-object v2, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    const/16 v4, -0x64

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v9, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Lcom/zui/launcher/Workspace;->addDockViewItemToWorkspace(Landroid/view/View;IIIIII)V

    :cond_7
    return-object v1
.end method


# virtual methods
.method M(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v4, v3}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/zui/launcher/ItemInfo;

    invoke-static {v6}, Lcom/zui/launcher/LauncherModel;->isAppInfoUpdatable(Lcom/zui/launcher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    instance-of v6, v5, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v6, v5, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v9}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v9, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v11, v5, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v11}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->updateIcon(Lcom/zui/launcher/icons/IconCache;)V

    iget-object v9, v9, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    instance-of v9, v4, Lcom/zui/launcher/BubbleTextView;

    if-eqz v9, :cond_0

    move-object v9, v4

    check-cast v9, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v9, v5}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/zui/launcher/BubbleTextView;->setTextVisibility(Z)V

    goto :goto_2

    :cond_0
    instance-of v9, v4, Lcom/zui/launcher/ActiveIconView;

    if-eqz v9, :cond_1

    move-object v9, v4

    check-cast v9, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v5, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v11, v5, v0}, Lcom/zui/launcher/ActiveIconUtil;->getActiveIconView(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/ItemInfoWithIcon;Lcom/zui/launcher/icons/IconCache;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/zui/launcher/ActiveIconView;->applyFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/zui/launcher/ActiveIconView;->setTextVisibility(Z)V

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public acceptDrop(Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 4

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v2, v0, Lcom/zui/launcher/ItemInfo;

    if-nez v2, :cond_2

    return v1

    :cond_2
    instance-of v2, v0, Lcom/zui/launcher/FolderInfo;

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v0, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/zui/launcher/XDockView;->x:Z

    if-eqz v2, :cond_5

    return v3

    :cond_5
    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    if-eq p1, p0, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isDockViewFull()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_1
    return v1
.end method

.method public addDragItemInfo(Lcom/zui/launcher/WorkspaceItemInfo;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/XDockView;->addExternalItem(Lcom/zui/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->updateSelectCount()V

    return-object p1
.end method

.method public addExternalItem(Lcom/zui/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->q:Z

    instance-of v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->setParentView(Lcom/zui/launcher/ItemInfo;)V

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zui/launcher/XDockViewLayout;->addItemView(Lcom/zui/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ne p0, v0, :cond_0

    const-string p0, "Desktop"

    const-string p3, "ClickArrange-app"

    const-string v0, "Arrange"

    invoke-static {p0, p3, v0, p2}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public addSelectCountListener(Lcom/zui/launcher/XDockView$o;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/XDockView;->I:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animDragObjectBack(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 2

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragView;

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public animDragviewIntoFolderIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    new-instance v0, Lcom/zui/launcher/XDockView$k;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v17}, Lcom/zui/launcher/XDockView$k;-><init>(Lcom/zui/launcher/XDockView;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;Lcom/zui/launcher/folder/FolderIcon;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animDragviewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/zui/launcher/XDockView;->B(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v0, 0x0

    aput p2, v2, v0

    const/4 p2, 0x1

    aput p3, v2, p2

    iget-object p2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, v5}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v4

    new-instance p2, Lcom/zui/launcher/XDockView$j;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/XDockView$j;-><init>(Lcom/zui/launcher/XDockView;[ILcom/zui/launcher/dragndrop/DragView;[ILandroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public calculateLayoutParams()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockViewLayout;->calculateParams()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewContainer;->calculateParams()V

    :cond_1
    return-void
.end method

.method public createAndAddSnapshotOnDragLayer(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/XDockView;->createAndAddSnapshotOnDragLayer(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public createAndAddSnapshotOnDragLayer(Landroid/view/View;Z)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/Launcher;->createSnapshotWidthText(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/Launcher;->createSnapshot(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->getItemScale()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public createDragBitmap(Lcom/zui/launcher/XDockViewLayout;Landroid/graphics/Canvas;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/XDockViewLayout;",
            "Landroid/graphics/Canvas;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_5

    invoke-virtual {p1, v2}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    :goto_1
    instance-of v5, v3, Lcom/zui/launcher/BubbleTextView;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v3}, Lcom/zui/launcher/BubbleTextView;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {v4}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/zui/launcher/BubbleTextView;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_3

    :cond_3
    instance-of v5, v3, Lcom/zui/launcher/ActiveIconView;

    if-eqz v5, :cond_4

    check-cast v3, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_3
    invoke-virtual {p2, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v3, p2, p3, v4}, Lcom/zui/launcher/XDockView;->A(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
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

    iput-boolean v1, p0, Lcom/zui/launcher/XDockView;->j:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->j:Z

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doOnConfigurationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewContainer;->doOnConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public doStack()V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/XDockView$q;->NORMAL:Lcom/zui/launcher/XDockView$q;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    const/4 v1, 0x0

    new-instance v2, Lcom/zui/launcher/XDockView$h;

    invoke-direct {v2, p0}, Lcom/zui/launcher/XDockView$h;-><init>(Lcom/zui/launcher/XDockView;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/XDockViewLayout;->animateStack(ZLjava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->J:Lcom/zui/launcher/XDockView$m;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/zui/launcher/XDockView$m;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isAnimStacking()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/zui/launcher/XDockView$i;

    invoke-direct {v0, p0}, Lcom/zui/launcher/XDockView$i;-><init>(Lcom/zui/launcher/XDockView;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public dropToCurrentScreen(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;[ILandroid/graphics/Rect;)Z
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v9

    :cond_0
    iget-object v0, v6, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    const/4 v10, 0x1

    if-nez v0, :cond_1

    iput-boolean v9, v6, Lcom/zui/launcher/XDockView;->n:Z

    iget-object v0, v6, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-boolean v10, v6, Lcom/zui/launcher/XDockView;->n:Z

    iget-object v0, v6, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-nez v0, :cond_2

    return v9

    :cond_2
    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->showOutOfFolderMessage()V

    return v9

    :cond_3
    :goto_0
    iget v11, v7, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v12, v7, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v13, v7, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget-boolean v1, v6, Lcom/zui/launcher/XDockView;->n:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    return v9

    :cond_5
    if-eqz p3, :cond_a

    aget v1, p3, v9

    if-ltz v1, :cond_a

    aget v1, p3, v10

    if-gez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v1, v6, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v1

    iput v1, v7, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v1, p3, v9

    iput v1, v7, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget v1, p3, v10

    iput v1, v7, Lcom/zui/launcher/ItemInfo;->cellY:I

    :goto_1
    iget-boolean v1, v6, Lcom/zui/launcher/XDockView;->n:Z

    if-eqz v1, :cond_7

    check-cast v0, Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v1

    move-object v2, v7

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, v2, v9}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_7
    instance-of v0, v7, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_8

    invoke-direct {p0, v7}, Lcom/zui/launcher/XDockView;->z(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_9

    iget v0, v7, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v1, v0

    move-object v0, p0

    move v3, v11

    move v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/XDockView;->H(JIII)Landroid/view/View;

    move-result-object v0

    iput v11, v7, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v12, v7, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v13, v7, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-nez v0, :cond_9

    return v9

    :cond_9
    move-object v3, v0

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x2

    new-array v4, v2, [I

    aput v0, v4, v9

    aput v1, v4, v10

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->createAndAddSnapshotOnDragLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v0, v6, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/zui/launcher/XDockView$l;

    move-object v0, v8

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/XDockView$l;-><init>(Lcom/zui/launcher/XDockView;Landroid/view/View;Landroid/view/View;[ILcom/zui/launcher/dragndrop/DragView;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    :cond_a
    :goto_3
    const-string v0, "XDockView"

    const-string v1, "showOutOfSpaceMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public endAnimatorSet()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->k:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->endAnimatorSet()Z

    move-result p0

    return p0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    return-void
.end method

.method public flyBackAllItems()Z
    .locals 6

    iget-boolean v0, p0, Lcom/zui/launcher/XDockView;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->endAnimatorSet()Z

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getTargetState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_4

    iget-object v4, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v4, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/ItemInfo;

    iget-object v5, v5, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    instance-of v5, v5, Lcom/zui/launcher/Workspace;

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lcom/zui/launcher/XDockView;->F(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-direct {p0, v4}, Lcom/zui/launcher/XDockView;->D(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/zui/launcher/XDockView$f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/XDockView$f;-><init>(Lcom/zui/launcher/XDockView;)V

    invoke-virtual {p0, v2, v0}, Lcom/zui/launcher/XDockView;->startAnimatorSet(ZLjava/lang/Runnable;)V

    goto :goto_6

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget-object v3, v3, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    instance-of v3, v3, Lcom/zui/launcher/Workspace;

    if-eqz v3, :cond_7

    invoke-direct {p0, v0}, Lcom/zui/launcher/XDockView;->v(Landroid/view/View;)Z

    move-result v0

    goto :goto_5

    :cond_7
    invoke-direct {p0, v0}, Lcom/zui/launcher/XDockView;->u(Landroid/view/View;)Z

    move-result v0

    :goto_5
    if-nez v0, :cond_5

    move v1, v2

    goto :goto_4

    :cond_8
    iput-boolean v2, p0, Lcom/zui/launcher/XDockView;->o:Z

    iput-boolean v2, p0, Lcom/zui/launcher/XDockView;->i:Z

    iput-boolean v2, p0, Lcom/zui/launcher/XDockView;->t:Z

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v3

    if-gt v0, v3, :cond_9

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    if-nez v1, :cond_a

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_7

    :cond_a
    sget-object v0, Lcom/zui/launcher/XDockView$q;->NORMAL:Lcom/zui/launcher/XDockView$q;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    :goto_7
    return v1
.end method

.method public flyBackAnItem(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p2, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    instance-of p2, p2, Lcom/zui/launcher/Workspace;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->v(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->u(Landroid/view/View;)Z

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->o:Z

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->i:Z

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->t:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public getAddLayoutMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/XDockView;->t:Z

    return p0
.end method

.method public getAllEditItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v3, v2}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAnimationStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/XDockView;->o:Z

    return p0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public getDragItem()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    return-object p0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    :cond_0
    return-void
.end method

.method public getItemScale()F
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getEditModeItemScaleFactor()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getLayout()Lcom/zui/launcher/XDockViewLayout;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockViewLayout;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    return-object p0
.end method

.method public hideDockView()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->doStack()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->dismissDockView()V

    :cond_1
    return-void
.end method

.method public isAnimStacking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/XDockView;->p:Z

    return p0
.end method

.method public isDockViewFull()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/16 v0, 0x2d

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDropEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedAdjust()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/XDockView;->q:Z

    return p0
.end method

.method public isNormalMode()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    sget-object v0, Lcom/zui/launcher/XDockView$q;->NORMAL:Lcom/zui/launcher/XDockView$q;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStackMode()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    sget-object v0, Lcom/zui/launcher/XDockView$q;->STACK_MODE:Lcom/zui/launcher/XDockView$q;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-boolean v0, p0, Lcom/zui/launcher/XDockView;->o:Z

    if-nez v0, :cond_7

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isAnimStacking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    const-string v1, ""

    const-string v2, "dockview"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v6, v5}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/zui/launcher/XDockView;->C(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v6

    if-nez v6, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v7, "dockviewclickstacktoworkspace"

    invoke-static {v2, v7, v1, v4}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->C(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const-string p1, "clickdockviewicontoworkspace"

    invoke-static {v2, p1, v1, v4}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v4}, Lcom/zui/launcher/XDockView;->startAnimatorSet(Z)V

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/launcher/XDockView$e;

    invoke-direct {v0, p0}, Lcom/zui/launcher/XDockView$e;-><init>(Lcom/zui/launcher/XDockView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showOutOfFolderMessage()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->showOutOfSpaceMessage(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/XDockView;->lastTargetX:I

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, p0, :cond_4

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->a(Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->cancelExitFolder()V

    :cond_2
    new-array v0, v2, [I

    iget v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    aput v2, v0, v3

    iget v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    aput v2, v0, v1

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->y:Lcom/zui/launcher/Alarm;

    invoke-virtual {v1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v1

    if-eqz v1, :cond_3

    aput v3, v0, v3

    :cond_3
    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, v0, v1, p1}, Lcom/zui/launcher/XDockView;->I([ILjava/lang/Object;Lcom/zui/launcher/DropTarget$DragObject;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/zui/launcher/XDockView;->w:Z

    if-eqz v0, :cond_5

    new-array v0, v2, [I

    iget v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    aput v2, v0, v3

    iget v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    aput v2, v0, v1

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->y:Lcom/zui/launcher/Alarm;

    invoke-virtual {v1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, v0, v1, p1}, Lcom/zui/launcher/XDockView;->I([ILjava/lang/Object;Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->y:Lcom/zui/launcher/Alarm;

    invoke-virtual {v0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-boolean v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->w:Z

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->q:Z

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->a(Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockViewLayout;->getRelativeX()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v2, v0, v1, p1}, Lcom/zui/launcher/XDockViewLayout;->findTargetCell(IILcom/zui/launcher/DropTarget$DragObject;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->E:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/zui/launcher/XDockView;->lastTargetX:I

    if-eq v1, v2, :cond_2

    aget p1, p1, v0

    iput p1, p0, Lcom/zui/launcher/XDockView;->lastTargetX:I

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->y:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->y:Lcom/zui/launcher/Alarm;

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->z:Lcom/zui/launcher/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->y:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0xa0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    :cond_2
    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 4

    iget-object p2, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->x:Z

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/dragndrop/DragView;

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    const/4 v1, 0x0

    if-eq p2, p0, :cond_4

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    if-eqz p2, :cond_4

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->container:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Launcher;->findFolderIcon(I)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderIcon;->getFolderInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    check-cast p2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2, p2, v0}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    :cond_4
    iget-object p2, p0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/dragndrop/DragController;->onDeferredEndDrag(Lcom/zui/launcher/dragndrop/DragView;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->B:Landroid/widget/Toast;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/XDockView;->B:Landroid/widget/Toast;

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    if-eqz p1, :cond_6

    iput-object v1, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    :cond_6
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/XDockView;->d:Lcom/zui/launcher/ItemInfo;

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p3, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput p2, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-eq p1, p0, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->dismissDockView()V

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->D:[I

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/XDockView;->addDragItemInfo(Lcom/zui/launcher/WorkspaceItemInfo;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isDockViewShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->showDockView()V

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p3, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p3

    iget-object v0, p2, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p3, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p2, p2, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    iget-object p3, p0, Lcom/zui/launcher/XDockView;->d:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p2, p3, p1}, Lcom/zui/launcher/XDockView;->animDragviewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->startAnimatorSet(Z)V

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragController;->onEndDrag()V

    :cond_4
    :goto_0
    iput-object v2, p0, Lcom/zui/launcher/XDockView;->d:Lcom/zui/launcher/ItemInfo;

    iput-object v2, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->onDropCompleteOutside()V

    return-void

    :cond_5
    :goto_1
    if-nez p3, :cond_6

    invoke-virtual {p0, p2}, Lcom/zui/launcher/XDockView;->animDragObjectBack(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v2, p0, Lcom/zui/launcher/XDockView;->d:Lcom/zui/launcher/ItemInfo;

    iput-object v2, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    iput-object v2, p0, Lcom/zui/launcher/XDockView;->d:Lcom/zui/launcher/ItemInfo;

    iput-object v2, p0, Lcom/zui/launcher/XDockView;->F:Landroid/view/View;

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->onDropCompleteOutside()V

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->J:Lcom/zui/launcher/XDockView$m;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/zui/launcher/XDockView$m;->b()V

    :cond_7
    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onExitScrollArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockViewContainer;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockViewLayout;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    if-nez v0, :cond_0

    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockViewContainer;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    if-nez v0, :cond_1

    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockViewLayout;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/XDockView;->g:Lcom/zui/launcher/XDockViewContainer;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/zui/launcher/XDockView;->o:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isAnimStacking()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/zui/launcher/XDockView;->j:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/zui/launcher/XDockView;->j:Z

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->L(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->startDrag(Landroid/view/View;)V

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/XDockView;->o:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isAnimStacking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/XDockView;->m:F

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->l:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/zui/launcher/XDockView;->r:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->r:Z

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    move-object v0, p0

    iget v7, v0, Lcom/zui/launcher/XDockView;->u:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public popAnimateToFolder()V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/XDockView;->H:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/launcher/XDockView;->H:I

    return-void
.end method

.method public postCallBackAfterAnimators(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/XDockView$b;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/XDockView$b;-><init>(Lcom/zui/launcher/XDockView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    return-void
.end method

.method public pushAnimateToFolder()V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/XDockView;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/XDockView;->H:I

    return-void
.end method

.method public refreshDockView(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    instance-of v1, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeDockItem(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    iget-boolean p0, p0, Lcom/zui/launcher/XDockView;->q:Z

    invoke-virtual {p2, p1, p0}, Lcom/zui/launcher/XDockViewLayout;->removeItem(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->updateSelectCount()V

    :goto_0
    return-void
.end method

.method public removeDockItemByInfo(Lcom/zui/launcher/ItemInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView;->B(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public removeItemsByMatcher(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 5

    new-instance v0, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v3, v2}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lcom/zui/launcher/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    instance-of v2, v1, Lcom/zui/launcher/DropTarget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    check-cast v1, Lcom/zui/launcher/DropTarget;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/dragndrop/DragController;->removeDropTarget(Lcom/zui/launcher/DropTarget;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeSelectCountListener(Lcom/zui/launcher/XDockView$o;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->I:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollLeft()V
    .locals 0

    return-void
.end method

.method public scrollRight()V
    .locals 0

    return-void
.end method

.method public setAddLayoutMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->t:Z

    return-void
.end method

.method public setAdjustStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->q:Z

    return-void
.end method

.method public setAnimNeedBreak(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->i:Z

    return-void
.end method

.method public setAnimStacking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/XDockView;->p:Z

    return-void
.end method

.method public setAnimationStatus(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zui/launcher/XDockView;->G:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/zui/launcher/XDockView;->G:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zui/launcher/XDockView;->G:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/zui/launcher/XDockView;->G:I

    if-gez p1, :cond_1

    iput v0, p0, Lcom/zui/launcher/XDockView;->G:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/zui/launcher/XDockView;->G:I

    if-lez p1, :cond_2

    iput-boolean v1, p0, Lcom/zui/launcher/XDockView;->o:Z

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->o:Z

    :goto_1
    return-void
.end method

.method public setOnControlListener(Lcom/zui/launcher/XDockView$m;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->J:Lcom/zui/launcher/XDockView$m;

    return-void
.end method

.method public setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/dragndrop/DragController;)V
    .locals 3

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->c:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/XDockView;->e:Lcom/zui/launcher/dragndrop/DragController;

    iget-object p2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/XDockViewLayout;->setup(Lcom/zui/launcher/Launcher;)V

    iget-object p2, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/XDockView;->f:Lcom/zui/launcher/dragndrop/DragLayer;

    new-instance p2, Lcom/zui/launcher/XDockView$d;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/XDockView$n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/launcher/XDockView$n;-><init>(Lcom/zui/launcher/XDockView;Lcom/zui/launcher/XDockView$d;)V

    invoke-direct {p2, p0, v0, v1}, Lcom/zui/launcher/XDockView$d;-><init>(Lcom/zui/launcher/XDockView;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/zui/launcher/XDockView;->l:Landroid/view/ScaleGestureDetector;

    new-instance p2, Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-direct {p2, p1}, Lcom/zui/launcher/XDockViewAnimUtil;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object p2, p0, Lcom/zui/launcher/XDockView;->k:Lcom/zui/launcher/XDockViewAnimUtil;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/XDockView;->I:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public show(Z)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockView;->f:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/zui/launcher/XDockView;->x(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public showOutOfDockViewMessage()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    const v1, 0x7f120327

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/XDockView$p;

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/XDockView$p;-><init>(Lcom/zui/launcher/XDockView;I)V

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/zui/launcher/XDockView$p;->a(Lcom/zui/launcher/XDockView$p;I)V

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showOutOfFolderMessage()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    const v1, 0x7f1203bf

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/XDockView$p;

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/XDockView$p;-><init>(Lcom/zui/launcher/XDockView;I)V

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/zui/launcher/XDockView$p;->a(Lcom/zui/launcher/XDockView$p;I)V

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->A:Lcom/zui/launcher/XDockView$p;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public spreadWithoutAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/XDockView$q;->NORMAL:Lcom/zui/launcher/XDockView$q;

    iput-object v0, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockView;->setAnimStacking(Z)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockViewLayout;->spreadLayout()V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->updateSelectCount()V

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->J:Lcom/zui/launcher/XDockView$m;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/zui/launcher/XDockView$m;->a()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockView;->setAnimStacking(Z)V

    return-void
.end method

.method public startAnimatorSet(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/XDockView;->startAnimatorSet(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public startAnimatorSet(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->i:Z

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->t:Z

    new-instance v0, Lcom/zui/launcher/XDockView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/XDockView$a;-><init>(Lcom/zui/launcher/XDockView;ZLjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/XDockView;->w:Z

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->D:[I

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/XDockViewLayout;->indexOfChildItem(Landroid/view/View;)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->D:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iput-object v1, p0, Lcom/zui/launcher/XDockView;->d:Lcom/zui/launcher/ItemInfo;

    iget-object v2, p0, Lcom/zui/launcher/XDockView;->D:[I

    aget v0, v2, v0

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/CellLayout;->onDragStartedWithDockItem(Landroid/view/View;I)V

    invoke-direct {p0, p1, p0}, Lcom/zui/launcher/XDockView;->w(Landroid/view/View;Lcom/zui/launcher/DragSource;)V

    return-void
.end method

.method protected updateSelectCount()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockView;->I:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/XDockView$c;->a:[I

    iget-object v1, p0, Lcom/zui/launcher/XDockView;->a:Lcom/zui/launcher/XDockView$q;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView;->h:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/XDockView;->J(I)V

    :cond_1
    :goto_0
    return-void
.end method
