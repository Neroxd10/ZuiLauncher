.class public final synthetic Lcom/zui/launcher/folder/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/folder/PreviewBackground;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/folder/PreviewBackground;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/b;->a:Lcom/zui/launcher/folder/PreviewBackground;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/b;->a:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-static {p0}, Lcom/zui/launcher/folder/PreviewBackground;->w(Lcom/zui/launcher/folder/PreviewBackground;)V

    return-void
.end method
