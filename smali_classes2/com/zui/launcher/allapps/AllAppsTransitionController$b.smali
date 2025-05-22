.class Lcom/zui/launcher/allapps/AllAppsTransitionController$b;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllAppsTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController$b;->a:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController$b;->a:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    invoke-static {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b(Lcom/zui/launcher/allapps/AllAppsTransitionController;)V

    return-void
.end method
