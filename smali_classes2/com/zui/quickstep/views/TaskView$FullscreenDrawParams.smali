.class public Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullscreenDrawParams"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field public mCurrentDrawnCornerRadius:F

.field public mCurrentDrawnInsets:Landroid/graphics/RectF;

.field public mScale:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->setCornerRadius(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    invoke-static {p1}, Lcom/zui/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->a:F

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->b:F

    iget p1, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->a:F

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void
.end method


# virtual methods
.method public setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void
.end method

.method public setInsets(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setProgress(FFILcom/zui/launcher/DeviceProfile;Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V
    .locals 4

    invoke-virtual {p5}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getInsetsToDrawInFullscreen()Landroid/graphics/RectF;

    move-result-object p5

    iget v0, p5, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iget v1, p5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, p1

    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p5, p1

    invoke-virtual {v2, v0, v3, v1, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean p4, p4, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->b:F

    :goto_0
    iget p5, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->a:F

    invoke-static {p1, p5, p4}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    if-lez p3, :cond_1

    int-to-float p1, p3

    add-float/2addr v0, p1

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    :cond_1
    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    return-void
.end method
