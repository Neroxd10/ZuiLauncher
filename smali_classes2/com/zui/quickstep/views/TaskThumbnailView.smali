.class public Lcom/zui/quickstep/views/TaskThumbnailView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/OverviewScreenshotActions;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/quickstep/views/TaskThumbnailView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:Ljava/lang/String;

.field private static final u:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/zui/launcher/BaseActivity;

.field private b:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:I

.field private h:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

.field private i:Lcom/android/systemui/shared/recents/model/Task;

.field private j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private k:F

.field private l:Z

.field private m:Lcom/android/systemui/plugins/OverviewScreenshotActions;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field private final n:Landroid/graphics/Rect;

.field private final o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

.field private final p:Landroid/graphics/Paint;

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Lcom/zui/quickstep/views/TaskThumbnailView$a;

    const-string v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/TaskThumbnailView$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/TaskThumbnailView;->DIM_ALPHA:Landroid/util/Property;

    const-class v0, Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/quickstep/views/TaskThumbnailView;->t:Ljava/lang/String;

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/views/j2;->a:Lcom/zui/quickstep/views/j2;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/views/TaskThumbnailView;->u:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->d:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->e:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->f:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->k:F

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->n:Landroid/graphics/Rect;

    new-instance p2, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-direct {p2}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->p:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->d:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->e:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    sget-object p2, Lcom/zui/quickstep/views/TaskThumbnailView;->u:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->h:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->getForegroundScrimDimColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->g:I

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/TaskThumbnailView;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->k:F

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/views/TaskThumbnailView;->t:Ljava/lang/String;

    return-object v0
.end method

.method private c(F)Landroid/graphics/ColorFilter;
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->g:I

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method private d()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isFallBack()Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/zui/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v3}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->e(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {p0}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->f(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Z

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->initOverlay(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;F)F

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v0, v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->d(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;F)F

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->g(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;Z)Z

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->d()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->h(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;Z)Z

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->n:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/ConfigurationCompat;->getWindowConfigurationRotation(Landroid/content/res/Configuration;)I

    move-result v8

    sget-object v0, Lcom/zui/quickstep/views/TaskThumbnailView;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnailMatrix, currentRotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mThumbnailData rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/zui/quickstep/views/TaskThumbnailView;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->n:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->q:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    move v5, v0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->r:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_1
    move v6, v0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    invoke-virtual/range {v2 .. v8}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/zui/launcher/DeviceProfile;I)V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->e(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3
    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/TaskView;->z0(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    new-instance v0, Lcom/zui/quickstep/views/g1;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/views/g1;-><init>(Lcom/zui/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private h()V
    .locals 4

    iget v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->k:F

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/TaskThumbnailView;->c(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->k:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    iget v3, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->g:I

    int-to-float v1, v1

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    const/high16 v0, -0x1000000

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    or-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->q:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->s:I

    :cond_1
    return-void
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->showScreenshot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v8, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->e:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/RecentsModel;

    iget-object v3, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Lcom/zui/quickstep/RecentsModel;->isDeviceLocked(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    :cond_1
    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v15, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v16, v15

    :goto_1
    const/4 v8, 0x0

    if-nez v16, :cond_5

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-gtz v1, :cond_5

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    move v14, v8

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v7, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v17, v7

    move/from16 v7, p6

    move v14, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    if-eqz v16, :cond_6

    return-void

    :cond_6
    :goto_3
    sget-boolean v1, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v1, :cond_7

    iget v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_a

    iget-object v8, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->q:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v2}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v2

    cmpl-float v2, v2, v14

    if-lez v2, :cond_8

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    :cond_8
    move v3, v1

    iget v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->r:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v2}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v2

    cmpl-float v2, v2, v14

    if-lez v2, :cond_9

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    :cond_9
    move v4, v1

    sub-float v1, v12, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v5, v13, v4

    div-float/2addr v5, v2

    invoke-virtual {v9, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v9, v14, v14, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->s:I

    int-to-float v6, v5

    int-to-float v7, v5

    iget-object v8, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_a
    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    if-eqz v15, :cond_b

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    move v4, v1

    goto :goto_5

    :cond_b
    move v4, v13

    :goto_5
    iget-object v7, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    :goto_6
    move/from16 v5, p6

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_c
    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    invoke-virtual {v9, v10, v11, v1, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    if-eqz v15, :cond_d

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F

    move-result v1

    move v3, v1

    goto :goto_7

    :cond_d
    move v3, v12

    :goto_7
    iget-object v7, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p5

    goto :goto_6

    :cond_e
    iget-object v7, v0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_8
    return-void
.end method

.method public getDimAlpha()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->k:F

    return p0
.end method

.method public getInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getPreviewPositionHelper()Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->o:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    return-object p0
.end method

.method public getScaledInsets()Landroid/graphics/Insets;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p0
.end method

.method public getSysUiStatusNavFlags()I
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    :cond_0
    or-int/lit8 v0, v2, 0x0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p0, v0

    return p0

    :cond_2
    return v1
.end method

.method public getTaskOverlay()Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->b:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskOverlayFactory()Lcom/zui/quickstep/TaskOverlayFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TaskOverlayFactory;->createOverlay(Lcom/zui/quickstep/views/TaskThumbnailView;)Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->b:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->b:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    return-object p0
.end method

.method public getTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/TaskView;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public isRealSnapshot()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isRealSnapshot:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    const-class v1, Lcom/android/systemui/plugins/OverviewScreenshotActions;

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->h:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->h:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget v1, v1, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->h:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget v8, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/zui/quickstep/views/TaskThumbnailView;->drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/OverviewScreenshotActions;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->m:Lcom/android/systemui/plugins/OverviewScreenshotActions;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-interface {p1, p2, v0, p0}, Lcom/android/systemui/plugins/OverviewScreenshotActions;->setupActions(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/OverviewScreenshotActions;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/views/TaskThumbnailView;->onPluginConnected(Lcom/android/systemui/plugins/OverviewScreenshotActions;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/OverviewScreenshotActions;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->m:Lcom/android/systemui/plugins/OverviewScreenshotActions;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->m:Lcom/android/systemui/plugins/OverviewScreenshotActions;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/OverviewScreenshotActions;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->onPluginDisconnected(Lcom/android/systemui/plugins/OverviewScreenshotActions;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    sget-boolean p1, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->q:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707b6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707b5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->s:I

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->g()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->f()V

    return-void
.end method

.method public refresh()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->g()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->m:Lcom/android/systemui/plugins/OverviewScreenshotActions;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/plugins/OverviewScreenshotActions;->setupActions(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    :cond_1
    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->h()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->k:F

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->h()V

    return-void
.end method

.method public setFullscreenParams(Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->h:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->l:Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->f()V

    :cond_0
    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->i:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView;->j:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->refresh()V

    :cond_1
    return-void
.end method
