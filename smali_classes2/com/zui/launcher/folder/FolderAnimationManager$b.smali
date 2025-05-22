.class Lcom/zui/launcher/folder/FolderAnimationManager$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderAnimationManager;->d(Landroid/animation/AnimatorSet;FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/zui/launcher/folder/FolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderAnimationManager;Landroid/view/View;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->e:Lcom/zui/launcher/folder/FolderAnimationManager;

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    iput p3, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->b:F

    iput p4, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->c:F

    iput p5, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->e:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-static {p0}, Lcom/zui/launcher/folder/FolderAnimationManager;->c(Lcom/zui/launcher/folder/FolderAnimationManager;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->e:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/zui/launcher/folder/FolderAnimationManager;->b(Lcom/zui/launcher/folder/FolderAnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager$b;->a:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
