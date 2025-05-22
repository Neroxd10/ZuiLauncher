.class public Lcom/zui/launcher/dragndrop/DragDeleteIcon;
.super Lcom/zui/launcher/dragndrop/DragDeleteView;
.source ""


# instance fields
.field private r:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;IIIF)V
    .locals 4

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/dragndrop/DragDeleteView;-><init>(Lcom/zui/launcher/Launcher;IIIF)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mWidth:I

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mHeight:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mPadding:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07081c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p5

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteIcon;->r:I

    int-to-float v2, v2

    mul-float/2addr v2, p5

    float-to-int v2, v2

    sub-int/2addr v2, v3

    add-int/2addr p3, v2

    iget v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mPadding:I

    add-int/2addr p3, v3

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    add-int/2addr p4, v2

    add-int/2addr p4, v3

    iput p4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "registration : ( "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " , "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    const p3, 0x7f0702ba

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    int-to-float p1, p2

    add-float/2addr p3, p1

    div-float/2addr p3, p1

    sub-float/2addr p5, p3

    mul-float/2addr p1, p5

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetX:F

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetY:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offset : ( "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetX:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetY:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExtra()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteIcon;->r:I

    return p0
.end method
