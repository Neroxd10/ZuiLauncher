.class public Lcom/zui/launcher/ActiveIconView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/WorkspaceIconCompat;


# static fields
.field private static B:Landroid/graphics/Paint; = null

.field private static C:I = -0x1

.field private static final D:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/ActiveIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private a:Lcom/zui/launcher/ThemedActiveIconContainer;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:Z

.field private e:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

.field private f:Lcom/zui/launcher/CheckLongPressHelper;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lcom/zui/launcher/Launcher;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/zui/launcher/dot/DotInfo;

.field private m:Lcom/zui/launcher/icons/DotRenderer;

.field public mTextAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private o:Landroid/animation/Animator;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/zui/launcher/WorkspaceItemInfo$b;

.field private x:I

.field private y:Z

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/ActiveIconView$b;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/ActiveIconView$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/ActiveIconView;->D:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/ActiveIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/ActiveIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->q:Z

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->t:Z

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->v:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/zui/launcher/ActiveIconView;->x:I

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->y:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/zui/launcher/ActiveIconView;->mTextAlpha:F

    move-object v2, p1

    check-cast v2, Lcom/zui/launcher/Launcher;

    iput-object v2, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    sget-object v2, Lcom/zui/launcher/R$styleable;->ActiveIconView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/ActiveIconView;->s:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->allAppsIconTextSizePx:F

    float-to-int p3, p3

    iput p3, p0, Lcom/zui/launcher/ActiveIconView;->j:I

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    iput p3, p0, Lcom/zui/launcher/ActiveIconView;->k:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->folderChildTextSizePx:I

    iput p3, p0, Lcom/zui/launcher/ActiveIconView;->j:I

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    iput p3, p0, Lcom/zui/launcher/ActiveIconView;->k:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->folderChildIconSizePx:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    iput p3, p0, Lcom/zui/launcher/ActiveIconView;->j:I

    iget p3, p2, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    iput p3, p0, Lcom/zui/launcher/ActiveIconView;->k:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    :goto_0
    iput p2, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->m()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/ActiveIconView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->j(Z)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/ActiveIconView;)Lcom/zui/launcher/icons/DotRenderer$DrawParams;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/ActiveIconView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconView;->o:Landroid/animation/Animator;

    return-object p1
.end method

.method private varargs d([F)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->f()V

    sget-object v0, Lcom/zui/launcher/ActiveIconView;->D:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconView;->o:Landroid/animation/Animator;

    new-instance v0, Lcom/zui/launcher/ActiveIconView$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/ActiveIconView$c;-><init>(Lcom/zui/launcher/ActiveIconView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->o:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private e(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->q:Z

    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->s:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v4, -0x64

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget v4, v0, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    goto :goto_3

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget v4, p0, Lcom/zui/launcher/ActiveIconView;->k:I

    :goto_1
    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget v4, p0, Lcom/zui/launcher/ActiveIconView;->k:I

    :goto_2
    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget v4, p0, Lcom/zui/launcher/ActiveIconView;->k:I

    :goto_3
    invoke-virtual {v1, v3, v4, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_6
    :goto_4
    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->s:I

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v1, v4, v0, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_5

    :cond_7
    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v1, v0, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_9
    :goto_5
    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120322

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method private f()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->o:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/ActiveIconView;->setCompoundDrawable(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static getGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private getModifiedColor()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/ActiveIconView;->mTextAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/zui/launcher/ActiveIconView;->mTextAlpha:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    return p0
.end method

.method private h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->e:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->createBitmapWithDownloadMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->g()V

    return-void
.end method

.method private j(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->r(Z)V

    return-void
.end method

.method private k()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    return p0

    :cond_3
    return v1
.end method

.method private l()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->showDot(Landroid/content/Context;Lcom/zui/launcher/dot/DotInfo;)Z

    move-result p0

    return p0
.end method

.method private m()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->f:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->g:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-direct {v0}, Lcom/zui/launcher/icons/DotRenderer$DrawParams;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->e:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ActiveIconView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActiveIconView creat init this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "test"

    invoke-static {v0, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->w:Lcom/zui/launcher/WorkspaceItemInfo$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/BubbleRecommendListener;

    invoke-direct {v0, p0}, Lcom/zui/launcher/BubbleRecommendListener;-><init>(Lcom/zui/launcher/WorkspaceIconCompat;)V

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->w:Lcom/zui/launcher/WorkspaceItemInfo$b;

    :cond_0
    return-void
.end method

.method private p(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private q(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method private r(Z)V
    .locals 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/ActiveIconView;->v:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->v:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->w:Lcom/zui/launcher/WorkspaceItemInfo$b;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->n()V

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->w:Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->a(Lcom/zui/launcher/WorkspaceItemInfo$b;)V

    :cond_0
    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->x:I

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/ItemInfo;->getDownloadProgressWithState(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/ActiveIconView;->x:I

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->z:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/zui/launcher/ActiveIconView;->x:I

    if-eq p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->e:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    iget v3, p0, Lcom/zui/launcher/ActiveIconView;->x:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->createDownloadMask(Landroid/content/Context;Lcom/zui/launcher/ThemedActiveIconContainer;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->setCompoundDrawable(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    sget-object p1, Lcom/zui/launcher/ActiveIconView;->B:Landroid/graphics/Paint;

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lcom/zui/launcher/ActiveIconView;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lcom/zui/launcher/ActiveIconView;->B:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Lcom/zui/launcher/ActiveIconView;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object p1, Lcom/zui/launcher/ActiveIconView;->B:Landroid/graphics/Paint;

    sget v1, Lcom/zui/launcher/ActiveIconView;->C:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p1, Lcom/zui/launcher/ActiveIconView;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sget-object v1, Lcom/zui/launcher/ActiveIconView;->B:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    :cond_3
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    const v0, 0x7f1205bc

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isReadyDownload()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    const v0, 0x7f1205bd

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1205be

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1205b8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->w:Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/WorkspaceItemInfo;->e(Lcom/zui/launcher/WorkspaceItemInfo$b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconView;->w:Lcom/zui/launcher/WorkspaceItemInfo$b;

    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_a
    return-void
.end method

.method private setCompoundDrawable(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyDotState(Lcom/zui/launcher/ItemInfo;Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->showDot(Landroid/content/Context;Lcom/zui/launcher/dot/DotInfo;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->showDot(Landroid/content/Context;Lcom/zui/launcher/dot/DotInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/launcher/DeviceProfile;->mDotRenderer:Lcom/zui/launcher/icons/DotRenderer;

    iput-object v3, p0, Lcom/zui/launcher/ActiveIconView;->m:Lcom/zui/launcher/icons/DotRenderer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    xor-int p2, v0, v1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v4, [F

    aput v2, p2, v3

    invoke-direct {p0, p2}, Lcom/zui/launcher/ActiveIconView;->d([F)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->f()V

    iget-object p2, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iput v2, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120322

    new-array v1, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->l()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/dot/DotInfo;->getZuiDotCount()I

    move-result p2

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/dot/DotInfo;->getNotificationCount()I

    move-result p2

    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f100000

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/launcher/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/zui/launcher/ActiveIconUtil;->getActiveIconView(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/ItemInfoWithIcon;Lcom/zui/launcher/icons/IconCache;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v1}, Lcom/zui/launcher/ThemedActiveIconContainer;->removeAllViews()V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->e(Lcom/zui/launcher/ItemInfoWithIcon;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->verifyHighRes()V

    instance-of v0, p1, Lcom/zui/launcher/PromiseAppInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/PromiseAppInfo;

    iget v0, v0, Lcom/zui/launcher/PromiseAppInfo;->level:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ActiveIconView;->applyProgressLevel(I)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/zui/launcher/ActiveIconView;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    return-void
.end method

.method public applyFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V
    .locals 3

    const-string v0, "ActiveIconView"

    const-string v1, "applyFromShortcutInfo"

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v0}, Lcom/zui/launcher/ThemedActiveIconContainer;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/ActiveIconView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    iget p1, p0, Lcom/zui/launcher/ActiveIconView;->s:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherContext;->getTextColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->e(Lcom/zui/launcher/ItemInfoWithIcon;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconView;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->color:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/ActiveIconView;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->i()V

    invoke-direct {p0, p2}, Lcom/zui/launcher/ActiveIconView;->j(Z)V

    return-void
.end method

.method public applyProgressLevel(I)Lcom/zui/launcher/graphics/PreloadIconDrawable;
    .locals 10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    iget-object p1, v0, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12009a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, v5, v1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v6, p1

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f1200a5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->f:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public clean()V
    .locals 0

    return-void
.end method

.method public clearPressedOrFocusedBackground()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ActiveIconView;->setPressed(Z)V

    return-void
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/zui/launcher/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public customGetDrawingCache()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-direct {p0, v1}, Lcom/zui/launcher/ActiveIconView;->p(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->buildDrawingCache()V

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-direct {p0, v1}, Lcom/zui/launcher/ActiveIconView;->p(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->buildDrawingCache()V

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveIconView customGetDrawingCache failed:   e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->saveActiveIconLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public dismissTitle()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->q(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/BluePoint;->isPackageNew(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v8

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/zui/launcher/BluePoint;->drawBluePoint(Landroid/graphics/Canvas;Landroid/widget/TextView;Ljava/lang/String;IIIZZ)V

    :cond_0
    return-void
.end method

.method public doUpdateRecommendStatus()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    new-instance v1, Lcom/zui/launcher/b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/b;-><init>(Lcom/zui/launcher/ActiveIconView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->t:Z

    const v1, 0x106000d

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-boolean v5, p0, Lcom/zui/launcher/ActiveIconView;->u:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-boolean v4, p0, Lcom/zui/launcher/ActiveIconView;->u:Z

    :cond_2
    or-int v5, v2, v3

    if-nez v5, :cond_3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v2

    int-to-float v0, v0

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    iget v0, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x55000000

    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v9, v0

    sget-object v10, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    iget v0, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    if-ne v0, v1, :cond_8

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/high16 v0, 0x3fe00000    # 1.75f

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {p0, v0, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->p:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iget v0, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ActiveIconView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->m:Lcom/zui/launcher/icons/DotRenderer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/zui/launcher/DeviceProfile;->mDotRenderer:Lcom/zui/launcher/icons/DotRenderer;

    iput-object v2, p0, Lcom/zui/launcher/ActiveIconView;->m:Lcom/zui/launcher/icons/DotRenderer;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/zui/launcher/dot/DotInfo;->getZuiDotCount()I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/zui/launcher/ActiveIconView;->m:Lcom/zui/launcher/icons/DotRenderer;

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-virtual {v4, p1, p0, v2, v3}, Lcom/zui/launcher/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/zui/launcher/icons/DotRenderer$DrawParams;ZI)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    return-void
.end method

.method public forceHideDot(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zui/launcher/ActiveIconView;->p:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/ActiveIconView;->d([F)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAcitveIconBmpByTitle(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object p0, Lcom/zui/launcher/ActiveIconUtil;->sActiveExistKeys:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/zui/launcher/ActiveIconUtil;->sActiveIconBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayType()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ActiveIconView;->s:I

    return p0
.end method

.method public getDummyIcon()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getDummyIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    return-object p0

    :cond_1
    new-instance v1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_2
    :goto_0
    new-instance v1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public getExtendedPaddingTop()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->A:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->isLayoutHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    sub-int v2, v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    move v3, v2

    move v2, v1

    move v1, v3

    :goto_0
    iget p0, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ActiveIconView;->getAcitveIconBmpByTitle(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->A:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->customGetDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    iget v0, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    :goto_2
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v3, v2, v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iput-object v3, p0, Lcom/zui/launcher/ActiveIconView;->A:Landroid/graphics/drawable/Drawable;

    return-object v3
.end method

.method public getIconHeight()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    return p0
.end method

.method public getIconSize()I
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->getIconWidth()I

    move-result p0

    return p0
.end method

.method public getIconWidth()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return p0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/ActiveIconView;->i:I

    return p0
.end method

.method public getRealView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTextAlpha()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ActiveIconView;->mTextAlpha:F

    return p0
.end method

.method public getViewTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isInViewTree(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isLayoutHorizontal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ActiveIconView;->q:Z

    return p0
.end method

.method public isTextVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ActiveIconView;->d:Z

    return p0
.end method

.method public synthetic o()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/ActiveIconView;->j(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->v:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->n()V

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->w:Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->a(Lcom/zui/launcher/WorkspaceItemInfo$b;)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/ActiveIconView;->j(Z)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActiveIconView onAttachedToWindow title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "test"

    invoke-static {v0, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActiveIconView onDetachedFromWindow title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "test"

    invoke-static {v0, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    iget-boolean v0, v0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3a000000

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const v3, 0x3affffff

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ThemedActiveIconContainer;

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    new-instance v1, Lcom/zui/launcher/ActiveIconView$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/ActiveIconView$a;-><init>(Lcom/zui/launcher/ActiveIconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget p0, p0, Lcom/zui/launcher/ActiveIconView;->j:I

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->r:Z

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/ActiveIconView;->r:Z

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->refreshDrawableState()V

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ActiveIconView;->u:Z

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, p0, v2, v3}, Lcom/zui/launcher/CheckLongPressHelper;->isContentRect(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/ActiveIconView;->setStayPressed(Z)V

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->f:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    move p0, p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->f:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/ActiveIconView;->setStayPressed(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public refreshDrawableState()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->r:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public refreshDummyIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/zui/launcher/ActiveIconUtil;->getActiveIconView(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/ItemInfoWithIcon;Lcom/zui/launcher/icons/IconCache;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/ActiveIconView;->applyFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V

    return-void
.end method

.method public refreshIcon()V
    .locals 0

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-virtual {v0}, Lcom/zui/launcher/ThemedActiveIconContainer;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public replaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/zui/launcher/ActiveIconUtil;->getActiveIconView(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/ItemInfoWithIcon;Lcom/zui/launcher/icons/IconCache;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/ActiveIconView;->applyFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/zui/launcher/ActiveIconView;->y:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconView;->setShadowsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/ActiveIconView;->l:Lcom/zui/launcher/dot/DotInfo;

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->color:I

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->f()V

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->n:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    const/4 v2, 0x0

    iput v2, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    iput-boolean v1, p0, Lcom/zui/launcher/ActiveIconView;->p:Z

    return-void
.end method

.method public resetIconView()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setBlankIconView()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setDrawableVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/zui/launcher/ActiveIconView;->p:Z

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->a:Lcom/zui/launcher/ThemedActiveIconContainer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setInDock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/ActiveIconView;->y:Z

    return-void
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->f:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    return-void
.end method

.method public setShadowsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ActiveIconView;->t:Z

    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method setStayPressed(Z)V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 2

    iput p1, p0, Lcom/zui/launcher/ActiveIconView;->mTextAlpha:F

    invoke-direct {p0}, Lcom/zui/launcher/ActiveIconView;->getModifiedColor()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconView;->setTextVisibility(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iput p1, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->isTextVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/zui/launcher/ActiveIconView;->d:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/zui/launcher/ActiveIconView;->s:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    iget v1, v1, Lcom/zui/launcher/Launcher;->mTextColor:I

    :goto_0
    iput v1, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/ActiveIconView;->c:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :goto_1
    return-void
.end method

.method public shouldTextBeVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/XDockViewLayout;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x65

    if-eq p0, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ActiveIconView;->g:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public verifyHighRes()V
    .locals 0

    return-void
.end method
