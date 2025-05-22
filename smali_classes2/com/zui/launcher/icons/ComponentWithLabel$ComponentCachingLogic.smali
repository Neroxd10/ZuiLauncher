.class public Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/cache/CachingLogic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ComponentWithLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentCachingLogic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/zui/launcher/icons/ComponentWithLabel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zui/launcher/icons/cache/CachingLogic<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private final b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->a:Landroid/content/pm/PackageManager;

    iput-boolean p2, p0, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->b:Z

    return-void
.end method


# virtual methods
.method public addToMemCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->b:Z

    return p0
.end method

.method public getComponent(Lcom/zui/launcher/icons/ComponentWithLabel;)Landroid/content/ComponentName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/zui/launcher/icons/ComponentWithLabel;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 0

    check-cast p1, Lcom/zui/launcher/icons/ComponentWithLabel;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->getComponent(Lcom/zui/launcher/icons/ComponentWithLabel;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Lcom/zui/launcher/icons/ComponentWithLabel;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->a:Landroid/content/pm/PackageManager;

    invoke-interface {p1, p0}, Lcom/zui/launcher/icons/ComponentWithLabel;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Lcom/zui/launcher/icons/ComponentWithLabel;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->getLabel(Lcom/zui/launcher/icons/ComponentWithLabel;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUser(Lcom/zui/launcher/icons/ComponentWithLabel;)Landroid/os/UserHandle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/zui/launcher/icons/ComponentWithLabel;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .locals 0

    check-cast p1, Lcom/zui/launcher/icons/ComponentWithLabel;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->getUser(Lcom/zui/launcher/icons/ComponentWithLabel;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Lcom/zui/launcher/icons/ComponentWithLabel;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;Z)",
            "Lcom/zui/launcher/icons/BitmapInfo;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    return-object p0
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0

    check-cast p2, Lcom/zui/launcher/icons/ComponentWithLabel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;->loadIcon(Landroid/content/Context;Lcom/zui/launcher/icons/ComponentWithLabel;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
