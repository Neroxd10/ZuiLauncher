.class Lcom/zui/launcher/ShellUtil$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/ShellUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/ShellUtil$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    return-void
.end method
