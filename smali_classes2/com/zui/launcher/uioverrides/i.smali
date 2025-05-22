.class public final synthetic Lcom/zui/launcher/uioverrides/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/LauncherRecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/LauncherRecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/i;->a:Lcom/zui/quickstep/views/LauncherRecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/i;->a:Lcom/zui/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void
.end method
