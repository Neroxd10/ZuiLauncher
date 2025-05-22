.class public final synthetic Lcom/zui/launcher/o1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/o1;->a:Lcom/zui/launcher/LauncherAnimationRunner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/o1;->a:Lcom/zui/launcher/LauncherAnimationRunner;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAnimationRunner;->c()V

    return-void
.end method
