.class public Lcom/zui/launcher/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;
.super Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentWithIconCachingLogic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic<",
        "Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadIcon(Landroid/content/Context;Lcom/zui/launcher/icons/ComponentWithLabel;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;->loadIcon(Landroid/content/Context;Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;->getFullResIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->loadIcon(Landroid/content/Context;Lcom/zui/launcher/icons/ComponentWithLabel;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    :try_start_0
    invoke-interface {p2}, Lcom/zui/launcher/icons/ComponentWithLabel;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;->loadIcon(Landroid/content/Context;Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
