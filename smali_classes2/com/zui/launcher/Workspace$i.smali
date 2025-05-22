.class Lcom/zui/launcher/Workspace$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$i;->b:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$i;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p2, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$i;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    const/16 p0, 0x64

    iput p0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->installProgress:I

    check-cast p2, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->applyState()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
