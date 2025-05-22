.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:F

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:F

.field public final o:F

.field public final p:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    instance-of v2, p5, Lcom/zui/launcher/BubbleTextView;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    if-nez v2, :cond_0

    check-cast p5, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p5}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    instance-of v2, p5, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v2, :cond_0

    check-cast p5, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {p5}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result p5

    goto :goto_0

    :cond_0
    move p5, v3

    :goto_0
    iput p5, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->n:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p5

    iput p5, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->o:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p5

    sub-int/2addr p5, p6

    int-to-float p5, p5

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p6

    sub-int/2addr p6, p7

    int-to-float p6, p6

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p7

    sub-float/2addr p5, p7

    iput p5, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->i:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p5

    sub-float p5, p6, p5

    iput p5, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->j:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    cmpl-float p4, p4, p6

    if-gtz p4, :cond_2

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    int-to-float p2, p2

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_3

    const-wide/16 p4, 0xfa

    goto :goto_3

    :cond_3
    const-wide/16 p4, 0x168

    :goto_3
    iput-wide p4, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->k:J

    if-eqz p2, :cond_4

    const-wide/16 p4, 0x1c2

    goto :goto_4

    :cond_4
    const-wide/16 p4, 0xc8

    :goto_4
    iput-wide p4, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->l:J

    if-eqz p2, :cond_5

    const-wide/16 p4, 0x32

    goto :goto_5

    :cond_5
    const-wide/16 p4, 0x28

    :goto_5
    iput-wide p4, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->m:J

    if-eqz p8, :cond_6

    if-nez p9, :cond_6

    const/4 v3, 0x0

    :cond_6
    iput v3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->p:F

    const/16 p2, 0x6c

    const-string p4, "starting_surface_icon_size"

    invoke-static {p4, p1, p2}, Lcom/zui/launcher/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->a:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->b:I

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->c:I

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->d:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->g:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->h:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->e:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$m;->f:I

    return-void
.end method
