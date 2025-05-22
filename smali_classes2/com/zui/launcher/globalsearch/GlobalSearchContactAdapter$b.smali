.class Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->getKeyKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/GlobalSearchView;->saveKeywordHistory(Ljava/lang/String;)V

    const-string p1, "Contacts"

    const-string v0, "GSContactsCall"

    const-string v1, "\u547c\u53eb\u8054\u7cfb\u4eba"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Launcher;->callPhone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
