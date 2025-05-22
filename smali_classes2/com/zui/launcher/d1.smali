.class public final synthetic Lcom/zui/launcher/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherModel$Callbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/d1;->a:Lcom/zui/launcher/LauncherModel$Callbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/d1;->a:Lcom/zui/launcher/LauncherModel$Callbacks;

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->clearPendingBinds()V

    return-void
.end method
