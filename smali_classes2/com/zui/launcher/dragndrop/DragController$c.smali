.class Lcom/zui/launcher/dragndrop/DragController$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragController;->l(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/DragView;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragController;Lcom/zui/launcher/dragndrop/DragView;II)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragController$c;->a:Lcom/zui/launcher/dragndrop/DragView;

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragController$c;->b:I

    iput p4, p0, Lcom/zui/launcher/dragndrop/DragController$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController$c;->a:Lcom/zui/launcher/dragndrop/DragView;

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragController$c;->b:I

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragController$c;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/dragndrop/DragView;->move(II)V

    return-void
.end method
