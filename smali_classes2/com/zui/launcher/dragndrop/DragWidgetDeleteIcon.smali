.class public Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;
.super Lcom/zui/launcher/dragndrop/DragDeleteView;
.source ""


# instance fields
.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Ljava/lang/Object;IIIIF)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/dragndrop/DragDeleteView;-><init>(Lcom/zui/launcher/Launcher;IIIF)V

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p7

    invoke-virtual {p7}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p7, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p7}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p7}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v0

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mWidth:I

    invoke-virtual {p7}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result p7

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    goto :goto_0

    :cond_0
    invoke-virtual {p7}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v0

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mWidth:I

    invoke-virtual {p7}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result p7

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    :goto_0
    mul-int/2addr p7, v0

    iput p7, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mHeight:I

    instance-of p7, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez p7, :cond_1

    instance-of p2, p2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz p2, :cond_2

    :cond_1
    iget p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mWidth:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->r:I

    iget p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mHeight:I

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->s:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->hasWhiteBg()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0805c1

    goto :goto_1

    :cond_3
    const p1, 0x7f0805c2

    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mBg:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f070898

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mPadding:I

    iget p1, p0, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->r:I

    add-int/2addr p5, p1

    iput p5, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    iget p1, p0, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->s:I

    add-int/2addr p6, p1

    iput p6, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    return-void
.end method


# virtual methods
.method public getHeightOffset()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->s:I

    return p0
.end method

.method public getWidthOffset()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->r:I

    return p0
.end method
