.class public Lcom/zui/launcher/graphics/DrawableFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/graphics/DrawableFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mMyUser:Landroid/os/UserHandle;

.field protected final mUserBadges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zui/launcher/graphics/DrawableFactory;

    const v1, 0x7f120338

    invoke-static {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->forOverride(Ljava/lang/Class;I)Lcom/zui/launcher/util/MainThreadInitializedObject;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/graphics/DrawableFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/graphics/DrawableFactory;->mMyUser:Landroid/os/UserHandle;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/DrawableFactory;->mUserBadges:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public getBadgeForUser(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/graphics/DrawableFactory;->mMyUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/graphics/DrawableFactory;->getUserBadge(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {p1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1
.end method

.method protected declared-synchronized getUserBadge(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/graphics/DrawableFactory;->mUserBadges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v3, p1, v0, v4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p2, p0, Lcom/zui/launcher/graphics/DrawableFactory;->mUserBadges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public newIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 1

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;

    iget-object v0, p2, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    iget-object p1, p2, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    :goto_0
    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfoWithIcon;->isDisabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    return-object p0
.end method

.method public newIcon(Landroid/content/Context;Lcom/zui/launcher/icons/BitmapInfo;Landroid/content/pm/ActivityInfo;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 0

    invoke-virtual {p2}, Lcom/zui/launcher/icons/BitmapInfo;->isLowRes()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {p0, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    :goto_0
    return-object p0
.end method

.method public newIcon(Landroid/graphics/Bitmap;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 0

    new-instance p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfoWithIcon;->isDisabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    return-object p0
.end method

.method public newPendingIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/graphics/PreloadIconDrawable;
    .locals 0

    new-instance p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;-><init>(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/Context;)V

    return-object p0
.end method
