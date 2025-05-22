.class Lcom/zui/launcher/views/FloatingIconView$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/FloatingIconView;->k(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragLayer;

.field final synthetic c:Lcom/zui/launcher/views/FloatingIconView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/FloatingIconView;Landroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$e;->c:Lcom/zui/launcher/views/FloatingIconView;

    iput-object p2, p0, Lcom/zui/launcher/views/FloatingIconView$e;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView$e;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$e;->a:Landroid/view/View;

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1}, Lcom/zui/launcher/WorkspaceIconCompat;->shouldTextBeVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/views/FloatingIconView;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set text alpha 1, originalView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/views/FloatingIconView$e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$e;->a:Landroid/view/View;

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$e;->c:Lcom/zui/launcher/views/FloatingIconView;

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView$e;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {p1, p0}, Lcom/zui/launcher/views/FloatingIconView;->i(Lcom/zui/launcher/views/FloatingIconView;Lcom/zui/launcher/dragndrop/DragLayer;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView$e;->a:Landroid/view/View;

    instance-of p1, p0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-nez p1, :cond_0

    instance-of p1, p0, Lcom/zui/launcher/folder/FolderIcon;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
