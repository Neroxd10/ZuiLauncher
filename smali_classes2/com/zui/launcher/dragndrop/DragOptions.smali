.class public Lcom/zui/launcher/dragndrop/DragOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;
    }
.end annotation


# instance fields
.field public intrinsicIconScaleFactor:F

.field public isAccessibleDrag:Z

.field public isFlingToDelete:Z

.field public preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

.field public systemDndStartPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    return-void
.end method
