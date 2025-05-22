.class public Lcom/zui/launcher/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lcom/zui/launcher/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field protected mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget v0, p3, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    iput v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    iput v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->c:I

    iget p3, p3, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    iput p3, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    iput p3, p0, Lcom/zui/launcher/PagedViewCellLayout;->d:I

    iget p3, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iput p3, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->h:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->g:I

    new-instance p2, Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-direct {p2, p1}, Lcom/zui/launcher/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    iget p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    iget p3, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    invoke-virtual {p2, p1, p3}, Lcom/zui/launcher/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    iget-object p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    iget p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    iget p3, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    invoke-virtual {p1, p2, p3}, Lcom/zui/launcher/PagedViewCellLayoutChildren;->setGap(II)V

    iget-object p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/PagedViewCellLayout$LayoutParams;)Z
    .locals 4

    iget v0, p4, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_2

    iget v1, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    add-int/lit8 v2, v1, -0x1

    if-gt v0, v2, :cond_2

    iget v0, p4, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_2

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    iget v0, p4, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_0

    iput v1, p4, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    :cond_0
    iget v0, p4, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    iput v0, p4, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return v3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public calculateCellCount(IIII)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedViewCellLayout;->estimateCellVSpan(I)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;

    return p0
.end method

.method public enableCenteredContent(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    add-int/2addr p0, v0

    div-int/2addr p1, p0

    const/4 p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public estimateCellHeight(I)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public estimateCellPosition(II)[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    mul-int v4, p1, v3

    add-int/2addr v2, v4

    iget v4, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    mul-int/2addr p1, v4

    add-int/2addr v2, p1

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    const/4 p1, 0x0

    aput v2, v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    mul-int v3, p2, v2

    add-int/2addr p1, v3

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    div-int/2addr v2, v0

    add-int/2addr p1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    return-object v1
.end method

.method public estimateCellVSpan(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    add-int/2addr p0, v0

    div-int/2addr p1, p0

    const/4 p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public estimateCellWidth(I)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCellCountForDimensions(II)[I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p1, p0

    div-int/2addr p1, p0

    add-int/2addr p2, p0

    div-int/2addr p2, p0

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0
.end method

.method public getCellCountX()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    return p0
.end method

.method public getCellCountY()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    return p0
.end method

.method public getCellHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    return p0
.end method

.method public getCellWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    return p0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildrenLayout()Lcom/zui/launcher/PagedViewCellLayoutChildren;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    return-object p0
.end method

.method getContentHeight()I
    .locals 3

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    mul-int/2addr v2, v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    return v2

    :cond_0
    return v1
.end method

.method getContentWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getPageChildCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method getWidthBeforeFirstLayout()I
    .locals 3

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    mul-int/2addr v2, v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    return v2

    :cond_0
    return v1
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/zui/launcher/PagedViewCellLayout;->g:I

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    iget v5, p0, Lcom/zui/launcher/PagedViewCellLayout;->h:I

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    iput v5, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    iget v7, p0, Lcom/zui/launcher/PagedViewCellLayout;->c:I

    mul-int/2addr v6, v7

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    iget v7, p0, Lcom/zui/launcher/PagedViewCellLayout;->d:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    if-lez v1, :cond_2

    div-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iput v3, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    if-lez v2, :cond_3

    div-int/2addr v5, v2

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    iput v5, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    iget-object v1, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    invoke-virtual {v1, v2, v5}, Lcom/zui/launcher/PagedViewCellLayoutChildren;->setGap(II)V

    :goto_3
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->e:I

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    iget v1, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    mul-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_4
    if-ge v4, v0, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedViewCellLayout;->getPageChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedViewCellLayout;->getPageChildCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedViewCellLayout;->getCellCountX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedViewCellLayout;->getCellCountY()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->f:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    int-to-float p1, v1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public removeAllViewsOnPage()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCellCount(II)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->a:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->b:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public setGap(II)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->i:I

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout;->g:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->j:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout;->h:I

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout;->mChildren:Lcom/zui/launcher/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/PagedViewCellLayoutChildren;->setGap(II)V

    return-void
.end method
