.class public Lcom/zui/timelaweather/View/WidgetTextView;
.super Landroid/widget/TextView;
.source ""


# static fields
.field public static final WALLPAPAER_TEXT_COLOR_BLACK:I = -0x4d000000

.field public static final WALLPAPAER_TEXT_COLOR_SHADOW_BLACK:I = 0x3a000000

.field public static final WALLPAPAER_TEXT_COLOR_SHADOW_WHITE:I = 0x3affffff

.field public static final WALLPAPAER_TEXT_COLOR_WHITE:I = -0x19000001

.field public static final WIDGET_EMPTY_BLACK_COLOR:I = 0x66000000

.field public static final WIDGET_EMPTY_WHITE_COLOR:I = -0x7f000001


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/WidgetTextView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/WidgetTextView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/timelaweather/View/WidgetTextView;->a:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isTextVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/View/WidgetTextView;->a:Z

    return p0
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 3

    iput p1, p0, Lcom/zui/timelaweather/View/WidgetTextView;->b:I

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/WidgetTextView;->isTextVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/timelaweather/View/WidgetTextView;->b:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Lcom/zui/timelaweather/View/WidgetTextView;->b:I

    const v0, -0x19000001

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_1

    const v0, -0x7f000001

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const p1, 0x3affffff

    invoke-virtual {p0, v2, v1, v2, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/high16 p1, 0x40400000    # 3.0f

    const/high16 v0, 0x3a000000

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :goto_1
    return-void
.end method
