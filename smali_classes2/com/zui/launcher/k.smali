.class public final synthetic Lcom/zui/launcher/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/BaseDraggingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/k;->a:Lcom/zui/launcher/BaseDraggingActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/k;->a:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {p0}, Lcom/zui/launcher/BaseDraggingActivity;->a(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method
