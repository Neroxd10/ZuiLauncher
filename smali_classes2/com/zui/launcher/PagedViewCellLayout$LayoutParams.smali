.class public Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/PagedViewCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isDragging:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellX:I

    iput p2, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellY:I

    iput p3, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget v0, p1, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v0, p1, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v0, p1, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iget p1, p1, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    iput p1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->a:Ljava/lang/Object;

    return-void
.end method

.method public setup(Landroid/content/Context;IIIIII)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iget v1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v3, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellY:I

    mul-int v4, v0, p2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p4

    add-int/2addr v4, v0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v0

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-int v0, v1, p3

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p5

    add-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isLargeTablet:Z

    add-int/2addr p2, p4

    mul-int/2addr v2, p2

    if-eqz p1, :cond_0

    add-int/2addr p6, v2

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p6, p1

    iput p6, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->b:I

    add-int/2addr p3, p5

    mul-int/2addr v3, p3

    add-int/2addr p7, v3

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p7, p1

    iput p7, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->b:I

    add-int/2addr p3, p5

    mul-int/2addr v3, p3

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->c:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
