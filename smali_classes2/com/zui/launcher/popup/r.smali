.class public final synthetic Lcom/zui/launcher/popup/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/r;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iput-object p2, p0, Lcom/zui/launcher/popup/r;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/r;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iget-object p0, p0, Lcom/zui/launcher/popup/r;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/zui/launcher/popup/PopupPopulator;->b(Lcom/zui/launcher/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-void
.end method
