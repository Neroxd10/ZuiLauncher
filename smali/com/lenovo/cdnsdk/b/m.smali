.class public final Lcom/lenovo/cdnsdk/b/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I

.field public b:J

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget p1, Lcom/lenovo/cdnsdk/b/k;->b:I

    :cond_0
    iput p1, p0, Lcom/lenovo/cdnsdk/b/m;->a:I

    iput-object p2, p0, Lcom/lenovo/cdnsdk/b/m;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/m;->c:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
