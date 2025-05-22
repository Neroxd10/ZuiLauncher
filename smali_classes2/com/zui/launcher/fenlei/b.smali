.class public final synthetic Lcom/zui/launcher/fenlei/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/fenlei/FenleiListView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/fenlei/FenleiListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/fenlei/b;->a:Lcom/zui/launcher/fenlei/FenleiListView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/b;->a:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/fenlei/FenleiListView;->d(Landroid/view/View;I)V

    return-void
.end method
