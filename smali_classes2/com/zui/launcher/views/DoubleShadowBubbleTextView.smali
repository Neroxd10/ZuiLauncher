.class public Lcom/zui/launcher/views/DoubleShadowBubbleTextView;
.super Lcom/zui/launcher/BubbleTextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;
    }
.end annotation


# instance fields
.field private final J:Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView;->J:Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p1, v0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget p2, v0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView;->J:Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->skipDoubleShadow(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView;->J:Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v2, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget v2, v2, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    invoke-static {v2, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->drawWithoutDot(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView;->J:Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v2, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget v5, v2, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    iget v2, v2, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    invoke-static {v2, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->drawWithoutDot(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    return-void
.end method
