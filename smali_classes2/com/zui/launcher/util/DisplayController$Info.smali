.class public Lcom/zui/launcher/util/DisplayController$Info;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/util/DisplayController$PortraitSize;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/DisplayController$PortraitSize;",
            ">;"
        }
    .end annotation
.end field

.field public final currentSize:Landroid/graphics/Point;

.field public final densityDpi:I

.field public final fontScale:F

.field public final id:I

.field public final rotation:I

.field public final singleFrameMs:I

.field public final supportedBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/WindowBounds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Display;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Display;",
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/DisplayController$PortraitSize;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/DisplayController$Info;->id:I

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/DisplayController$Info;->rotation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/zui/launcher/util/DisplayController$Info;->fontScale:F

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/zui/launcher/util/DisplayController$Info;->densityDpi:I

    new-instance v1, Lcom/zui/launcher/util/DisplayController$PortraitSize;

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v1, v2, v0}, Lcom/zui/launcher/util/DisplayController$PortraitSize;-><init>(II)V

    iput-object v1, p0, Lcom/zui/launcher/util/DisplayController$Info;->a:Lcom/zui/launcher/util/DisplayController$PortraitSize;

    invoke-static {p2}, Lcom/zui/launcher/util/DisplayController;->a(Landroid/view/Display;)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/DisplayController$Info;->singleFrameMs:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/zui/launcher/util/DisplayController$Info;->b:Ljava/util/Set;

    new-instance p3, Lcom/zui/launcher/util/DisplayController$PortraitSize;

    iget-object v0, p0, Lcom/zui/launcher/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p3, v1, v0}, Lcom/zui/launcher/util/DisplayController$PortraitSize;-><init>(II)V

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/zui/launcher/util/DisplayController$Info;->b:Ljava/util/Set;

    iget p3, p0, Lcom/zui/launcher/util/DisplayController$Info;->densityDpi:I

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/zui/launcher/util/WindowManagerCompat;->getDisplayProfiles(Landroid/content/Context;Ljava/util/Collection;IZ)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/util/h;

    invoke-direct {p2, p0}, Lcom/zui/launcher/util/h;-><init>(Lcom/zui/launcher/util/DisplayController$Info;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object p2, p0, Lcom/zui/launcher/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    new-instance v2, Lcom/zui/launcher/util/WindowBounds;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->y:I

    invoke-direct {v2, p2, v0, v3, v4}, Lcom/zui/launcher/util/WindowBounds;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zui/launcher/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    new-instance v2, Lcom/zui/launcher/util/WindowBounds;

    iget p3, p3, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v0, p2, p3, p1}, Lcom/zui/launcher/util/WindowBounds;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zui/launcher/util/DisplayController$PortraitSize;

    iget-object p2, p0, Lcom/zui/launcher/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p1, p3, p2}, Lcom/zui/launcher/util/DisplayController$PortraitSize;-><init>(II)V

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/DisplayController$Info;->b:Ljava/util/Set;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/Display;Ljava/util/Set;Lcom/zui/launcher/util/DisplayController$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/DisplayController$Info;)Lcom/zui/launcher/util/DisplayController$PortraitSize;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController$Info;->a:Lcom/zui/launcher/util/DisplayController$PortraitSize;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/util/DisplayController$Info;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController$Info;->b:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public synthetic c(Landroid/view/WindowMetrics;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-static {p1}, Lcom/zui/launcher/util/WindowBounds;->fromWindowMetrics(Landroid/view/WindowMetrics;)Lcom/zui/launcher/util/WindowBounds;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isTablet(Lcom/zui/launcher/util/WindowBounds;)Z
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p1, p1, Lcom/zui/launcher/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/zui/launcher/util/DisplayController$Info;->densityDpi:I

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->dpiFromPx(FI)F

    move-result p0

    const/high16 p1, 0x44160000    # 600.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
