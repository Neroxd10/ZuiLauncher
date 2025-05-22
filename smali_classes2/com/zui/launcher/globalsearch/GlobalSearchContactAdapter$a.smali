.class Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a;
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

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
