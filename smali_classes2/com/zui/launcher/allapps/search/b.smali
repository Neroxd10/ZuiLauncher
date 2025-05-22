.class public final synthetic Lcom/zui/launcher/allapps/search/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/search/RecommendRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/search/RecommendRowView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/b;->a:Lcom/zui/launcher/allapps/search/RecommendRowView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/b;->a:Lcom/zui/launcher/allapps/search/RecommendRowView;

    invoke-static {p0}, Lcom/zui/launcher/allapps/search/RecommendRowView;->d(Lcom/zui/launcher/allapps/search/RecommendRowView;)V

    return-void
.end method
