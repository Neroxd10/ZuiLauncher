.class public Lcom/zui/launcher/widget/DeferredAppWidgetHostView;
.super Lcom/zui/launcher/widget/LauncherAppWidgetHostView;
.source ""


# instance fields
.field private final D:Landroid/text/TextPaint;

.field private E:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setWillNotDraw(Z)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->D:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->D:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const p1, 0x7f0800af

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->E:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->E:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->E:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    sub-int v4, p2, v0

    iget-object p2, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->E:Landroid/text/Layout;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->E:Landroid/text/Layout;

    invoke-virtual {p2}, Landroid/text/Layout;->getWidth()I

    move-result p2

    if-ne p2, v4, :cond_1

    return-void

    :cond_1
    new-instance p2, Landroid/text/StaticLayout;

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->D:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;->E:Landroid/text/Layout;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    return-void
.end method
