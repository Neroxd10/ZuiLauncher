.class public Lcom/zui/launcher/util/Themes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_THEMED_ICONS:Ljava/lang/String; = "themed_icons"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createValueMap(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/zui/launcher/util/IntArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lcom/zui/launcher/util/IntArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    new-instance v1, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v1, v0}, Lcom/zui/launcher/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/zui/launcher/util/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Lcom/zui/launcher/util/IntArray;->removeAllValues(Lcom/zui/launcher/util/IntArray;)V

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntArray;->toArray()[I

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :goto_1
    array-length p1, p2

    if-ge v2, p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    aget v1, p2, v2

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static getActivityThemeRes(Landroid/content/Context;)I
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    move v1, v0

    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lcom/zui/launcher/util/Themes;->getActivityThemeRes(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getActivityThemeRes(Landroid/content/Context;I)I
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_2

    const p0, 0x7f130130

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const p0, 0x7f13012f

    goto :goto_1

    :cond_3
    const p0, 0x7f13012e

    :goto_1
    return p0

    :cond_4
    if-eqz v0, :cond_5

    const p0, 0x7f130132

    goto :goto_2

    :cond_5
    const p0, 0x7f130131

    :goto_2
    return p0
.end method

.method public static getAlpha(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getAttrBoolean(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static getAttrInteger(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorBackground(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010031

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorBackgroundFloating(Landroid/content/Context;)I
    .locals 1

    const v0, 0x10104e2

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103ac

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x10301ad

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static getDialogCornerRadius(Landroid/content/Context;)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0400d8

    invoke-static {p0, v1, v0}, Lcom/zui/launcher/util/Themes;->getDimension(Landroid/content/Context;IF)F

    move-result p0

    return p0
.end method

.method public static getDimension(Landroid/content/Context;IF)F
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static isThemedIconEnabled(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "themed_icons"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static setColorChangeOnMatrix(IILandroid/graphics/ColorMatrix;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->reset()V

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0x9

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    const/16 p1, 0x13

    aput p0, p2, p1

    return-void
.end method

.method public static setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    return-void
.end method
