.class Lcom/zui/launcher/dragndrop/DragDeleteView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragDeleteView;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/DragDeleteView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragDeleteView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$d;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$d;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
