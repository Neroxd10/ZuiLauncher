.class public final synthetic Lcom/zui/launcher/s2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# instance fields
.field public final synthetic a:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/s2;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/s2;->a:Ljava/util/HashSet;

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/Workspace;->x0(Ljava/util/HashSet;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
