.class Lcom/zui/launcher/popup/ArrowPopup$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/popup/ArrowPopup;->animateOpen()V
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

    iput-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup$b;->a:Lcom/zui/launcher/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup$b;->a:Lcom/zui/launcher/popup/ArrowPopup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup$b;->a:Lcom/zui/launcher/popup/ArrowPopup;

    invoke-static {p1}, Lcom/zui/launcher/popup/ArrowPopup;->b(Lcom/zui/launcher/popup/ArrowPopup;)V

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup$b;->a:Lcom/zui/launcher/popup/ArrowPopup;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    return-void
.end method
