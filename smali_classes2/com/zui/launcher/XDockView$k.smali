.class Lcom/zui/launcher/XDockView$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->animDragviewIntoFolderIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;Lcom/zui/launcher/folder/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragView;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:Landroid/graphics/Rect;

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:F

.field final synthetic i:F

.field final synthetic j:I

.field final synthetic k:Landroid/view/animation/Interpolator;

.field final synthetic l:Landroid/view/animation/Interpolator;

.field final synthetic m:Ljava/lang/Runnable;

.field final synthetic n:I

.field final synthetic o:Landroid/view/View;

.field final synthetic p:Lcom/zui/launcher/folder/FolderIcon;

.field final synthetic q:Lcom/zui/launcher/XDockView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->q:Lcom/zui/launcher/XDockView;

    move-object v1, p2

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    move-object v1, p3

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->b:Lcom/zui/launcher/dragndrop/DragView;

    move-object v1, p4

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->c:Landroid/graphics/Rect;

    move-object v1, p5

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->d:Landroid/graphics/Rect;

    move v1, p6

    iput v1, v0, Lcom/zui/launcher/XDockView$k;->e:F

    move v1, p7

    iput v1, v0, Lcom/zui/launcher/XDockView$k;->f:F

    move v1, p8

    iput v1, v0, Lcom/zui/launcher/XDockView$k;->g:F

    move v1, p9

    iput v1, v0, Lcom/zui/launcher/XDockView$k;->h:F

    move v1, p10

    iput v1, v0, Lcom/zui/launcher/XDockView$k;->i:F

    move v1, p11

    iput v1, v0, Lcom/zui/launcher/XDockView$k;->j:I

    move-object v1, p12

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->k:Landroid/view/animation/Interpolator;

    move-object v1, p13

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->l:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->m:Ljava/lang/Runnable;

    move/from16 v1, p15

    iput v1, v0, Lcom/zui/launcher/XDockView$k;->n:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->o:Landroid/view/View;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zui/launcher/XDockView$k;->p:Lcom/zui/launcher/folder/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/XDockView$k;->q:Lcom/zui/launcher/XDockView;

    invoke-static {v1}, Lcom/zui/launcher/XDockView;->i(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewAnimUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/launcher/XDockView$k;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v4, v0, Lcom/zui/launcher/XDockView$k;->b:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v5, v0, Lcom/zui/launcher/XDockView$k;->c:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/zui/launcher/XDockView$k;->d:Landroid/graphics/Rect;

    iget v7, v0, Lcom/zui/launcher/XDockView$k;->e:F

    iget v8, v0, Lcom/zui/launcher/XDockView$k;->f:F

    iget v9, v0, Lcom/zui/launcher/XDockView$k;->g:F

    iget v10, v0, Lcom/zui/launcher/XDockView$k;->h:F

    iget v11, v0, Lcom/zui/launcher/XDockView$k;->i:F

    iget v12, v0, Lcom/zui/launcher/XDockView$k;->j:I

    iget-object v13, v0, Lcom/zui/launcher/XDockView$k;->k:Landroid/view/animation/Interpolator;

    iget-object v14, v0, Lcom/zui/launcher/XDockView$k;->l:Landroid/view/animation/Interpolator;

    iget-object v15, v0, Lcom/zui/launcher/XDockView$k;->m:Ljava/lang/Runnable;

    iget v1, v0, Lcom/zui/launcher/XDockView$k;->n:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/zui/launcher/XDockView$k;->o:Landroid/view/View;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/zui/launcher/XDockView$k;->p:Lcom/zui/launcher/folder/FolderIcon;

    move-object/from16 v18, v1

    invoke-virtual/range {v2 .. v18}, Lcom/zui/launcher/XDockViewAnimUtil;->startDragViewToFolderIconAnim(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;Lcom/zui/launcher/folder/FolderIcon;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/zui/launcher/XDockView$k;->q:Lcom/zui/launcher/XDockView;

    iget-object v0, v0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
