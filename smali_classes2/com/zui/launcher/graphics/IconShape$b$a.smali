.class Lcom/zui/launcher/graphics/IconShape$b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/graphics/IconShape$b;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/view/ViewOutlineProvider;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zui/launcher/graphics/IconShape$b;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->b:Landroid/view/View;

    check-cast p1, Lcom/zui/launcher/views/ClipPathView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/zui/launcher/views/ClipPathView;->setClipPath(Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->a:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->a:Landroid/view/ViewOutlineProvider;

    iget-object p1, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, p0, Lcom/zui/launcher/graphics/IconShape$b$a;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
