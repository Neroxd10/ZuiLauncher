.class Lcom/zui/launcher/IconCreateFactory$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/IconCreateFactory$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/launcher/util/IntArray;

.field final synthetic c:[I

.field final synthetic d:Lcom/zui/launcher/IconCreateFactory$a;


# direct methods
.method constructor <init>(Lcom/zui/launcher/IconCreateFactory$a;ZLcom/zui/launcher/util/IntArray;[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->d:Lcom/zui/launcher/IconCreateFactory$a;

    iput-boolean p2, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->b:Lcom/zui/launcher/util/IntArray;

    iput-object p4, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->d:Lcom/zui/launcher/IconCreateFactory$a;

    iget-object v1, v0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/IconCreateFactory$a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zui/launcher/IconCreateFactory;->a(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->d:Lcom/zui/launcher/IconCreateFactory$a;

    iget-object v1, v0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->b:Lcom/zui/launcher/util/IntArray;

    iget-object v0, v0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/IconCreateFactory$a$a;->c:[I

    invoke-static {v1, v2, v0, p0}, Lcom/zui/launcher/IconCreateFactory;->b(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/WorkspaceItemInfo;[I)V

    return-void
.end method
