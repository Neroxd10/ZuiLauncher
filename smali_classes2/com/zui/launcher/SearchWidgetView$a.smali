.class Lcom/zui/launcher/SearchWidgetView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/SearchWidgetView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/SearchWidgetView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/SearchWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/SearchWidgetView$a;->a:Lcom/zui/launcher/SearchWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/Utilities;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView$a;->a:Lcom/zui/launcher/SearchWidgetView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->onFlingShowGlobalSearch()V

    const/4 p0, 0x1

    const-string p1, "Enter"

    const-string v0, "EnterGSWidget"

    const-string v1, "\u684c\u9762Weight "

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method
