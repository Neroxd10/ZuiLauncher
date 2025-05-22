.class Lcom/zui/launcher/Launcher$v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->f(Lcom/zui/launcher/Launcher;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1, v3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v4, 0x0

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1, v3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Lcom/zui/launcher/views/ScrimView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1, v3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Lcom/zui/launcher/views/ScrimView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/Launcher$v;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->galleryWidgetsSend()V

    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method
