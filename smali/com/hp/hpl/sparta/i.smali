.class Lcom/hp/hpl/sparta/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/hp/hpl/sparta/Sparta$CacheFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/hp/hpl/sparta/Sparta$Cache;
    .locals 1

    new-instance p0, Lcom/hp/hpl/sparta/Sparta$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/Sparta$a;-><init>(Lcom/hp/hpl/sparta/h;)V

    return-object p0
.end method
