.class public Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransformedImageDrawable"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:F

.field private c:F

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->a:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->b:F

    iput p4, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->c:F

    iput p5, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->d:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->e:I

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->e:I

    return-void
.end method

.method public updateBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->b:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->c:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v4, p1

    float-to-int p1, v4

    add-int/2addr v3, p1

    iget p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->d:I

    const/4 v4, 0x1

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_0

    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v2, p1

    :cond_0
    iget p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->d:I

    const/16 v4, 0x10

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_1

    div-int/lit8 p1, v1, 0x2

    sub-int/2addr v3, p1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->a:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
