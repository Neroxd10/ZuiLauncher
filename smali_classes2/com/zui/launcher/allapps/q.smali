.class public final synthetic Lcom/zui/launcher/allapps/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/q;->a:Lcom/zui/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/q;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->c(Lcom/zui/launcher/Launcher;)V

    return-void
.end method
