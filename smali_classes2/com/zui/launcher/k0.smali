.class public final synthetic Lcom/zui/launcher/k0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/GlobalSearchView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/k0;->a:Lcom/zui/launcher/GlobalSearchView;

    iput-object p2, p0, Lcom/zui/launcher/k0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/k0;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/k0;->a:Lcom/zui/launcher/GlobalSearchView;

    iget-object v1, p0, Lcom/zui/launcher/k0;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/k0;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/GlobalSearchView;->q0(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
