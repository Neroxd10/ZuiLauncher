.class Lcom/zui/launcher/touch/ItemLongClickListener$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/touch/ItemLongClickListener;->c(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragController;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/touch/ItemLongClickListener$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/zui/launcher/touch/ItemLongClickListener$a;->b:Lcom/zui/launcher/dragndrop/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/ItemLongClickListener$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/touch/ItemLongClickListener$a;->b:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/ItemLongClickListener$a;->a:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
