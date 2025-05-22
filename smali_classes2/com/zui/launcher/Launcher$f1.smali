.class Lcom/zui/launcher/Launcher$f1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->v0(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/graphics/drawable/Drawable;

.field final synthetic f:Landroid/graphics/Bitmap;

.field final synthetic g:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;FFLandroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$f1;->g:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$f1;->a:Landroid/view/View;

    iput p3, p0, Lcom/zui/launcher/Launcher$f1;->b:F

    iput p4, p0, Lcom/zui/launcher/Launcher$f1;->c:F

    iput-object p5, p0, Lcom/zui/launcher/Launcher$f1;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/zui/launcher/Launcher$f1;->e:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/zui/launcher/Launcher$f1;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher$f1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/Launcher$f1;->g:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/Launcher$f1;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/Launcher$f1;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/launcher/Launcher$f1;->e:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/zui/launcher/Launcher$f1;->f:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/zui/launcher/Launcher$f1;->b:F

    iget v6, p0, Lcom/zui/launcher/Launcher$f1;->c:F

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/Launcher;->Y(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/Launcher$f1;->a:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/Launcher$f1;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$f1;->a:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/Launcher$f1;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$f1;->a:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/Launcher$f1;->c:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
