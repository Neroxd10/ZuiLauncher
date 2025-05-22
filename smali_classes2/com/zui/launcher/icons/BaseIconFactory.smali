.class public Lcom/zui/launcher/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;
    }
.end annotation


# static fields
.field static final o:Z

.field static final p:Z

.field private static q:I


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Canvas;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Lcom/zui/launcher/icons/ColorExtractor;

.field private e:Z

.field private f:Z

.field private g:Lcom/zui/launcher/icons/IconNormalizer;

.field private h:Lcom/zui/launcher/icons/ShadowGenerator;

.field private final i:Z

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private final m:Landroid/graphics/Paint;

.field protected final mContext:Landroid/content/Context;

.field protected final mFillResIconDpi:I

.field protected final mIconBitmapSize:I

.field protected final mIconBitmapVisualSize:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/zui/launcher/icons/BaseIconFactory;->p:Z

    const/16 v0, 0xf0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/zui/launcher/icons/BaseIconFactory;->q:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZIZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIZIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->f:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->k:I

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->m:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->n:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/zui/launcher/icons/BaseIconFactory;->i:Z

    iput p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mFillResIconDpi:I

    iput p3, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->c:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/zui/launcher/icons/ColorExtractor;

    invoke-direct {p1}, Lcom/zui/launcher/icons/ColorExtractor;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->d:Lcom/zui/launcher/icons/ColorExtractor;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p3, 0x4

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->clear()V

    iput p5, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapVisualSize:I

    iput-boolean p6, p0, Lcom/zui/launcher/icons/BaseIconFactory;->n:Z

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->e:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->d:Lcom/zui/launcher/icons/ColorExtractor;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private d(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    sget-boolean p2, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->j:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    sget v1, Lcom/zui/launcher/icons/R$drawable;->adaptive_icon_drawable_wrapper:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->j:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->j:Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x1

    invoke-virtual {p2, v2, v2, v1, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    new-array v1, v1, [Z

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getNormalizer()Lcom/zui/launcher/icons/IconNormalizer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, p1, p3, v4, v1}, Lcom/zui/launcher/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    instance-of v4, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v4, :cond_2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/icons/FixedScaleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Lcom/zui/launcher/icons/FixedScaleDrawable;->setScale(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getNormalizer()Lcom/zui/launcher/icons/IconNormalizer;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/zui/launcher/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    iget p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->k:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    move-object p1, p2

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v3, p0

    if-eqz p0, :cond_4

    const p0, 0x3f6f1aa0    # 0.934f

    mul-float/2addr v3, p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getNormalizer()Lcom/zui/launcher/icons/IconNormalizer;

    move-result-object p0

    invoke-virtual {p0, p1, p3, v0, v0}, Lcom/zui/launcher/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    :cond_4
    :goto_0
    aput v3, p4, v2

    return-object p1
.end method

.method public static getBadgeSizeForIconSize(I)I
    .locals 1

    int-to-float p0, p0

    const v0, 0x3ee353f8    # 0.444f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const v1, 0x1080093

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10d0000

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic b(Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/BitmapInfo;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getShadowGenerator()Lcom/zui/launcher/icons/ShadowGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/zui/launcher/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    new-instance p1, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    iget-object p2, p2, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p3, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public badgeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    new-instance v1, Lcom/zui/launcher/icons/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/icons/d;-><init>(Lcom/zui/launcher/icons/BaseIconFactory;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v0, v1}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/icons/ColorExtractor;

    invoke-direct {p1}, Lcom/zui/launcher/icons/ColorExtractor;-><init>()V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public badgeBitmap(Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/BitmapInfo;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    new-instance v1, Lcom/zui/launcher/icons/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/icons/c;-><init>(Lcom/zui/launcher/icons/BaseIconFactory;Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-static {v0, v0, v1}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget p1, p2, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {p0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public badgeWithDrawable(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/launcher/icons/R$dimen;->profile_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    sub-int v2, p0, v0

    invoke-virtual {p2, v1, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    sub-int v1, p0, v0

    sub-int v0, p0, v0

    invoke-virtual {p2, v1, v0, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public synthetic c(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getShadowGenerator()Lcom/zui/launcher/icons/ShadowGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/zui/launcher/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    new-instance p1, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {p1, p2}, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p3, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->e:Z

    iput-boolean v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->f:Z

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZZ)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ[FZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ[FZ)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 7

    sget-boolean v0, Lcom/zui/launcher/icons/BaseIconFactory;->p:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    move v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ[FZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ[FZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ[FZ)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 8

    if-nez p5, :cond_0

    const/4 p5, 0x1

    new-array p5, p5, [F

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p5}, Lcom/zui/launcher/icons/BaseIconFactory;->d(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p6, :cond_1

    iget-boolean p6, p0, Lcom/zui/launcher/icons/BaseIconFactory;->n:Z

    if-nez p6, :cond_1

    aput p3, p5, v1

    :cond_1
    aget p6, p5, v1

    invoke-virtual {p0, p1, p6}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p6

    sget-boolean v2, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    if-eqz v2, :cond_2

    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {v2, p6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getShadowGenerator()Lcom/zui/launcher/icons/ShadowGenerator;

    move-result-object v2

    invoke-static {p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3, v4}, Lcom/zui/launcher/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    sget v0, Lcom/zui/launcher/icons/R$drawable;->ic_instant_app_badge:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p6, p4}, Lcom/zui/launcher/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p2, :cond_7

    iget-boolean p4, p0, Lcom/zui/launcher/icons/BaseIconFactory;->n:Z

    if-nez p4, :cond_5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p3, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {p3, p6}, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p6

    goto :goto_2

    :cond_5
    :goto_0
    new-instance p4, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {p4, p6}, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p6, p0, Lcom/zui/launcher/icons/BaseIconFactory;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p6, p4, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    instance-of p6, p4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p6, :cond_6

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p4, p3}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_1
    move-object p6, p3

    :cond_7
    :goto_2
    move-object v3, p6

    invoke-direct {p0, v3}, Lcom/zui/launcher/icons/BaseIconFactory;->a(Landroid/graphics/Bitmap;)I

    move-result v4

    instance-of p3, p1, Lcom/zui/launcher/icons/BitmapInfo$Extender;

    if-eqz p3, :cond_8

    move-object v2, p1

    check-cast v2, Lcom/zui/launcher/icons/BitmapInfo$Extender;

    aget v6, p5, v1

    move-object v5, p0

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/zui/launcher/icons/BitmapInfo$Extender;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/zui/launcher/icons/BaseIconFactory;FLandroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-static {v3, v4}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v1, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_2

    const/high16 v1, 0x3d000000    # 0.03125f

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    instance-of p2, p1, Lcom/zui/launcher/icons/BitmapInfo$Extender;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/icons/BitmapInfo$Extender;

    iget-object p3, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-interface {p2, p3}, Lcom/zui/launcher/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_5

    if-lez v2, :cond_5

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    if-le v1, v2, :cond_4

    int-to-float v1, p3

    div-float/2addr v1, v3

    float-to-int v1, v1

    move v2, v1

    move v1, p3

    goto :goto_0

    :cond_4
    if-le v2, v1, :cond_5

    int-to-float v1, p3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    move v2, p3

    goto :goto_0

    :cond_5
    move v1, p3

    move v2, v1

    :goto_0
    sub-int v3, p3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p3, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-virtual {v1, p2, p2, p3, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    iget-object p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->b:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->c:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget v2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public createIconBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->a(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createIconBitmap(Ljava/lang/String;I)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->m:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/launcher/icons/BaseIconFactory;->m:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/zui/launcher/icons/BaseIconFactory;->q:I

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p1, p2, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->a(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/icons/BaseIconFactory;->p:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/launcher/icons/BaseIconFactory;->d(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    aget p2, v1, p2

    invoke-static {v0}, Lcom/zui/launcher/icons/ShadowGenerator;->getScaleForBounds(Landroid/graphics/RectF;)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createShapedIconBitmap(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 8

    new-instance v1, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sget-boolean p1, Lcom/zui/launcher/icons/BaseIconFactory;->o:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    div-float v5, p1, v2

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, v7

    move v2, v5

    move v3, v5

    move v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-direct {p1, v6, v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, v1, p2, p1, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public disableColorExtraction()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->e:Z

    return-void
.end method

.method public getNormalizer()Lcom/zui/launcher/icons/IconNormalizer;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->g:Lcom/zui/launcher/icons/IconNormalizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/icons/IconNormalizer;

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, p0, Lcom/zui/launcher/icons/BaseIconFactory;->i:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->g:Lcom/zui/launcher/icons/IconNormalizer;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->g:Lcom/zui/launcher/icons/IconNormalizer;

    return-object p0
.end method

.method public getShadowGenerator()Lcom/zui/launcher/icons/ShadowGenerator;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->h:Lcom/zui/launcher/icons/ShadowGenerator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/icons/ShadowGenerator;

    iget v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {v0, v1}, Lcom/zui/launcher/icons/ShadowGenerator;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->h:Lcom/zui/launcher/icons/ShadowGenerator;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->h:Lcom/zui/launcher/icons/ShadowGenerator;

    return-object p0
.end method

.method public getUserBadgeBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->c:Landroid/content/pm/PackageManager;

    new-instance v2, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v2, v0}, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/icons/y;

    invoke-direct {v1, p1}, Lcom/zui/launcher/icons/y;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v0, v1}, Lcom/zui/launcher/icons/BitmapRenderer;->createSoftwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->l:Landroid/graphics/Bitmap;

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public makeDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 3

    iget v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-static {v0}, Lcom/zui/launcher/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public setBadgeOnLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->f:Z

    return-void
.end method

.method public setWrapperBackgroundColor(I)V
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->k:I

    return-void
.end method
