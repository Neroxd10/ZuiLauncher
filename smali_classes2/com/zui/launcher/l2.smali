.class public final synthetic Lcom/zui/launcher/l2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/l2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/l2;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/l2;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/l2;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->o(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
