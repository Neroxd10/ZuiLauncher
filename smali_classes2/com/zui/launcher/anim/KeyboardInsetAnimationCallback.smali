.class public Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1e
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->b:F

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->a:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->b:F

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->a:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->b:F

    iget p0, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->c:F

    invoke-static {p2, v1, p0}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->c:F

    iget-object v0, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->a:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/anim/KeyboardInsetAnimationCallback;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method
