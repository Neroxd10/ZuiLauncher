.class Lcom/zui/launcher/LauncherStateManager$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherStateManager;->h(Lcom/zui/launcher/LauncherState;ZJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherStateManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$a;->b:Lcom/zui/launcher/LauncherStateManager;

    iput-object p2, p0, Lcom/zui/launcher/LauncherStateManager$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager$a;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$a;->b:Lcom/zui/launcher/LauncherStateManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->a(Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/LauncherState;)V

    return-void
.end method
