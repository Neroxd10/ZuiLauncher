.class Lcom/zui/launcher/networksdk/api/JsonRequest$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/api/JsonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/api/JsonRequest;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/api/JsonRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$a;->a:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$a;->a:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->i(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$a;->a:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->h(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$a;->a:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->f(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$a;->a:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->g(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V

    :goto_0
    return-void
.end method
