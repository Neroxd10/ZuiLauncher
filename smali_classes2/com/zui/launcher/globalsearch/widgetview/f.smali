.class public final synthetic Lcom/zui/launcher/globalsearch/widgetview/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/f;->a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/f;->a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->j(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
