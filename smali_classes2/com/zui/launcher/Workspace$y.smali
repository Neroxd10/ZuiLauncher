.class Lcom/zui/launcher/Workspace$y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "y"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:Lcom/zui/launcher/DropTarget$DragObject;

.field final f:Landroid/view/View;

.field final synthetic g:Lcom/zui/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Workspace;[FIIIILcom/zui/launcher/DropTarget$DragObject;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/zui/launcher/Workspace$y;->a:I

    iput p4, p0, Lcom/zui/launcher/Workspace$y;->b:I

    iput p5, p0, Lcom/zui/launcher/Workspace$y;->c:I

    iput p6, p0, Lcom/zui/launcher/Workspace$y;->d:I

    iput-object p8, p0, Lcom/zui/launcher/Workspace$y;->f:Landroid/view/View;

    iput-object p7, p0, Lcom/zui/launcher/Workspace$y;->e:Lcom/zui/launcher/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 14

    iget-object p1, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object p1, p1, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object p1, p1, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    instance-of v0, p1, Lcom/zui/launcher/HotseatLayout;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/HotseatLayout;->addEmptyCell()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v7, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object v0, v7, Lcom/zui/launcher/Workspace;->H:[F

    const/4 v11, 0x0

    aget v1, v0, v11

    float-to-int v1, v1

    const/4 v12, 0x1

    aget v0, v0, v12

    float-to-int v2, v0

    iget v3, p0, Lcom/zui/launcher/Workspace$y;->a:I

    iget v4, p0, Lcom/zui/launcher/Workspace$y;->b:I

    iget-object v5, v7, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v6, v7, Lcom/zui/launcher/Workspace;->w:[I

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->S(IIIILcom/zui/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v13, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object v8, v13, Lcom/zui/launcher/Workspace;->w:[I

    aget v0, v8, v11

    iput v0, v13, Lcom/zui/launcher/Workspace;->b0:I

    aget v0, v8, v12

    iput v0, v13, Lcom/zui/launcher/Workspace;->c0:I

    iget-object v0, v13, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v1, v13, Lcom/zui/launcher/Workspace;->H:[F

    aget v2, v1, v11

    float-to-int v2, v2

    aget v1, v1, v12

    float-to-int v3, v1

    iget v4, p0, Lcom/zui/launcher/Workspace$y;->a:I

    iget v5, p0, Lcom/zui/launcher/Workspace$y;->b:I

    iget v6, p0, Lcom/zui/launcher/Workspace$y;->c:I

    iget v7, p0, Lcom/zui/launcher/Workspace$y;->d:I

    iget-object v9, p0, Lcom/zui/launcher/Workspace$y;->f:Landroid/view/View;

    const/4 v10, 0x1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v9

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/zui/launcher/CellLayout;->P(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v13, Lcom/zui/launcher/Workspace;->w:[I

    iget-object v0, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object v1, v0, Lcom/zui/launcher/Workspace;->w:[I

    aget v2, v1, v11

    if-ltz v2, :cond_3

    aget v1, v1, v12

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->setDragMode(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->X()V

    :goto_1
    aget v0, p1, v11

    iget v1, p0, Lcom/zui/launcher/Workspace$y;->c:I

    if-ne v0, v1, :cond_5

    aget v0, p1, v12

    iget v1, p0, Lcom/zui/launcher/Workspace$y;->d:I

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v9, v11

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v12

    :goto_3
    iget-object v0, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object v2, v0, Lcom/zui/launcher/Workspace;->z:Lcom/zui/launcher/CellLayout;

    iget-object v3, p0, Lcom/zui/launcher/Workspace$y;->f:Landroid/view/View;

    invoke-static {v0}, Lcom/zui/launcher/Workspace;->w(Lcom/zui/launcher/Workspace;)Lcom/zui/launcher/graphics/DragPreviewProvider;

    move-result-object v4

    iget-object v0, p0, Lcom/zui/launcher/Workspace$y;->g:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->w:[I

    aget v5, v0, v11

    aget v6, v0, v12

    aget v7, p1, v11

    aget v8, p1, v12

    iget-object v10, p0, Lcom/zui/launcher/Workspace$y;->e:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual/range {v2 .. v10}, Lcom/zui/launcher/CellLayout;->a0(Landroid/view/View;Lcom/zui/launcher/graphics/DragPreviewProvider;IIIIZLcom/zui/launcher/DropTarget$DragObject;)V

    return-void
.end method
