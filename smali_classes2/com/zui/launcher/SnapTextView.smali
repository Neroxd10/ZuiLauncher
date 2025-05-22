.class public Lcom/zui/launcher/SnapTextView;
.super Landroid/widget/TextView;
.source ""


# static fields
.field public static final PADDING_V:F = 3.0f


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/SnapTextView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/SnapTextView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/SnapTextView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/SnapTextView;->c:Z

    return-void
.end method


# virtual methods
.method public setTextAlpha(F)V
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/zui/launcher/SnapTextView;->a:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/zui/launcher/SnapTextView;->a:I

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/SnapTextView;->setTextVisibility(Z)V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 3

    iput p1, p0, Lcom/zui/launcher/SnapTextView;->b:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->isAutoChangeTextColor()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/SnapTextView;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_0

    const p1, -0x66000001

    goto :goto_0

    :cond_0
    const/high16 p1, 0x55000000

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zui/launcher/SnapTextView;->b:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p1, p0, Lcom/zui/launcher/SnapTextView;->c:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/SnapTextView;->b:I

    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_0

    const p1, -0x66000001

    goto :goto_0

    :cond_0
    const/high16 p1, 0x55000000

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_1
    const p1, 0x106000d

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :cond_2
    :goto_1
    return-void
.end method
