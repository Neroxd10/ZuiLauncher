.class Lcom/zui/launcher/views/RecyclerViewLettersScroller$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/RecyclerViewLettersScroller;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/launcher/views/RecyclerViewLettersScroller;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/RecyclerViewLettersScroller;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller$b;->b:Lcom/zui/launcher/views/RecyclerViewLettersScroller;

    iput-boolean p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller$b;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller$b;->b:Lcom/zui/launcher/views/RecyclerViewLettersScroller;

    invoke-static {p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->l(Lcom/zui/launcher/views/RecyclerViewLettersScroller;)Landroid/widget/TextView;

    move-result-object p1

    iget-boolean p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller$b;->a:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
