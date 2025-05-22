.class public final synthetic Lcom/zui/launcher/icons/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/IconCache;

.field public final synthetic b:Lcom/zui/launcher/ItemInfoWithIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/IconCache;Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/m;->a:Lcom/zui/launcher/icons/IconCache;

    iput-object p2, p0, Lcom/zui/launcher/icons/m;->b:Lcom/zui/launcher/ItemInfoWithIcon;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/m;->a:Lcom/zui/launcher/icons/IconCache;

    iget-object p0, p0, Lcom/zui/launcher/icons/m;->b:Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/icons/IconCache;->u(Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method
