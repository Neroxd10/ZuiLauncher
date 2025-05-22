.class public final synthetic Lcom/zui/launcher/t2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/t2;->a:Lcom/zui/launcher/Workspace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/t2;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->k0()V

    return-void
.end method
