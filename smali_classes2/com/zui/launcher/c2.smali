.class public final synthetic Lcom/zui/launcher/c2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/c2;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/c2;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;

    invoke-virtual {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$a$a;->a()V

    return-void
.end method
