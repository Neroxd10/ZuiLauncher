.class Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->b(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;->c:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "Contacts"

    const-string v0, "GSContactsClick"

    const-string v1, "\u67e5\u770b\u8054\u7cfb\u4eba\u8be6\u60c5"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;->c:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;->c:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;->b:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/GlobalSearchView;->itemClickMethod(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
