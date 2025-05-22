.class public Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/animation/ObjectAnimator;

.field protected final mHand:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

.field protected final mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->a:I

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->b:I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f04019d

    invoke-static {p1, v1}, Lcom/zui/launcher/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f13000d

    goto :goto_0

    :cond_0
    const v1, 0x7f13000c

    :goto_0
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f08021c

    const v4, 0x3f133333    # 0.575f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 v7, 0x0

    new-instance v8, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f08021d

    const/high16 v4, 0x3ec00000    # 0.375f

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v8, p1, v7

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 v7, 0x1

    new-instance v8, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f08021e

    const/high16 v4, 0x3ea00000    # 0.3125f

    const v5, 0x3e4ccccd    # 0.2f

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v8, p1, v7

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 v7, 0x2

    new-instance v8, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f08021f

    const v4, 0x3ef33333    # 0.475f

    const v5, 0x3e851eb8    # 0.26f

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v8, p1, v7

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const/4 p1, 0x3

    new-instance v7, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v3, 0x7f080220

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3e000000    # 0.125f

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/Context;IFFI)V

    aput-object v7, p0, p1

    return-void
.end method

.method private a(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public animateBgAlpha(FI)V
    .locals 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->c:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->a(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->c:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->c:Landroid/animation/ObjectAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->b:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->a:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBgAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->c:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->a(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
