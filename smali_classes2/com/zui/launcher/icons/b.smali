.class public final synthetic Lcom/zui/launcher/icons/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/b;->a:Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/b;->a:Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;

    check-cast p1, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-interface {p0, p1}, Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;->reapplyItemInfo(Lcom/zui/launcher/ItemInfoWithIcon;)V

    return-void
.end method
