.class Lcom/zui/launcher/Launcher$x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->W0(Lcom/zui/launcher/LauncherAppWidgetInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherAppWidgetInfo;

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$x0;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$x0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x0;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->O(Lcom/zui/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "DummyAppWidgetView"

    const-string v0, "handleDummyAppWidget  click "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x0;->b:Lcom/zui/launcher/Launcher;

    const p1, 0x7f12034b

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "handleDummyAppWidget  start "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x0;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x0;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-static {p1, p0}, Lcom/zui/launcher/Launcher;->Q(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    :goto_0
    return-void
.end method
