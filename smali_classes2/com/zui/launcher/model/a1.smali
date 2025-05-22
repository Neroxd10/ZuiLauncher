.class public final synthetic Lcom/zui/launcher/model/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

.field public final synthetic b:Lcom/zui/launcher/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/LauncherAppWidgetHost;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/a1;->a:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    iput-object p2, p0, Lcom/zui/launcher/model/a1;->b:Lcom/zui/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/a1;->a:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    iget-object p0, p0, Lcom/zui/launcher/model/a1;->b:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, p0}, Lcom/zui/launcher/model/ModelWriter;->p(Lcom/zui/launcher/widget/LauncherAppWidgetHost;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method
