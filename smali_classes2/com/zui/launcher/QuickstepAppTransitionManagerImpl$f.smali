.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseActivity;->clearForceInvisibleFlag(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseActivity;->addForceInvisibleFlag(I)V

    return-void
.end method
