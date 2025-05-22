.class public final synthetic Lcom/zui/launcher/uioverrides/states/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/states/a;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/uioverrides/states/a;->b:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/states/a;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/states/a;->b:Lcom/zui/quickstep/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/uioverrides/states/QuickSwitchState;->b(Lcom/zui/launcher/Launcher;Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method
