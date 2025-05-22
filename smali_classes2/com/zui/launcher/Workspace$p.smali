.class Lcom/zui/launcher/Workspace$p;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->R(IILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$p;->b:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$p;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/Workspace$p;->b:Lcom/zui/launcher/Workspace;

    iget-object p1, p1, Lcom/zui/launcher/Workspace;->t:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace$p;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
