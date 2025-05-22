.class public final synthetic Lcom/zui/launcher/icons/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/IconCache;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lcom/zui/launcher/ItemInfoWithIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/IconCache;Landroid/content/Intent;Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/o;->a:Lcom/zui/launcher/icons/IconCache;

    iput-object p2, p0, Lcom/zui/launcher/icons/o;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/zui/launcher/icons/o;->c:Lcom/zui/launcher/ItemInfoWithIcon;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/o;->a:Lcom/zui/launcher/icons/IconCache;

    iget-object v1, p0, Lcom/zui/launcher/icons/o;->b:Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/icons/o;->c:Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/icons/IconCache;->r(Landroid/content/Intent;Lcom/zui/launcher/ItemInfoWithIcon;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method
