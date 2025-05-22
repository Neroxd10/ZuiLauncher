.class Lcom/zui/launcher/uioverrides/RecentsUiFactory$a;
.super Lcom/zui/launcher/graphics/RotationMode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/uioverrides/RecentsUiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/RotationMode;-><init>(F)V

    return-void
.end method


# virtual methods
.method public mapInsets(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    sget-object p1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->right:I

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iput p0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method

.method public mapRect(IIIILandroid/graphics/Rect;)V
    .locals 0

    iput p2, p5, Landroid/graphics/Rect;->left:I

    iput p3, p5, Landroid/graphics/Rect;->top:I

    iput p4, p5, Landroid/graphics/Rect;->right:I

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
