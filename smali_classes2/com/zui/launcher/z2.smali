.class public final synthetic Lcom/zui/launcher/z2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Workspace;

.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Workspace;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/z2;->a:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/z2;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/z2;->a:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/z2;->b:Ljava/util/function/Predicate;

    invoke-virtual {v0, p0, p1, p2}, Lcom/zui/launcher/Workspace;->w0(Ljava/util/function/Predicate;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
