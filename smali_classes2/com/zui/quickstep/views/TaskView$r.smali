.class Lcom/zui/quickstep/views/TaskView$r;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$r;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$r;->a:Lcom/zui/quickstep/views/TaskView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/TaskView;->A(Lcom/zui/quickstep/views/TaskView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
