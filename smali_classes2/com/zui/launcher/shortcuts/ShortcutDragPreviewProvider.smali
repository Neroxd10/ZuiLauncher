.class public Lcom/zui/launcher/shortcuts/ShortcutDragPreviewProvider;
.super Lcom/zui/launcher/graphics/DragPreviewProvider;
.source ""


# instance fields
.field private final c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/shortcuts/ShortcutDragPreviewProvider;->c:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public createDragBitmap()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget v3, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int v4, v2, v3

    add-int/2addr v3, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v5, p0, 0x2

    int-to-float v5, v5

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v4, v5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p0, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p0, v5, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget p0, v1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v4, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v3
.end method

.method public getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2, v3, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v3, v4, v3

    :cond_0
    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/zui/launcher/shortcuts/ShortcutDragPreviewProvider;->c:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v5, v3

    aput v5, p2, v4

    const/4 v3, 0x1

    aget v4, p2, v3

    iget-object v5, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    div-float/2addr v2, v7

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/ShortcutDragPreviewProvider;->c:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v4, p0

    aput v4, p2, v3

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method
