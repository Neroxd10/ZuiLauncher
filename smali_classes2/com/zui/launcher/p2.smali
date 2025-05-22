.class public final synthetic Lcom/zui/launcher/p2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Workspace$ItemOperator;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Workspace$ItemOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/p2;->a:Lcom/zui/launcher/Workspace$ItemOperator;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/p2;->a:Lcom/zui/launcher/Workspace$ItemOperator;

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/Workspace;->p0(Lcom/zui/launcher/Workspace$ItemOperator;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
