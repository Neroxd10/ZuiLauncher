.class Lcom/zui/launcher/icons/ClockDrawableWrapper$d;
.super Lcom/zui/launcher/icons/FastBitmapDrawable;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ClockDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/ClockDrawableWrapper$d$a;
    }
.end annotation


# instance fields
.field private final l:Ljava/util/Calendar;

.field private final m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

.field private final n:Landroid/graphics/drawable/AdaptiveIconDrawable;

.field private final o:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method constructor <init>(Lcom/zui/launcher/icons/ClockDrawableWrapper$c;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->l:Ljava/util/Calendar;

    iput-object p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget-object p1, p1, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->c:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    iget-object p1, p1, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-object p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->n:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    iput-object p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->o:Landroid/graphics/drawable/LayerDrawable;

    return-void
.end method

.method private d()V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/zui/launcher/icons/ClockDrawableWrapper;->TICK_MS:J

    rem-long v4, v0, v2

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget-object v0, v0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->c:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->l:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->o:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->a(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    iget-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget v0, v0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->a:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget v2, v2, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p2

    iget-object v2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget v2, v2, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->b:I

    int-to-float v2, v2

    add-float/2addr p2, v2

    invoke-virtual {p1, v0, v0, v1, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->n:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->o:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->d()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    new-instance v0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d$a;

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    invoke-virtual {p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->isDisabled()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$d$a;-><init>(Lcom/zui/launcher/icons/ClockDrawableWrapper$c;Z)V

    return-object v0
.end method

.method public isThemed()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget-object p0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->f:Landroid/graphics/ColorFilter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->n:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->m:Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget-object v0, v0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->c:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->l:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->o:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->a(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->d()V

    :goto_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_0
    return p2
.end method

.method protected updateFilter()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->updateFilter()V

    iget-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;->n:Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
