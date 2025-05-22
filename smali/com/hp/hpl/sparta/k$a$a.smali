.class Lcom/hp/hpl/sparta/k$a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/hpl/sparta/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Boolean;

.field final b:Lcom/hp/hpl/sparta/k$a$a;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Lcom/hp/hpl/sparta/k$a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/k$a$a;->a:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/hp/hpl/sparta/k$a$a;->b:Lcom/hp/hpl/sparta/k$a$a;

    return-void
.end method
