.class Lcom/zui/launcher/Workspace$z;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "z"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/LauncherState;

.field final synthetic b:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$z;->b:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/Workspace$z;->a:Lcom/zui/launcher/LauncherState;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$z;->b:Lcom/zui/launcher/Workspace;

    invoke-static {p0}, Lcom/zui/launcher/Workspace;->z(Lcom/zui/launcher/Workspace;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/Workspace$z;->b:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Workspace$z;->a:Lcom/zui/launcher/LauncherState;

    invoke-static {p1, p0}, Lcom/zui/launcher/Workspace;->y(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$z;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p0, p1}, Lcom/zui/launcher/Workspace;->x(Lcom/zui/launcher/Workspace;F)F

    return-void
.end method
