.class public final synthetic Lcom/zui/launcher/i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/GlobalSearchView;

.field public final synthetic b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/globalsearch/HotWordDownLoad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/i0;->a:Lcom/zui/launcher/GlobalSearchView;

    iput-object p2, p0, Lcom/zui/launcher/i0;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/i0;->a:Lcom/zui/launcher/GlobalSearchView;

    iget-object p0, p0, Lcom/zui/launcher/i0;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/GlobalSearchView;->w0(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)V

    return-void
.end method
