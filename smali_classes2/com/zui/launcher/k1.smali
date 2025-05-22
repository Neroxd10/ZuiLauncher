.class public final synthetic Lcom/zui/launcher/k1;
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

    iput-object p1, p0, Lcom/zui/launcher/k1;->a:Lcom/zui/launcher/BubbleTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/k1;->a:Lcom/zui/launcher/BubbleTextView;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->F1(Lcom/zui/launcher/BubbleTextView;)V

    return-void
.end method
