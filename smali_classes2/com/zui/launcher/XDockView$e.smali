.class Lcom/zui/launcher/XDockView$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/XDockView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$e;->a:Lcom/zui/launcher/XDockView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/XDockView$e;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/XDockView$e;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/XDockView$e;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p0}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showOutOfFolderMessage()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->showOutOfSpaceMessage(Z)V

    :cond_1
    :goto_0
    return-void
.end method
