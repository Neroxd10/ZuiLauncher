.class public Lcom/zui/launcher/util/WindowManagerCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1f
.end annotation


# static fields
.field public static final MIN_TABLET_WIDTH:I = 0x258


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput p2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getDisplayProfiles(Landroid/content/Context;Ljava/util/Collection;IZ)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/zui/launcher/util/DisplayController$PortraitSize;",
            ">;IZ)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_navBarInteractionMode"

    const/4 v3, -0x1

    invoke-static {v2, v1, v3}, Lcom/zui/launcher/ResourceUtils;->getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    new-instance v4, Landroid/view/WindowInsets$Builder;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/util/DisplayController$PortraitSize;

    iget v6, v5, Lcom/zui/launcher/util/DisplayController$PortraitSize;->width:I

    int-to-float v6, v6

    invoke-static {v6, p2}, Lcom/zui/launcher/Utilities;->dpiFromPx(FI)F

    move-result v6

    float-to-int v6, v6

    const/16 v7, 0x258

    if-lt v6, v7, :cond_1

    move v7, v2

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    if-eqz v7, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0707e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v3, v3, v3, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v6

    goto :goto_4

    :cond_2
    if-eqz v1, :cond_4

    const-string v8, "navigation_bar_height"

    invoke-static {p0, v8, v6}, Lcom/zui/launcher/util/WindowManagerCompat;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v3, v3, v3, v8}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v8

    if-eqz v7, :cond_3

    const-string v7, "navigation_bar_height_landscape"

    invoke-static {p0, v7, v6}, Lcom/zui/launcher/util/WindowManagerCompat;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3, v3, v3, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v6

    goto :goto_3

    :cond_3
    const-string v7, "navigation_bar_width"

    invoke-static {p0, v7, v6}, Lcom/zui/launcher/util/WindowManagerCompat;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3, v3, v6, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v6

    :goto_3
    move-object v7, v6

    move-object v6, v8

    goto :goto_5

    :cond_4
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v6

    :goto_4
    move-object v7, v6

    :goto_5
    new-instance v8, Landroid/view/WindowMetrics;

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v5, Lcom/zui/launcher/util/DisplayController$PortraitSize;->width:I

    iget v11, v5, Lcom/zui/launcher/util/DisplayController$PortraitSize;->height:I

    invoke-direct {v9, v3, v3, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    invoke-virtual {v4, v10, v6}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/view/WindowMetrics;

    new-instance v8, Landroid/graphics/Rect;

    iget v9, v5, Lcom/zui/launcher/util/DisplayController$PortraitSize;->height:I

    iget v5, v5, Lcom/zui/launcher/util/DisplayController$PortraitSize;->width:I

    invoke-direct {v8, v3, v3, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-direct {v6, v8, v5}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-object v0
.end method
