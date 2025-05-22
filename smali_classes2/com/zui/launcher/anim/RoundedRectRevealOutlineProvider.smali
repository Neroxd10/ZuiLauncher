.class public Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;
.super Lcom/zui/launcher/anim/RevealOutlineAnimation;
.source ""


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/anim/RevealOutlineAnimation;-><init>()V

    iput p1, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->a:F

    iput p2, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->b:F

    iput-object p3, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->a:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation;->mOutlineRadius:F

    iget-object v1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->c:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object p0, p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;->d:Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
