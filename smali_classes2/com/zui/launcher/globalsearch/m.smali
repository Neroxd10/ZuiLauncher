.class public final synthetic Lcom/zui/launcher/globalsearch/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/m;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    return-void
.end method


# virtual methods
.method public final onSmsItemClick(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/m;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->f(Ljava/lang/String;)V

    return-void
.end method
