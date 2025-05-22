.class Lcom/zui/quickstep/views/TaskMenuView$c;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/TaskMenuView;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/quickstep/views/TaskMenuView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/TaskMenuView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView$c;->b:Lcom/zui/quickstep/views/TaskMenuView;

    iput-boolean p2, p0, Lcom/zui/quickstep/views/TaskMenuView$c;->a:Z

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView$c;->b:Lcom/zui/quickstep/views/TaskMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView$c;->b:Lcom/zui/quickstep/views/TaskMenuView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/zui/quickstep/views/TaskMenuView$c;->a:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView$c;->b:Lcom/zui/quickstep/views/TaskMenuView;

    invoke-static {p0}, Lcom/zui/quickstep/views/TaskMenuView;->d(Lcom/zui/quickstep/views/TaskMenuView;)V

    :cond_0
    return-void
.end method
