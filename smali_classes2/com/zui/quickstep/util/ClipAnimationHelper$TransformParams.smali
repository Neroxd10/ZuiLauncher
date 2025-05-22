.class public Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/ClipAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformParams"
.end annotation


# instance fields
.field a:F

.field b:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field c:F

.field d:Z

.field e:F

.field f:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

.field public offsetScale:F

.field public offsetX:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->a:F

    iput v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->offsetX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->offsetScale:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    iput v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->d:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->e:F

    return-void
.end method


# virtual methods
.method public setCornerRadius(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->e:F

    return-object p0
.end method

.method public setCurrentRectAndTargetAlpha(Landroid/graphics/RectF;F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    iput p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->c:F

    return-object p0
.end method

.method public setForLiveTile(Z)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->d:Z

    return-object p0
.end method

.method public setOffsetScale(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->offsetScale:F

    return-object p0
.end method

.method public setOffsetX(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->offsetX:F

    return-object p0
.end method

.method public setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->a:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->f:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    return-object p0
.end method
