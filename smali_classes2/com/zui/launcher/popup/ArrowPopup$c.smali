.class Lcom/zui/launcher/popup/ArrowPopup$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/popup/ArrowPopup;->animateClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/popup/ArrowPopup;


# direct methods
.method constructor <init>(Lcom/zui/launcher/popup/ArrowPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup$c;->a:Lcom/zui/launcher/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup$c;->a:Lcom/zui/launcher/popup/ArrowPopup;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    iget-boolean p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mDeferContainerRemoval:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->closeComplete()V

    :goto_0
    return-void
.end method
