.class public final synthetic Lcom/zui/quickstep/w1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/w1;->a:Lcom/zui/launcher/LauncherStateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/w1;->a:Lcom/zui/launcher/LauncherStateManager;

    invoke-static {p0}, Lcom/zui/quickstep/TaskViewUtils$f;->a(Lcom/zui/launcher/LauncherStateManager;)V

    return-void
.end method
