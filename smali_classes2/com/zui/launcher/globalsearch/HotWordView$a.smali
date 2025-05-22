.class Lcom/zui/launcher/globalsearch/HotWordView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/HotWordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/HotWordView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/HotWordView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordView$a;->a:Lcom/zui/launcher/globalsearch/HotWordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordView$a;->a:Lcom/zui/launcher/globalsearch/HotWordView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/HotWordView;->a(Lcom/zui/launcher/globalsearch/HotWordView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const-string v0, "Hotwords"

    const-string v1, "GSHotwordsRefresh"

    const-string v2, "\u70ed\u95e8\u641c\u7d22\u5237\u65b0"

    invoke-static {v0, v1, v2, p1}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordView$a;->a:Lcom/zui/launcher/globalsearch/HotWordView;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/HotWordView;->b(Lcom/zui/launcher/globalsearch/HotWordView;)Lcom/zui/launcher/globalsearch/HotWordAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->clickRefresh()V

    return-void
.end method
