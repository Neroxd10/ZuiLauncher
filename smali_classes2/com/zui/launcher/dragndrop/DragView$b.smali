.class Lcom/zui/launcher/dragndrop/DragView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView;->setItemInfo(Lcom/zui/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/ItemInfo;

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->a:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DragView;->b(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DragView;->b(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DragView;->m(Lcom/zui/launcher/dragndrop/DragView;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->a:Lcom/zui/launcher/ItemInfo;

    const/4 v5, 0x0

    move v3, v8

    move v4, v9

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/Utilities;->getFullDrawable(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragView;->m(Lcom/zui/launcher/dragndrop/DragView;)Lcom/zui/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v5}, Lcom/zui/launcher/dragndrop/DragView;->m(Lcom/zui/launcher/dragndrop/DragView;)Lcom/zui/launcher/Launcher;

    move-result-object v6

    iget-object v10, p0, Lcom/zui/launcher/dragndrop/DragView$b;->a:Lcom/zui/launcher/ItemInfo;

    aget-object v7, v7, v4

    invoke-static {v6, v10, v7, v0}, Lcom/zui/launcher/Utilities;->getBadge(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/launcher/dragndrop/DragView;->o(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v5}, Lcom/zui/launcher/dragndrop/DragView;->n(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    instance-of v5, v1, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;

    xor-int/2addr v0, v5

    invoke-static {v2, v0}, Lcom/zui/launcher/dragndrop/DragView;->q(Lcom/zui/launcher/dragndrop/DragView;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DragView;->m(Lcom/zui/launcher/dragndrop/DragView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragView;->p(Lcom/zui/launcher/dragndrop/DragView;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v6, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0}, Lcom/zui/launcher/icons/BaseIconFactory;->getNormalizer()Lcom/zui/launcher/icons/IconNormalizer;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v5, v5}, Lcom/zui/launcher/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v2

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_1
    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v2, 0x3f7ae148    # 0.98f

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    new-instance v5, Lcom/zui/launcher/dragndrop/DragView$h;

    iget-object v6, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    int-to-float v7, v8

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/zui/launcher/dragndrop/DragView$h;-><init>(Landroid/view/View;F)V

    invoke-static {v2, v5}, Lcom/zui/launcher/dragndrop/DragView;->r(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragView$h;)Lcom/zui/launcher/dragndrop/DragView$h;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    new-instance v5, Lcom/zui/launcher/dragndrop/DragView$h;

    iget-object v6, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    int-to-float v7, v9

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/zui/launcher/dragndrop/DragView$h;-><init>(Landroid/view/View;F)V

    invoke-static {v2, v5}, Lcom/zui/launcher/dragndrop/DragView;->s(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragView$h;)Lcom/zui/launcher/dragndrop/DragView$h;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Rect;->inset(II)V

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/launcher/dragndrop/DragView;->u(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragView;->t(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2, v5}, Lcom/zui/launcher/dragndrop/DragView;->u(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragView;->t(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/launcher/dragndrop/DragView;->w(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DragView;->v(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v1, v2}, Lcom/zui/launcher/dragndrop/DragView;->w(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$b;->b:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DragView;->v(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/zui/launcher/dragndrop/DragView$b$a;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/dragndrop/DragView$b$a;-><init>(Lcom/zui/launcher/dragndrop/DragView$b;Landroid/graphics/Path;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0

    :cond_5
    :goto_2
    return-void
.end method
