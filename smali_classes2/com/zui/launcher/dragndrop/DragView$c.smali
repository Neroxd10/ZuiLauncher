.class Lcom/zui/launcher/dragndrop/DragView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView;->y([F)V
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

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$c;->a:Lcom/zui/launcher/dragndrop/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$c;->a:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DragView;->d(Lcom/zui/launcher/dragndrop/DragView;)V

    return-void
.end method
