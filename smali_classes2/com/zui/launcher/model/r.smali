.class public final synthetic Lcom/zui/launcher/model/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/r;->a:Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/r;->a:Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BgDataModel$FixedContainerItems;->a(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method
