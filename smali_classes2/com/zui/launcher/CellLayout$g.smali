.class Lcom/zui/launcher/CellLayout$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/CellLayout;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-static {v0}, Lcom/zui/launcher/CellLayout;->b(Lcom/zui/launcher/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->identifyWallpaper()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/CellLayout;->c()[I

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/CellLayout;->d()[I

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-static {p1}, Lcom/zui/launcher/CellLayout;->b(Lcom/zui/launcher/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/zui/launcher/CellLayout;->d()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-static {p0}, Lcom/zui/launcher/CellLayout;->b(Lcom/zui/launcher/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-static {v0}, Lcom/zui/launcher/CellLayout;->b(Lcom/zui/launcher/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->identifyWallpaper()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/CellLayout;->c()[I

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/CellLayout;->d()[I

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-static {p1}, Lcom/zui/launcher/CellLayout;->b(Lcom/zui/launcher/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/zui/launcher/CellLayout;->d()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-static {p1}, Lcom/zui/launcher/CellLayout;->b(Lcom/zui/launcher/CellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$g;->a:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
