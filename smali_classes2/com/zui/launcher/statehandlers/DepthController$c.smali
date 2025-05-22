.class Lcom/zui/launcher/statehandlers/DepthController$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/statehandlers/DepthController;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/statehandlers/DepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController$c;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController$c;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-static {p1}, Lcom/zui/launcher/statehandlers/DepthController;->c(Lcom/zui/launcher/statehandlers/DepthController;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/DepthController$c;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-static {v0}, Lcom/zui/launcher/statehandlers/DepthController;->d(Lcom/zui/launcher/statehandlers/DepthController;)Lcom/android/systemui/shared/system/WallpaperManagerCompat;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController$c;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-static {p0}, Lcom/zui/launcher/statehandlers/DepthController;->b(Lcom/zui/launcher/statehandlers/DepthController;)F

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/shared/system/WallpaperManagerCompat;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController$c;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-static {p0}, Lcom/zui/launcher/statehandlers/DepthController;->e(Lcom/zui/launcher/statehandlers/DepthController;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/CrossWindowBlurListeners;->removeListener(Ljava/util/function/Consumer;)V

    return-void
.end method
