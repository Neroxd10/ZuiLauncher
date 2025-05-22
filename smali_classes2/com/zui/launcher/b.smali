.class public final synthetic Lcom/zui/launcher/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/ActiveIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/ActiveIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/b;->a:Lcom/zui/launcher/ActiveIconView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/b;->a:Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconView;->o()V

    return-void
.end method
