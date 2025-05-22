.class public final synthetic Lcom/zui/launcher/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/BubbleTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/BubbleTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/l;->a:Lcom/zui/launcher/BubbleTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/l;->a:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->q()V

    return-void
.end method
