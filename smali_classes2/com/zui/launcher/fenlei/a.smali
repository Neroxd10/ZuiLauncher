.class public final synthetic Lcom/zui/launcher/fenlei/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/fenlei/FenleiListView$a;

.field public final synthetic b:Lcom/zui/launcher/fenlei/FenleiListView$c;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/fenlei/FenleiListView$a;Lcom/zui/launcher/fenlei/FenleiListView$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/fenlei/a;->a:Lcom/zui/launcher/fenlei/FenleiListView$a;

    iput-object p2, p0, Lcom/zui/launcher/fenlei/a;->b:Lcom/zui/launcher/fenlei/FenleiListView$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/fenlei/a;->a:Lcom/zui/launcher/fenlei/FenleiListView$a;

    iget-object p0, p0, Lcom/zui/launcher/fenlei/a;->b:Lcom/zui/launcher/fenlei/FenleiListView$c;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/fenlei/FenleiListView$a;->a(Lcom/zui/launcher/fenlei/FenleiListView$c;Landroid/view/View;)V

    return-void
.end method
