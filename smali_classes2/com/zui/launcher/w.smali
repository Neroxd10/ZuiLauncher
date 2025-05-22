.class public final synthetic Lcom/zui/launcher/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/ExtendedEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/ExtendedEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/w;->a:Lcom/zui/launcher/ExtendedEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/w;->a:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->a()V

    return-void
.end method
