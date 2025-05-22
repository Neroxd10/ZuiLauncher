.class public Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/DoubleShadowBubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowInfo"
.end annotation


# instance fields
.field public final ambientShadowBlur:F

.field public final ambientShadowColor:I

.field public final keyShadowBlur:F

.field public final keyShadowColor:I

.field public final keyShadowOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/R$styleable;->ShadowInfo:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    const/4 p3, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public skipDoubleShadow(Landroid/widget/TextView;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget v1, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget p0, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    invoke-static {p0, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    invoke-virtual {p1, v1, v4, v4, p0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return v3

    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget v1, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget v2, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    iget p0, p0, Lcom/zui/launcher/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    invoke-static {p0, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    invoke-virtual {p1, v1, v4, v2, p0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return v3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    return v3
.end method
