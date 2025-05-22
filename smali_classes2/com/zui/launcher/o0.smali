.class public final synthetic Lcom/zui/launcher/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/o0;->a:Lcom/zui/launcher/GlobalSearchView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/o0;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->D0()V

    return-void
.end method
