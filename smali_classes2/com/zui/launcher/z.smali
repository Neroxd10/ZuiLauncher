.class public final synthetic Lcom/zui/launcher/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/GlobalSearchView$b;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/GlobalSearchView$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/z;->a:Lcom/zui/launcher/GlobalSearchView$b;

    return-void
.end method


# virtual methods
.method public final onItemClick(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/z;->a:Lcom/zui/launcher/GlobalSearchView$b;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/GlobalSearchView$b;->a(Ljava/lang/String;)V

    return-void
.end method
