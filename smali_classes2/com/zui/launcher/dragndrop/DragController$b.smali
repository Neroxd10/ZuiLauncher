.class Lcom/zui/launcher/dragndrop/DragController$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragController$b;->b:Lcom/zui/launcher/dragndrop/DragController;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragController$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController$b;->b:Lcom/zui/launcher/dragndrop/DragController;

    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DragController;->a(Lcom/zui/launcher/dragndrop/DragController;)Lcom/zui/launcher/DropTarget$DragObject;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController$b;->a:Landroid/view/View;

    invoke-static {v1, v0, p0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->showForIcon(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    return-void
.end method
