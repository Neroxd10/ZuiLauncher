.class public Lcom/zui/launcher/util/OverlayEdgeEffect;
.super Lcom/zui/launcher/util/EdgeEffectCompat;
.source ""


# instance fields
.field private final a:Lcom/zui/launcher/LauncherOverlay;

.field private final b:Z

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/LauncherOverlay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->a:Lcom/zui/launcher/LauncherOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->b:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    return-void
.end method

.method public getDistance()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    return p0
.end method

.method public isFinished()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAbsorb(I)V
    .locals 0

    return-void
.end method

.method public onPullDistance(FF)F
    .locals 3

    iget p2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    add-float/2addr p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    iget-boolean p2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->d:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->a:Lcom/zui/launcher/LauncherOverlay;

    invoke-interface {p2}, Lcom/zui/launcher/LauncherOverlay;->onScrollInteractionBegin()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->d:Z

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->a:Lcom/zui/launcher/LauncherOverlay;

    iget v1, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    iget-boolean v2, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->b:Z

    invoke-interface {p2, v1, v2}, Lcom/zui/launcher/LauncherOverlay;->onScrollChange(FZ)V

    iget p0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1
.end method

.method public onRelease()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->c:F

    iget-object v0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->a:Lcom/zui/launcher/LauncherOverlay;

    invoke-interface {v0}, Lcom/zui/launcher/LauncherOverlay;->onScrollInteractionEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/util/OverlayEdgeEffect;->d:Z

    :cond_0
    return-void
.end method
