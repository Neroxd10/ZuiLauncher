.class public final synthetic Lcom/zui/launcher/folder/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/a;->a:Lcom/zui/launcher/folder/Folder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/a;->a:Lcom/zui/launcher/folder/Folder;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->r(Lcom/zui/launcher/folder/Folder;)V

    return-void
.end method
