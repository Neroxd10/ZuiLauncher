.class Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult$a;->a:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult$a;->a:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->a(Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method
