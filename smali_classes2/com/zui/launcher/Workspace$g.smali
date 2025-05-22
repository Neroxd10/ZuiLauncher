.class Lcom/zui/launcher/Workspace$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->getFirstMatch(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Workspace$ItemOperator;

.field final synthetic b:[Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/Workspace$ItemOperator;[Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$g;->c:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$g;->a:Lcom/zui/launcher/Workspace$ItemOperator;

    iput-object p3, p0, Lcom/zui/launcher/Workspace$g;->b:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Workspace$g;->a:Lcom/zui/launcher/Workspace$ItemOperator;

    invoke-interface {v0, p1, p2}, Lcom/zui/launcher/Workspace$ItemOperator;->evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$g;->b:[Landroid/view/View;

    aput-object p2, p0, v0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
