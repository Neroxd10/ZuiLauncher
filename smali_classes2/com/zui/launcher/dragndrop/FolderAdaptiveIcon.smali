.class public Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->a:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->b:Landroid/graphics/Path;

    new-instance v0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$b;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->c:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V

    return-void
.end method

.method private static a(Lcom/zui/launcher/folder/FolderIcon;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;
    .locals 6

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->getFolderBackground()Lcom/zui/launcher/folder/PreviewBackground;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v2}, Lcom/zui/launcher/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {v3, v2}, Lcom/zui/launcher/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/folder/FolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v4

    div-float/2addr v4, v2

    int-to-float v2, v1

    mul-float/2addr v2, v4

    int-to-float v5, p2

    mul-float/2addr v4, v5

    new-instance v5, Lcom/zui/launcher/dragndrop/k;

    invoke-direct {v5, v2, v4, p0}, Lcom/zui/launcher/dragndrop/k;-><init>(FFLcom/zui/launcher/folder/FolderIcon;)V

    invoke-static {v1, p2, v5}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v3}, Lcom/zui/launcher/folder/PreviewBackground;->getClipPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance v1, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;

    invoke-direct {v1, p1, v0, v0}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FF)V

    new-instance p1, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;

    sub-float v2, v0, v2

    sub-float/2addr v0, v4

    invoke-direct {p1, p0, v2, v0}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FF)V

    new-instance p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Lcom/zui/launcher/folder/PreviewBackground;->getBgColor()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V

    return-object p0
.end method

.method static synthetic b(FFLcom/zui/launcher/folder/FolderIcon;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewItemManager()Lcom/zui/launcher/folder/PreviewItemManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/zui/launcher/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/Launcher;ILandroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->findFolderIcon(I)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->a(Lcom/zui/launcher/folder/FolderIcon;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static createFolderAdaptiveIcon(Lcom/zui/launcher/Launcher;ILandroid/graphics/Point;)Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertNonUiThread()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :try_start_0
    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iget v2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {v1}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/zui/launcher/dragndrop/j;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/zui/launcher/dragndrop/j;-><init>(Lcom/zui/launcher/Launcher;ILandroid/graphics/Bitmap;Landroid/graphics/Point;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "FolderAdaptiveIcon"

    const-string p2, "Unable to create folder icon"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBadge()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->c:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method public getIconMask()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;->b:Landroid/graphics/Path;

    return-object p0
.end method
