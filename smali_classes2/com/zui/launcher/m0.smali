.class public final synthetic Lcom/zui/launcher/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/GlobalSearchView;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/m0;->a:Lcom/zui/launcher/GlobalSearchView;

    iput-object p2, p0, Lcom/zui/launcher/m0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/m0;->a:Lcom/zui/launcher/GlobalSearchView;

    iget-object p0, p0, Lcom/zui/launcher/m0;->b:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/GlobalSearchView;->E0(Ljava/util/List;)V

    return-void
.end method
