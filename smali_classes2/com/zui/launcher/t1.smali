.class public final synthetic Lcom/zui/launcher/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherAppState;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherAppState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/t1;->a:Lcom/zui/launcher/LauncherAppState;

    iput-object p2, p0, Lcom/zui/launcher/t1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/t1;->a:Lcom/zui/launcher/LauncherAppState;

    iget-object p0, p0, Lcom/zui/launcher/t1;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherAppState;->b(Landroid/content/Context;)V

    return-void
.end method
