.class Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/compat/LauncherAppsCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------LauncherAppscompatVL onPackageAdded------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
