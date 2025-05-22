.class public final synthetic Lcom/zui/launcher/v0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/zui/launcher/InstallShortcutReceiver$d;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/v0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/v0;->b:Lcom/zui/launcher/InstallShortcutReceiver$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/v0;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/v0;->b:Lcom/zui/launcher/InstallShortcutReceiver$d;

    invoke-static {v0, p0}, Lcom/zui/launcher/InstallShortcutReceiver;->n(Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$d;)V

    return-void
.end method
