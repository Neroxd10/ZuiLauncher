.class public final Lcom/lenovo/cdnsdk/c/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/cdnsdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/lenovo/cdnsdk/b/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/cdnsdk/b/i;

    invoke-direct {v0}, Lcom/lenovo/cdnsdk/b/i;-><init>()V

    iput-object v0, p0, Lcom/lenovo/cdnsdk/c/a$a;->a:Lcom/lenovo/cdnsdk/b/i;

    return-void
.end method
