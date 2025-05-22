.class public Lcom/zui/launcher/graphics/IconShape$RoundedSquare;
.super Lcom/zui/launcher/graphics/IconShape$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedSquare"
.end annotation


# instance fields
.field private final d:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/graphics/IconShape$c;-><init>(Lcom/zui/launcher/graphics/IconShape$a;)V

    iput p1, p0, Lcom/zui/launcher/graphics/IconShape$RoundedSquare;->d:F

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;FFF)V
    .locals 8

    add-float/2addr p2, p4

    add-float/2addr p3, p4

    iget p0, p0, Lcom/zui/launcher/graphics/IconShape$RoundedSquare;->d:F

    mul-float v6, p4, p0

    sub-float v1, p2, p4

    sub-float v2, p3, p4

    add-float v3, p2, p4

    add-float v4, p3, p4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 8

    add-float/2addr p2, p4

    add-float/2addr p3, p4

    iget p0, p0, Lcom/zui/launcher/graphics/IconShape$RoundedSquare;->d:F

    mul-float v6, p4, p0

    sub-float v1, p2, p4

    sub-float v2, p3, p4

    add-float v3, p2, p4

    add-float v4, p3, p4

    move-object v0, p1

    move v5, v6

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getStartRadius(Landroid/graphics/Rect;)F
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget p0, p0, Lcom/zui/launcher/graphics/IconShape$RoundedSquare;->d:F

    mul-float/2addr p1, p0

    return p1
.end method
