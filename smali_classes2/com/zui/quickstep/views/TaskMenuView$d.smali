.class Lcom/zui/quickstep/views/TaskMenuView$d;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/TaskMenuView;->i(Z)V
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

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView$d;->b:Lcom/zui/quickstep/views/TaskMenuView;

    iput-boolean p2, p0, Lcom/zui/quickstep/views/TaskMenuView$d;->a:Z

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView$d;->b:Lcom/zui/quickstep/views/TaskMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView$d;->b:Lcom/zui/quickstep/views/TaskMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView$d;->b:Lcom/zui/quickstep/views/TaskMenuView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/zui/quickstep/views/TaskMenuView$d;->a:Z

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView$d;->b:Lcom/zui/quickstep/views/TaskMenuView;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zui/quickstep/views/TaskMenuView;->d(Lcom/zui/quickstep/views/TaskMenuView;)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method
