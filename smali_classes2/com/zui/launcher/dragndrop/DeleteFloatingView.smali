.class public Lcom/zui/launcher/dragndrop/DeleteFloatingView;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static mInfo:Lcom/zui/launcher/ItemInfo;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field protected mLauncher:Lcom/zui/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method private animateOpen()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method private b(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->a(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v0}, Lcom/zui/launcher/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientAboutIcon, targetView=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    instance-of v5, p2, Lcom/zui/launcher/BubbleTextView;

    if-eqz v5, :cond_3

    move-object v5, p2

    check-cast v5, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v5}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {v5}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    :goto_1
    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {v5}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v2, v2, 0x2

    :goto_2
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v3, v2

    :goto_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    goto :goto_4

    :cond_3
    instance-of v5, p2, Lcom/zui/launcher/ActiveIconView;

    if-eqz v5, :cond_5

    move-object v5, p2

    check-cast v5, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v5}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {v5}, Lcom/zui/launcher/ActiveIconView;->getIconHeight()I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v2, v6

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5}, Lcom/zui/launcher/ActiveIconView;->getIconWidth()I

    move-result v5

    goto :goto_2

    :cond_5
    :goto_4
    instance-of v1, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-nez v1, :cond_6

    instance-of v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v1, :cond_b

    :cond_6
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v1

    :goto_5
    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v4

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    mul-int v6, v3, v5

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    mul-int v8, v1, v7

    if-eqz v4, :cond_8

    mul-int v6, v3, v7

    mul-int v8, v1, v5

    :cond_8
    new-instance v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-direct {v5, v6, v8}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->hasWhiteBg()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0805c1

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0805c2

    :goto_6
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070898

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v6, 0x7f0a0136

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v5}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    if-eqz v4, :cond_a

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p1

    mul-int/2addr p2, v3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int v3, p2, v2

    goto :goto_7

    :cond_a
    iget p2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    mul-int/2addr p2, v3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int v3, p2, v2

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :goto_7
    mul-int/2addr p1, v1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    add-int v4, p1, p2

    :cond_b
    int-to-float p1, v3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    int-to-float p1, v4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method

.method public static findCurrentDeleteView(Lcom/zui/launcher/Launcher;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->a(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;
    .locals 1

    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    return-object p0
.end method

.method public static showForIcon(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;
    .locals 4

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008f

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->populateAndShow(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    const p1, 0x7f0a0136

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120306

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method protected closeComplete()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->handlerDaulTimeView(Z)V

    return-void
.end method

.method public getLogContainerType()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method protected handleClose(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->closeComplete()V

    return-void
.end method

.method public handlerDaulTimeView(Z)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mInfo:Lcom/zui/launcher/ItemInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->a(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {p0}, Lcom/zui/launcher/LeosWidgetInterface;->canShowConfigureRect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lcom/zui/launcher/LeosWidgetInterface;->setConfigureRect(Z)V

    :cond_1
    return-void
.end method

.method public isDaulTimeView()Z
    .locals 2

    sget-object v0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mInfo:Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->a(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/zui/launcher/DaulTimeZoneViewOne;

    if-nez v0, :cond_0

    instance-of p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isEventValid(Landroid/view/MotionEvent;)Z
    .locals 4

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isEventValidForDragLayer(Landroid/view/MotionEvent;)Z
    .locals 2

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isOfType(I)Z
    .locals 0

    const/high16 p0, 0x10000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    const/high16 v0, 0x10000

    invoke-static {p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeItemByInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->isEventValid(Landroid/view/MotionEvent;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onTouchEvent   inThisRect -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->isDaulTimeView()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Launcher"

    const-string v0, "DeleteFloatingView  onTouchEvent clickview  inner "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_3
    return p1
.end method

.method public populateAndShow(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 1

    sput-object p1, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mInfo:Lcom/zui/launcher/ItemInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->b(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->animateOpen()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->handlerDaulTimeView(Z)V

    return-void
.end method

.method public resizeWidgetFrame(Landroid/appwidget/AppWidgetHostView;IIII)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v1

    :goto_0
    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    mul-int v4, v3, p4

    mul-int v5, v1, p5

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v6

    if-eqz v6, :cond_1

    mul-int v4, v3, p5

    mul-int v5, v1, p4

    :cond_1
    new-instance p5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-direct {p5, v4, v5}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    iput-boolean v4, p5, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p5, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p5}, Lcom/zui/launcher/Launcher;->hasWhiteBg()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    const v4, 0x7f0805c1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    const v4, 0x7f0805c2

    :goto_1
    invoke-virtual {p5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v4, 0x7f070898

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p5

    const v4, 0x7f0a0136

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput p5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p5, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p5}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    if-eqz v6, :cond_3

    invoke-static {p3}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p1

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p3

    invoke-static {p2, p4, p3}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p2

    mul-int/2addr p1, v3

    iget-object p3, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p4

    mul-int/2addr p2, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    goto :goto_2

    :cond_3
    mul-int/2addr p2, v3

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->a:Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p4

    mul-int/2addr p3, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    move v7, p2

    move p2, p1

    move p1, v7

    :goto_2
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method
