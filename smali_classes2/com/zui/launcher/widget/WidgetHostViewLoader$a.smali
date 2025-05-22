.class Lcom/zui/launcher/widget/WidgetHostViewLoader$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/WidgetHostViewLoader;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/zui/launcher/widget/WidgetHostViewLoader;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/WidgetHostViewLoader;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->c:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->a:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iput-object p3, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->c:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v1, v0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    new-instance v0, Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->c:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->c:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget v1, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->a:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iget-object v3, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/launcher/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;->c:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->d:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
