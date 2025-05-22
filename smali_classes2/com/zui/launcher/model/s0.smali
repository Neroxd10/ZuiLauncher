.class public final synthetic Lcom/zui/launcher/model/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ModelWriter;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/zui/launcher/FolderInfo;

.field public final synthetic d:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ModelWriter;ZLcom/zui/launcher/FolderInfo;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/s0;->a:Lcom/zui/launcher/model/ModelWriter;

    iput-boolean p2, p0, Lcom/zui/launcher/model/s0;->b:Z

    iput-object p3, p0, Lcom/zui/launcher/model/s0;->c:Lcom/zui/launcher/FolderInfo;

    iput-object p4, p0, Lcom/zui/launcher/model/s0;->d:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/s0;->a:Lcom/zui/launcher/model/ModelWriter;

    iget-boolean v1, p0, Lcom/zui/launcher/model/s0;->b:Z

    iget-object v2, p0, Lcom/zui/launcher/model/s0;->c:Lcom/zui/launcher/FolderInfo;

    iget-object p0, p0, Lcom/zui/launcher/model/s0;->d:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/model/ModelWriter;->l(ZLcom/zui/launcher/FolderInfo;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
