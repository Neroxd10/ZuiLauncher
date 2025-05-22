.class public Lcom/zui/launcher/DropTarget$DragObject;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public accessibleDrag:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

.field public dragComplete:Z

.field public dragInfo:Lcom/zui/launcher/ItemInfo;

.field public dragSource:Lcom/zui/launcher/DragSource;

.field public dragView:Lcom/zui/launcher/dragndrop/DragView;

.field public dragViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/dragndrop/DragView;",
            ">;"
        }
    .end annotation
.end field

.field public orginalView:Landroid/view/View;

.field public originalDragInfo:Lcom/zui/launcher/ItemInfo;

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    iput v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    iput v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->xOffset:I

    iput v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->yOffset:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    iput-object v1, p0, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iput-object v1, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iput-object v1, p0, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    iput-object v1, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    iput-object v1, p0, Lcom/zui/launcher/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->cancelled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .locals 5

    const/4 v0, 0x2

    if-nez p1, :cond_0

    new-array p1, v0, [F

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v1

    :cond_2
    :goto_0
    iget v2, p0, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    iget v4, p0, Lcom/zui/launcher/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    iget p0, p0, Lcom/zui/launcher/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v4, p0

    iget p0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr v2, p0

    int-to-float p0, v2

    aput p0, p1, v3

    const/4 p0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v0

    add-int/2addr v4, v1

    int-to-float v0, v4

    aput v0, p1, p0

    return-object p1
.end method
