.class public final synthetic Lcom/zui/launcher/allapps/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/WorkModeSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/WorkModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/t;->a:Lcom/zui/launcher/allapps/WorkModeSwitch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/t;->a:Lcom/zui/launcher/allapps/WorkModeSwitch;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/WorkModeSwitch;->a()V

    return-void
.end method
