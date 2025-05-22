.class Lcom/zui/launcher/Workspace$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->animateChildToPosition(Landroid/view/View;IIILjava/lang/Runnable;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/ItemInfo;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/ItemInfo;IIILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$n;->f:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$n;->a:Lcom/zui/launcher/ItemInfo;

    iput p3, p0, Lcom/zui/launcher/Workspace$n;->b:I

    iput p4, p0, Lcom/zui/launcher/Workspace$n;->c:I

    iput p5, p0, Lcom/zui/launcher/Workspace$n;->d:I

    iput-object p6, p0, Lcom/zui/launcher/Workspace$n;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lcom/zui/launcher/Workspace$n;->f:Lcom/zui/launcher/Workspace;

    iget-object p1, p1, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Workspace$n;->a:Lcom/zui/launcher/ItemInfo;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->container:I

    iget-object p1, p0, Lcom/zui/launcher/Workspace$n;->f:Lcom/zui/launcher/Workspace;

    iget v3, p0, Lcom/zui/launcher/Workspace$n;->b:I

    invoke-virtual {p1, v3}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v3

    iget v4, p0, Lcom/zui/launcher/Workspace$n;->c:I

    iget v5, p0, Lcom/zui/launcher/Workspace$n;->d:I

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object p0, p0, Lcom/zui/launcher/Workspace$n;->e:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
