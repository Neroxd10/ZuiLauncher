.class public final synthetic Lcom/zui/launcher/appprediction/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/appprediction/AllAppsTipView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/appprediction/AllAppsTipView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appprediction/b;->a:Lcom/zui/launcher/appprediction/AllAppsTipView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/b;->a:Lcom/zui/launcher/appprediction/AllAppsTipView;

    invoke-virtual {p0}, Lcom/zui/launcher/appprediction/AllAppsTipView;->d()V

    return-void
.end method
