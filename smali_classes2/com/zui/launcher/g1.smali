.class public final synthetic Lcom/zui/launcher/g1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/g1;->a:Lcom/zui/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/g1;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->C1(I)V

    return-void
.end method
