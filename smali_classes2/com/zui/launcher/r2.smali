.class public final synthetic Lcom/zui/launcher/r2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# instance fields
.field public final synthetic a:Ljava/util/HashSet;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/r2;->a:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/zui/launcher/r2;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/r2;->a:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/zui/launcher/r2;->b:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/Workspace;->y0(Ljava/util/HashSet;Ljava/util/ArrayList;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
