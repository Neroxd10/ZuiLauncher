.class public final synthetic Lcom/zui/launcher/model/z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ModelWriter;

.field public final synthetic b:Lcom/zui/launcher/ItemInfo;

.field public final synthetic c:Landroid/content/ContentResolver;

.field public final synthetic d:[Ljava/lang/StackTraceElement;

.field public final synthetic e:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/z0;->a:Lcom/zui/launcher/model/ModelWriter;

    iput-object p2, p0, Lcom/zui/launcher/model/z0;->b:Lcom/zui/launcher/ItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/model/z0;->c:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/zui/launcher/model/z0;->d:[Ljava/lang/StackTraceElement;

    iput-object p5, p0, Lcom/zui/launcher/model/z0;->e:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/model/z0;->a:Lcom/zui/launcher/model/ModelWriter;

    iget-object v1, p0, Lcom/zui/launcher/model/z0;->b:Lcom/zui/launcher/ItemInfo;

    iget-object v2, p0, Lcom/zui/launcher/model/z0;->c:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/launcher/model/z0;->d:[Ljava/lang/StackTraceElement;

    iget-object p0, p0, Lcom/zui/launcher/model/z0;->e:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/launcher/model/ModelWriter;->k(Lcom/zui/launcher/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
