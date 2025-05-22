.class Lcom/zui/launcher/dragndrop/DragView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView;-><init>(Lcom/zui/launcher/Launcher;Landroid/graphics/Bitmap;IIFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$a;->a:Lcom/zui/launcher/dragndrop/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$a;->a:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DragView;->a(Lcom/zui/launcher/dragndrop/DragView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$a;->a:Lcom/zui/launcher/dragndrop/DragView;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->o:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->onDragViewAnimationEnd()V

    :cond_0
    return-void
.end method
