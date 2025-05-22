.class public final synthetic Lcom/zui/launcher/x2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# instance fields
.field public final synthetic a:[Lcom/zui/launcher/Workspace$ItemOperator;

.field public final synthetic b:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>([Lcom/zui/launcher/Workspace$ItemOperator;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/x2;->a:[Lcom/zui/launcher/Workspace$ItemOperator;

    iput-object p2, p0, Lcom/zui/launcher/x2;->b:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/x2;->a:[Lcom/zui/launcher/Workspace$ItemOperator;

    iget-object p0, p0, Lcom/zui/launcher/x2;->b:[Landroid/view/View;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/Workspace;->m0([Lcom/zui/launcher/Workspace$ItemOperator;[Landroid/view/View;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
