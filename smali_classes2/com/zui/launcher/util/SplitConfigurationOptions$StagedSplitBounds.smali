.class public Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StagedSplitBounds"
.end annotation


# instance fields
.field public final appsStackedVertically:Z

.field public final dividerHeightPercent:F

.field public final dividerWidthPercent:F

.field public final leftTaskPercent:F

.field public final leftTopBounds:Landroid/graphics/Rect;

.field public final leftTopTaskId:I

.field public final rightBottomBounds:Landroid/graphics/Rect;

.field public final rightBottomTaskId:I

.field public final topTaskPercent:F

.field public final visualDividerBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iput p3, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    iput p4, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->rightBottomTaskId:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    if-le p3, p4, :cond_0

    new-instance p4, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p4, v0, v1, p1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, v0, p4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    iget-object p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    iget-object p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    iget-object p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    iget-object p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    return-void
.end method
