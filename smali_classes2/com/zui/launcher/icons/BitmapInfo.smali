.class public Lcom/zui/launcher/icons/BitmapInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/BitmapInfo$Extender;
    }
.end annotation


# static fields
.field public static final LOW_RES_ICON:Landroid/graphics/Bitmap;

.field public static final LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

.field public static final TAG:Ljava/lang/String; = "BitmapInfo"

.field protected static final TYPE_DEFAULT:B = 0x1t

.field protected static final TYPE_THEMED:B = 0x2t


# instance fields
.field public color:I

.field public icon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/zui/launcher/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public static fromByteArray([BILandroid/os/UserHandle;Lcom/zui/launcher/icons/cache/BaseIconCache;Landroid/content/Context;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/zui/launcher/icons/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object v5, v1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_0
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    array-length p2, p0

    sub-int/2addr p2, v3

    invoke-static {p0, v3, p2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0

    :cond_2
    aget-byte v1, p0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move-object v3, p0

    move v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;->a([BILandroid/graphics/BitmapFactory$Options;Landroid/os/UserHandle;Lcom/zui/launcher/icons/cache/BaseIconCache;Landroid/content/Context;)Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/zui/launcher/icons/BitmapInfo;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public static toByteArray(Lcom/zui/launcher/icons/BitmapInfo;)[B
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/zui/launcher/icons/GraphicsUtils;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "BitmapInfo"

    const-string v1, "Could not write bitmap"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public applyTo(Lcom/zui/launcher/icons/BitmapInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    iput p0, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    return-void
.end method

.method public final isLowRes()Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNullOrLowRes()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    if-ne p0, v0, :cond_0

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

.method public newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BitmapInfo;->isLowRes()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    :goto_0
    sget p0, Lcom/zui/launcher/icons/R$attr;->disabledIconAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v1}, Lcom/zui/launcher/icons/GraphicsUtils;->getFloat(Landroid/content/Context;IF)F

    move-result p0

    iput p0, v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->c:F

    return-object v0
.end method

.method public newThemedIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public toByteArray()[B
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/zui/launcher/icons/GraphicsUtils;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "BitmapInfo"

    const-string v0, "Could not write bitmap"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
