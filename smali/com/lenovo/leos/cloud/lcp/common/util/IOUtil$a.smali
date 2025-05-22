.class final Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->asynchronousClose([Ljava/io/Closeable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/io/Closeable;


# direct methods
.method constructor <init>([Ljava/io/Closeable;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$a;->a:[Ljava/io/Closeable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$a;->a:[Ljava/io/Closeable;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-void
.end method
