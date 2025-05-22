.class Lcom/zui/launcher/Launcher$a2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->T0(IILcom/zui/launcher/util/PendingRequestArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/util/PendingRequestArgs;

.field final synthetic c:Landroid/appwidget/AppWidgetHostView;

.field final synthetic d:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$a2;->d:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/Launcher$a2;->a:I

    iput-object p3, p0, Lcom/zui/launcher/Launcher$a2;->b:Lcom/zui/launcher/util/PendingRequestArgs;

    iput-object p4, p0, Lcom/zui/launcher/Launcher$a2;->c:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher$a2;->d:Lcom/zui/launcher/Launcher;

    iget v1, p0, Lcom/zui/launcher/Launcher$a2;->a:I

    iget-object v2, p0, Lcom/zui/launcher/Launcher$a2;->b:Lcom/zui/launcher/util/PendingRequestArgs;

    iget-object v3, p0, Lcom/zui/launcher/Launcher$a2;->c:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/launcher/Launcher;->P0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$a2;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$a2;->d:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->P(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_0
    return-void
.end method
