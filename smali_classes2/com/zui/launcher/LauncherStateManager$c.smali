.class Lcom/zui/launcher/LauncherStateManager$c;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherState;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$c;->c:Lcom/zui/launcher/LauncherStateManager;

    iput-object p2, p0, Lcom/zui/launcher/LauncherStateManager$c;->a:Lcom/zui/launcher/LauncherState;

    iput-object p3, p0, Lcom/zui/launcher/LauncherStateManager$c;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager$c;->c:Lcom/zui/launcher/LauncherStateManager;

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$c;->a:Lcom/zui/launcher/LauncherState;

    invoke-static {p1, p0}, Lcom/zui/launcher/LauncherStateManager;->c(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager$c;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager$c;->c:Lcom/zui/launcher/LauncherStateManager;

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$c;->a:Lcom/zui/launcher/LauncherState;

    invoke-static {p1, v0}, Lcom/zui/launcher/LauncherStateManager;->d(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$c;->c:Lcom/zui/launcher/LauncherStateManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->a(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;)V

    return-void
.end method
