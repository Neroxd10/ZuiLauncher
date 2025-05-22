.class Lcom/zui/launcher/EditViewPanel$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/EditViewPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Lcom/zui/launcher/EditViewPanel;


# direct methods
.method constructor <init>(Lcom/zui/launcher/EditViewPanel;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/EditViewPanel$a;->b:Lcom/zui/launcher/EditViewPanel;

    iput-object p2, p0, Lcom/zui/launcher/EditViewPanel$a;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/EditViewPanel$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/EditViewPanel$a;->b:Lcom/zui/launcher/EditViewPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/views/OptionsPopupView;->startWallpaperPicker(Landroid/view/View;)Z

    const/4 p0, 0x0

    const-string p1, "Desktop"

    const-string v0, "ClickWallpaperaccess"

    const-string v1, "Wallpaper"

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
