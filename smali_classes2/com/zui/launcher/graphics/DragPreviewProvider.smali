.class public Lcom/zui/launcher/graphics/DragPreviewProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/DragPreviewProvider$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private b:Lcom/zui/launcher/graphics/DragPreviewProvider$a;

.field public final blurSizeOutline:I

.field public generatedDragOutline:Landroid/graphics/Bitmap;

.field public generatedDragOutlineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected final mView:Landroid/view/View;

.field public final previewPadding:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->a:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    instance-of v0, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/ActiveIconView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070146

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    iget-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, p2, Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    :goto_0
    return-void
.end method

.method protected static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public synthetic a(FLandroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public synthetic b(FLandroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public synthetic c(FLandroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createDragBitmap()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/BubbleTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto/16 :goto_1

    :cond_0
    instance-of v1, v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v3

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v4, v4, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v1, v4

    add-int/2addr v2, v4

    new-instance v4, Lcom/zui/launcher/graphics/d;

    invoke-direct {v4, p0, v0}, Lcom/zui/launcher/graphics/d;-><init>(Lcom/zui/launcher/graphics/DragPreviewProvider;F)V

    invoke-static {v1, v2, v4}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v1, v4

    add-int/2addr v2, v4

    new-instance v4, Lcom/zui/launcher/graphics/e;

    invoke-direct {v4, p0, v0}, Lcom/zui/launcher/graphics/e;-><init>(Lcom/zui/launcher/graphics/DragPreviewProvider;F)V

    invoke-static {v1, v2, v4}, Lcom/zui/launcher/icons/BitmapRenderer;->createSoftwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    if-eqz v3, :cond_2

    const/16 v0, -0x5a

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    instance-of v1, v0, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v0}, Lcom/zui/launcher/LeosWidgetInterface;->getScaleToFit()F

    move-result v2

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v1, v0

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iget v3, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v1, v3

    add-int/2addr v0, v3

    new-instance v3, Lcom/zui/launcher/graphics/c;

    invoke-direct {v3, p0, v2}, Lcom/zui/launcher/graphics/c;-><init>(Lcom/zui/launcher/graphics/DragPreviewProvider;F)V

    invoke-static {v1, v0, v3}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected drawDragView(Landroid/graphics/Canvas;F)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, p2, Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v1, p0, 0x2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-int/lit8 p0, p0, 0x2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, p2, Lcom/zui/launcher/folder/FolderIcon;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2}, Lcom/zui/launcher/folder/FolderIcon;->getTextVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, v3}, Lcom/zui/launcher/folder/FolderIcon;->setTextVisible(Z)V

    move v3, v2

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result p2

    neg-int p2, p2

    iget v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    int-to-float p2, p2

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    iget v4, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/folder/FolderIcon;->setTextVisible(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final generateDragOutline(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider$a;-><init>(Lcom/zui/launcher/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->b:Lcom/zui/launcher/graphics/DragPreviewProvider$a;

    sget-object p0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final generateDragOutline(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider$a;-><init>(Lcom/zui/launcher/graphics/DragPreviewProvider;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->b:Lcom/zui/launcher/graphics/DragPreviewProvider$a;

    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->b:Lcom/zui/launcher/graphics/DragPreviewProvider$a;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v1

    :goto_0
    div-float/2addr v0, v1

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v1}, Lcom/zui/launcher/LeosWidgetInterface;->getScaleToFit()F

    move-result v1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/zui/launcher/BubbleTextView;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v1, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v1}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v1

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lcom/zui/launcher/ActiveIconView;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v1}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v5, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v1, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    aget v5, p2, v3

    iget v6, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p2, v3

    goto :goto_3

    :cond_4
    aget v1, p2, v3

    iget v5, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget-object v5, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p2, v3

    :goto_3
    aget v1, p2, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    mul-float/2addr v3, p0

    sub-float/2addr p1, v3

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v4

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v1

    iget-object v5, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v5, v5, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    aget v1, p2, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    iget-object v8, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    div-float/2addr v5, v2

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p2, v3

    aget v1, p2, v4

    int-to-float v1, v1

    sub-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v6, p1

    div-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget p1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v4

    aget p1, p2, v4

    int-to-float p1, p1

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr v1, p0

    sub-float/2addr p1, v1

    float-to-int p0, p1

    aput p0, p2, v4

    goto :goto_4

    :cond_6
    aget v1, p2, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    iget-object v8, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    div-float/2addr v5, v2

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p2, v3

    aget v1, p2, v4

    int-to-float v1, v1

    sub-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v6, p1

    div-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget p0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v4

    :goto_4
    return v0
.end method
