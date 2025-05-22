.class public final synthetic Lcom/zui/quickstep/x1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/LauncherStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/x1;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/x1;->b:Lcom/zui/launcher/LauncherStateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/x1;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/zui/quickstep/x1;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-static {v0, p0}, Lcom/zui/quickstep/TaskViewUtils$f;->b(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/LauncherStateManager;)V

    return-void
.end method
