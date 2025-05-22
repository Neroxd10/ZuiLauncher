.class Lcom/zui/launcher/uioverrides/RecentsUiFactory$b;
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

    iget p1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iput p0, p3, Landroid/graphics/Rect;->right:I

    :goto_0
    iput v0, p3, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public mapRect(IIIILandroid/graphics/Rect;)V
    .locals 0

    iput p4, p5, Landroid/graphics/Rect;->left:I

    iput p1, p5, Landroid/graphics/Rect;->top:I

    iput p2, p5, Landroid/graphics/Rect;->right:I

    iput p3, p5, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public toNaturalGravity(I)I
    .locals 3

    and-int/lit8 p0, p1, 0x7

    and-int/lit8 v0, p1, 0x70

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-ne p0, v2, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    const/16 v1, 0x50

    const/16 v2, 0x30

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    move v0, v2

    :cond_3
    :goto_1
    and-int/lit8 p1, p1, -0x8

    and-int/lit8 p1, p1, -0x71

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method
