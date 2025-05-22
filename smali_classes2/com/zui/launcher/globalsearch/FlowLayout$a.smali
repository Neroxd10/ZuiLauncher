.class Lcom/zui/launcher/globalsearch/FlowLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/FlowLayout;->addViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/globalsearch/FlowLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/FlowLayout;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$a;->c:Lcom/zui/launcher/globalsearch/FlowLayout;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/FlowLayout$a;->a:Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$a;->a:Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$a;->b:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    return-void
.end method
