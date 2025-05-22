.class public final synthetic Lcom/zui/launcher/model/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/BgDataModel;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/BgDataModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/t;->a:Lcom/zui/launcher/model/BgDataModel;

    iput-object p2, p0, Lcom/zui/launcher/model/t;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/t;->a:Lcom/zui/launcher/model/BgDataModel;

    iget-object p0, p0, Lcom/zui/launcher/model/t;->b:Landroid/content/Context;

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/model/BgDataModel;->b(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method
