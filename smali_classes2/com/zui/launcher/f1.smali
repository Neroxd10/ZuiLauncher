.class public final synthetic Lcom/zui/launcher/f1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher$u0;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher$u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/f1;->a:Lcom/zui/launcher/Launcher$u0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/f1;->a:Lcom/zui/launcher/Launcher$u0;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher$u0;->b()V

    return-void
.end method
